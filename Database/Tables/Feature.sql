CREATE TABLE [dbo].[Feature] (
    [FeatureId]       BIGINT          IDENTITY (1, 1) NOT NULL,
    [FeatureName]     NVARCHAR (50)   NOT NULL,
    [FeatureValue]    NVARCHAR (100)  NULL,
    [PageUrl]         NVARCHAR (1024) NULL,
    [ParentFeatureId] BIGINT          NULL,
    [SeqNo]           INT             NULL,
    [FeatureCss]      NVARCHAR (100)  NULL,
    [IsActive] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED ([FeatureId] ASC)
);

