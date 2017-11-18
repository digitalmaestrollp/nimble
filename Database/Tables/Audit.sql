CREATE TABLE [dbo].[Audit] (
    [AuditId]         BIGINT         NOT NULL,
    [AuditCategory]   NVARCHAR (50)  NULL,
    [AuditEventId]    BIGINT         NULL,
    [AuditType]       NVARCHAR (50)  NULL,
    [ProductId]       BIGINT         NULL,
    [Qty]             INT            NULL,
    [Price]           MONEY          NULL,
    [TotalAmount]     MONEY          NULL,
    [TaxAmount]       MONEY          NULL,
    [Remarks]         NVARCHAR (100) NULL,
    [CreatedBy]       BIGINT         NULL,
    [CreatedDatetime] SMALLDATETIME  NULL,
    CONSTRAINT [PK_AuditCategory] PRIMARY KEY CLUSTERED ([AuditId] ASC)
);

