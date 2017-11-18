CREATE TABLE [dbo].[IncomeManagement] (
    [IncomeId]     BIGINT        NOT NULL,
    [IncomeTypeId] BIGINT        NULL,
    [IncomeAmount] MONEY         NULL,
    [CreatedBy]    BIGINT        NULL,
    [CreatedDate]  SMALLDATETIME NULL,
    CONSTRAINT [PK_IncomeManagement] PRIMARY KEY CLUSTERED ([IncomeId] ASC),
    CONSTRAINT [FK_IncomeManagement_IncomeType] FOREIGN KEY ([IncomeTypeId]) REFERENCES [dbo].[IncomeType] ([IncomeTypeId])
);

