CREATE TABLE [dbo].[EMIPayment] (
    [EMIPaymentId] BIGINT         NOT NULL,
    [ContactId]    BIGINT         NOT NULL,
    [Amount]       MONEY          NOT NULL,
    [Comments]     NVARCHAR (250) NULL,
    [CreatedBy]    BIGINT         NOT NULL,
    [CreatedDate]  SMALLDATETIME  NOT NULL,
    CONSTRAINT [PK_EMIPayment] PRIMARY KEY CLUSTERED ([EMIPaymentId] ASC),
    CONSTRAINT [FK_EMIPayment_Contact] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[Contact] ([ContactId])
);

