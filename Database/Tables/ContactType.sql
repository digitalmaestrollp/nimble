CREATE TABLE [dbo].[ContactType] (
    [ContactTypeId] INT        NOT NULL,
    [ContactType]   NVARCHAR (50) NOT NULL,
    [IsActive]      BIT           NOT NULL DEFAULT 1,
    CONSTRAINT [PK_ContactType] PRIMARY KEY CLUSTERED ([ContactTypeId] ASC)
);

