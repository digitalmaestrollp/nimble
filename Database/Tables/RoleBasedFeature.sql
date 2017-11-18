CREATE TABLE [dbo].[RoleBasedFeature] (
    [RoleBasedFeatureId] BIGINT IDENTITY (1, 1) NOT NULL,
    [FeatureId]          BIGINT NOT NULL,
    [RoleId]             BIGINT NOT NULL,
    CONSTRAINT [PK_RoleBasedFeature] PRIMARY KEY CLUSTERED ([RoleBasedFeatureId] ASC),
    CONSTRAINT [FK_RoleBasedFeature_Feature] FOREIGN KEY ([FeatureId]) REFERENCES [dbo].[Feature] ([FeatureId]),
    CONSTRAINT [FK_RoleBasedFeature_Role] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[Role] ([RoleId])
);

