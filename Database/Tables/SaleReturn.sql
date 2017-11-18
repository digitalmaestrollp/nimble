CREATE TABLE [dbo].[SaleReturn] (
    [SaleReturnId]   BIGINT         IDENTITY (1, 1) NOT NULL,
    [SaleId]         BIGINT         NULL,
    [LocationId]     BIGINT         NOT NULL,
    [ContactId]      BIGINT         NULL,
    [ReturnComments] NVARCHAR (255) NOT NULL,
    [CreatedBy]      BIGINT         NULL,
    [CreatedDate]    SMALLDATETIME  CONSTRAINT [DF_ProductReturn_CreatedDateTime] DEFAULT (getdate()) NULL,
    CONSTRAINT [PK_ProductReturn] PRIMARY KEY CLUSTERED ([SaleReturnId] ASC),
    CONSTRAINT [FK_ProductReturn_ProductDispatch] FOREIGN KEY ([SaleId]) REFERENCES [dbo].[SaleHeader] ([SaleId]),
    CONSTRAINT [FK_ProductReturn_User] FOREIGN KEY ([ContactId]) REFERENCES [dbo].[User] ([UserId]),
    CONSTRAINT [FK_ProductReturn_User1] FOREIGN KEY ([CreatedBy]) REFERENCES [dbo].[User] ([UserId])
);

