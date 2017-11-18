CREATE TABLE [dbo].[Contact] (
    [ContactId]       BIGINT         NOT NULL,
    [ContactName]     NVARCHAR (500) NOT NULL,
    [ContactAddress]  NVARCHAR (500) NULL,
    [Email]           NVARCHAR (255) NULL,
    [Phone]           NVARCHAR (50)  NULL,
    [DOB]             DATE           NULL,
    [ContactTypeId]   BIGINT         NOT NULL,
    [IsLocalCustomer] BIT            NULL,
    [IsActive]        BIT            NULL,
    [CreatedBy]       BIGINT         NULL,
    [CreatedDate]     SMALLDATETIME  NULL,
    CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED ([ContactId] ASC)
);

