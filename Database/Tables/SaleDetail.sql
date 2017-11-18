CREATE TABLE [dbo].[SaleDetail] (
    [SaleDetailId]         BIGINT         IDENTITY (1, 1) NOT NULL,
    [SaleId]               BIGINT         NOT NULL,
    [ProductId]            BIGINT         NOT NULL,
    [BarCode]              NVARCHAR (50)  NOT NULL,
    [AdditionalInfo]       NVARCHAR (255) NOT NULL,
    [SaleQty]              INT            NOT NULL,
    [Price]                MONEY          NOT NULL,
    [BillingAmount]        MONEY          NULL,
    [BillingTaxPercentage] FLOAT (53)     NULL,
    [BillingTaxAmount]     MONEY          NULL,
    [ActualAmount]         MONEY          NULL,
    [ActualTaxPercentage]  FLOAT (53)     NULL,
    [ActualTaxAmount]      MONEY          NULL,
    [SOAdjustRemarks]      NVARCHAR (250) NULL,
    [CreatedBy]            BIGINT         NULL,
    [CreatedDate]          SMALLDATETIME  NULL,
    [AdjustedBy]           BIGINT         NULL,
    [AdjustedDate]         SMALLDATETIME  NULL,
    CONSTRAINT [PK_PrdouctDispatchDetail] PRIMARY KEY CLUSTERED ([SaleDetailId] ASC),
    CONSTRAINT [FK_SaleDetail_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]),
    CONSTRAINT [FK_SaleDetail_SaleHeader] FOREIGN KEY ([SaleId]) REFERENCES [dbo].[SaleHeader] ([SaleId])
);

