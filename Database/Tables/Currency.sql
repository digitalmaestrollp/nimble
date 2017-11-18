CREATE TABLE [dbo].[Currency] (
    [CurrencyId]   BIGINT         NOT NULL,
    [CurrencyName] VARBINARY (50) NULL,
    [CurrencyCode] NVARCHAR (50)  NULL,
    [IsActive]     BIT            NULL,
    CONSTRAINT [PK_Currency] PRIMARY KEY CLUSTERED ([CurrencyId] ASC)
);

