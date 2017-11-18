CREATE TABLE [dbo].[Income] (
    [IncomeId]     BIGINT        NOT NULL,
    [IncomeTypeId] INT        NULL,
    [IncomeAmount] MONEY         NULL,
	[CurrencyId] INT NOT NULL,
	[IncomeDescription] VARCHAR(500),
	[IncomeDate] DATETIME NOT NULL,
    [CreatedBy]    BIGINT        NULL,
    [CreatedDate]  SMALLDATETIME NULL,
    CONSTRAINT [PK_IncomeManagement] PRIMARY KEY CLUSTERED ([IncomeId] ASC),
    CONSTRAINT [FK_IncomeManagement_IncomeType] FOREIGN KEY ([IncomeTypeId]) REFERENCES [dbo].[IncomeType] ([IncomeTypeId]),
    CONSTRAINT [FK_IncomeManagement_Currency] FOREIGN KEY ([CurrencyId]) REFERENCES [dbo].[Currency] ([CurrencyId])
);

