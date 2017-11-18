CREATE TABLE [dbo].[ContactType] (
    [ContactTypeId] BIGINT        NOT NULL,
    [ContactType]   NVARCHAR (50) NOT NULL,
    [IsActive]      BIT           NULL,
    CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED ([ContactTypeId] ASC)
);

