CREATE TABLE [dbo].[Location] (
    [LocationId]      BIGINT         IDENTITY (1, 1) NOT NULL,
    [LocationName]    NVARCHAR (50)  NOT NULL,
    [LocationAddress] NVARCHAR (500) NULL,
    [IsActive]        BIT            NOT NULL,
    [CompayId]        BIGINT         NOT NULL,
    [CreatedBy]       BIGINT         NULL,
    [CreatedDateTime] SMALLDATETIME  CONSTRAINT [DF_Location_CreatedDateTime] DEFAULT (getdate()) NULL,
    [UpdatedDateTime] SMALLDATETIME  CONSTRAINT [DF_Location_UpdatedDateTime] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Location] PRIMARY KEY CLUSTERED ([LocationId] ASC),
    CONSTRAINT [FK_Location_Compay] FOREIGN KEY ([CompayId]) REFERENCES [dbo].[Company] ([CompayId])
);

