CREATE TABLE [dbo].[Expense] (
    [ExpenseId]     BIGINT        NOT NULL,
    [ExpenseTypeId] INT        NOT NULL,
    [ExpenseAmount] MONEY         NOT NULL,
	[CurrencyId] INT NOT NULL,
	[ExpenseDescription] NVARCHAR(500) NULL,
	[ExpenseDate] DATETIME NOT NULL,
    [CreatedBy]     BIGINT        NULL,
    [CreatedDate]   SMALLDATETIME NULL,
    CONSTRAINT [PK_ExpenseManagement] PRIMARY KEY CLUSTERED ([ExpenseId] ASC),
    CONSTRAINT [FK_ExpenseManagement_ExpenseType] FOREIGN KEY ([ExpenseTypeId]) REFERENCES [dbo].[ExpenseType] ([ExpenseTypeId]),
    CONSTRAINT [FK_ExpenseManagement_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([CurrencyId])
);

