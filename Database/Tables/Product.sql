CREATE TABLE [dbo].[Product] (
    [ProductId]          BIGINT          IDENTITY (1, 1) NOT NULL,
    [ProductName]        NVARCHAR (50)   NOT NULL,
    [ProductDescription] NVARCHAR (1000) NULL,
    [Barcode]                NVARCHAR (100)  NULL,
    [Price]              MONEY           NULL,
    [SubCategoryId]      BIGINT          NULL,
    [ManufacturerId]     BIGINT          NULL,
    [ProductAttributes]  VARCHAR(MAX)    NULL,
    [AvailableQty]       BIGINT          CONSTRAINT [DF_Product_AvailableQuantity] DEFAULT ((0)) NOT NULL,
    [SoldQty]            BIGINT          NULL,
    [IsActive]           BIT             NOT NULL,
    [CreatedBy]          BIGINT          NULL,
    [CreatedDateTime]    SMALLDATETIME   CONSTRAINT [DF_Product_CreatedDateTime] DEFAULT (getdate()) NULL,
    [UpdatedDateTime]    SMALLDATETIME   CONSTRAINT [DF_Product_UpdatedDateTime] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Product] PRIMARY KEY CLUSTERED ([ProductId] ASC),
    CONSTRAINT [FK_Product_Manufacturer] FOREIGN KEY ([ManufacturerId]) REFERENCES [dbo].[Manufacturer] ([ManufacturerId]),
    CONSTRAINT [FK_Product_SubCategory] FOREIGN KEY ([SubCategoryId]) REFERENCES [dbo].[SubCategory] ([SubCategoryId])
);

