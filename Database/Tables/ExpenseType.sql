CREATE TABLE [dbo].[ExpenseType] (
    [ExpenseTypeId] INT        NOT NULL,
    [ExpenseType]   NVARCHAR (50) NOT NULL,
    [IsActive]      BIT           NOT NULL DEFAULT 1,
    CONSTRAINT [PK_ExpenseType] PRIMARY KEY CLUSTERED ([ExpenseTypeId] ASC)
);

