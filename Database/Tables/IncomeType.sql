CREATE TABLE [dbo].[IncomeType] (
    [IncomeTypeId] INT        NOT NULL,
    [IncomeType]   NVARCHAR (50) NULL,
    [IsActive]     BIT           NULL,
    CONSTRAINT [PK_IncomeType] PRIMARY KEY CLUSTERED ([IncomeTypeId] ASC)
);

