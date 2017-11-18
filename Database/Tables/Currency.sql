CREATE TABLE [dbo].[Currency] (
    [CurrencyId]   INT         NOT NULL,
    [CurrencyName] VARCHAR(50) NOT NULL,
    [CurrencyCode] NVARCHAR (50)  NOT NULL,
	[UsdConversionFactor] FLOAT,
    [IsActive]     BIT            NOT NULL DEFAULT 1,
    CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED ([CurrencyId] ASC)
);

