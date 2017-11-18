CREATE TABLE [dbo].[EmiRedeem] (
    [EmiRedeemId]  BIGINT         NOT NULL,
    [ContactId]    BIGINT         NOT NULL,
    [RedeemAmount] MONEY          NOT NULL,
	[CurrencyId] INT NOT NULL,
	[RedemptionDate] DATETIME NOT NULL,
    [Comments]      NVARCHAR (250) NULL,
    [CreatedBy]    BIGINT         NULL,
    [CreatedDate]  SMALLDATETIME  NULL,
    CONSTRAINT [PK_EMIRedeem] PRIMARY KEY CLUSTERED ([EmiRedeemId] ASC),
    CONSTRAINT [FK_EMIRedeem_Contact] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact] ([ContactId])
);

