CREATE TABLE [dbo].[EMIRedeem] (
    [EMIRedeemId]  BIGINT         NOT NULL,
    [ContactId]    BIGINT         NOT NULL,
    [RedeemAmount] MONEY          NOT NULL,
    [Commets]      NVARCHAR (250) NULL,
    [CreatedBy]    BIGINT         NULL,
    [CreatedDate]  SMALLDATETIME  NULL,
    CONSTRAINT [PK_EMIRedeem] PRIMARY KEY CLUSTERED ([EMIRedeemId] ASC),
    CONSTRAINT [FK_EMIRedeem_Contact] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact] ([ContactId])
);

