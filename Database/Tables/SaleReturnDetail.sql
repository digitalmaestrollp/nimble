CREATE TABLE [dbo].[SaleReturnDetail] (
    [SaleReturnDetailId] BIGINT         IDENTITY (1, 1) NOT NULL,
    [SaleReturnId]       BIGINT         NULL,
    [ProductId]          BIGINT         NOT NULL,
    [ReturnQuantity]     INT            NOT NULL,
    [AddtionalInfo]      NVARCHAR (255) NULL,
    CONSTRAINT [PK_ProductReturnDetail] PRIMARY KEY CLUSTERED ([SaleReturnDetailId] ASC),
    CONSTRAINT [FK_SaleReturnDetail_Product] FOREIGN KEY ([ProductId]) REFERENCES [dbo].[Product] ([ProductId]),
    CONSTRAINT [FK_SaleReturnDetail_SaleReturn] FOREIGN KEY ([SaleReturnId]) REFERENCES [dbo].[SaleReturn] ([SaleReturnId])
);

