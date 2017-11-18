CREATE TABLE [dbo].[Role] (
    [RoleId]          BIGINT        IDENTITY (1, 1) NOT NULL,
    [RoleName]        NVARCHAR (50) NOT NULL,
    [IsActive]        BIT           NOT NULL,
    [CreatedDateTime] SMALLDATETIME CONSTRAINT [DF_Role_CreatedDateTime] DEFAULT (getdate()) NULL,
    [UpdatedDateTime] SMALLDATETIME CONSTRAINT [DF_Role_UpdatedDateTime] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED ([RoleId] ASC)
);

