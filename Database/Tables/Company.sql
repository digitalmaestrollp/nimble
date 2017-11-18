CREATE TABLE [dbo].[Company] (
    [CompayId]   BIGINT         NOT NULL,
    [CompayName] NVARCHAR (100) NOT NULL,
	[DefaultCurrencyId] INT,
	[LogoFile] VARCHAR(500) NULL,
	[CompanyNameFont] VARCHAR(100),
	[CompanyNameFontSize] VARCHAR(10),
    [IsActive] BIT NOT NULL,
    [CreatedBy] BIGINT NOT NULL, 
    [CreatedDateTime] SMALLDATETIME NOT NULL DEFAULT GETDATE(), 
    CONSTRAINT [PK_Compay] PRIMARY KEY CLUSTERED ([CompayId] ASC)
);

