CREATE TABLE [dbo].[ContactBalance]
(
	[ContactBalanceId] INT IDENTITY(1, 1) NOT NULL PRIMARY KEY,
	[ContactId] BIGINT NOT NULL,
	[Balance] MONEY NOT NULL,
	[CurrencyId] INT
)
