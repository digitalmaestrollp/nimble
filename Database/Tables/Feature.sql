CREATE TABLE [dbo].[Feature] (
    [FeatureId]       BIGINT          IDENTITY (1, 1) NOT NULL,
    [FeatureName]     NVARCHAR (50)   NOT NULL,
    [FeatureValue]    NVARCHAR (100)  NULL,
    [PageURL]         NVARCHAR (1024) NULL,
    [ParentFeatureId] BIGINT          NULL,
    [SeqNo]           INT             NULL,
    [FeatureCSS]      NVARCHAR (100)  NULL,
    CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED ([FeatureId] ASC)
);

