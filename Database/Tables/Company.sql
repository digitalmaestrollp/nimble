CREATE TABLE [dbo].[Company] (
    [CompayId]   BIGINT         NOT NULL,
    [CompayName] NVARCHAR (100) NOT NULL,
    [IsActive]   BIT            NOT NULL,
    CONSTRAINT [PK_Compay] PRIMARY KEY CLUSTERED ([CompayId] ASC)
);

