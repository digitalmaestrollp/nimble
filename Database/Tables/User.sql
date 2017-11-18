CREATE TABLE [dbo].[User] (
    [UserId]          BIGINT          IDENTITY (1, 1) NOT NULL,
    [UserAlias]       NVARCHAR (50)   NULL,
    [UserName]        NVARCHAR (255)  NOT NULL,
    [Password]        NVARCHAR (500)   NOT NULL,
    [EmailAddress]    NVARCHAR (1024) NULL,
    [IsActive]        BIT             NOT NULL,
    [RoleId]          BIGINT          NOT NULL,
    [CreatedBy]       BIGINT          NULL,
    [CreatedDateTime] SMALLDATETIME   CONSTRAINT [DF_User_CreatedDateTime] DEFAULT (getdate()) NULL,
    [UpdatedDateTime] SMALLDATETIME   CONSTRAINT [DF_User_UpdatedDateTime] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED ([UserId] ASC),
    CONSTRAINT [FK_User_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId])
);

