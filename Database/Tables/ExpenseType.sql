CREATE TABLE [dbo].[ExpenseType] (
    [ExpenseTypeId] BIGINT        NOT NULL,
    [ExpenseType]   NVARCHAR (50) NOT NULL,
    [IsActive]      BIT           NULL,
    CONSTRAINT [PK_ExpenseType] PRIMARY KEY CLUSTERED ([ExpenseTypeId] ASC)
);

