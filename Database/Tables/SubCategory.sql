CREATE TABLE [dbo].[SubCategory] (
    [SubCategoryId]     BIGINT          NOT NULL,
    [SubCategoryName]   NVARCHAR (50)   NOT NULL,
	[CategoryId] BIGINT,
	[ProfitPercentage] FLOAT,
    [IsActive]          BIT             NOT NULL,
    [ProductAttributes] NVARCHAR (1000) NULL,
    CONSTRAINT [PK_SubCategory] PRIMARY KEY CLUSTERED ([SubCategoryId] ASC)
);

