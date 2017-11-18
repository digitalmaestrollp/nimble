CREATE TABLE [dbo].[ExpenseManagement] (
    [ExpenseId]     BIGINT        NOT NULL,
    [ExpenseTypeId] BIGINT        NOT NULL,
    [ExpenseAmount] MONEY         NOT NULL,
    [CreatedBy]     BIGINT        NULL,
    [CreatedDate]   SMALLDATETIME NULL,
    CONSTRAINT [PK_ExpenseManagement] PRIMARY KEY CLUSTERED ([ExpenseId] ASC),
    CONSTRAINT [FK_ExpenseManagement_ExpenseType] FOREIGN KEY ([ExpenseTypeId]) REFERENCES [dbo].[ExpenseType] ([ExpenseTypeId])
);

