CREATE TABLE [dbo].[Manufacturer] (
    [ManufacturerId]   BIGINT         NOT NULL,
    [ManufacturerName] NVARCHAR (100) NOT NULL,
    [IsActive]         BIT            NULL,
    CONSTRAINT [PK_Manufacturer] PRIMARY KEY CLUSTERED ([ManufacturerId] ASC)
);

