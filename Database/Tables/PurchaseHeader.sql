CREATE TABLE [dbo].[PurchaseHeader] (
    [PurchaseId]        BIGINT         IDENTITY (1, 1) NOT NULL,
    [LocationId]        BIGINT         NOT NULL,
    [PoNumber]          NVARCHAR (255) NOT NULL,
	[PoDate] DATETIME NOT NULL,
    [VendorName]        NVARCHAR (255) NULL,
    [AdditionalDetails] NVARCHAR (MAX) NULL,
    [TotalAmount]       MONEY          NULL,
	[TotalCurrencyId] INT,
    [ShippingCost]      MONEY          NULL,
    [TaxAmount]         MONEY          NULL,
	[TaxCurrencyId] INT,
    [Status]            NVARCHAR (50)  NULL,
    [CreatedBy]         BIGINT         NULL,
    [CreatedDateTime]   SMALLDATETIME  CONSTRAINT [DF_Purchase_CreatedDateTime] DEFAULT (getdate()) NULL,
    [UpdatedDateTime]   SMALLDATETIME  CONSTRAINT [DF_Purchase_UpdatedDateTime] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_Purchase] PRIMARY KEY CLUSTERED ([PurchaseId] ASC)
);

