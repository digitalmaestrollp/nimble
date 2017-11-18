CREATE TABLE [dbo].[Category] (
    [CategoryId]   BIGINT        NOT NULL,
    [CategoryName] NVARCHAR (50) NOT NULL,
	[ProfitPercentage] FLOAT,
    [IsActive]     BIT           NOT NULL,
    CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED ([CategoryId] ASC)
);

