CREATE TABLE [dbo].[ClassFeature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ClassId] [int] NULL,
	[ArchetypeId] [int] NULL,
	[FeatureId] [int] NOT NULL,
	[Level] [int] NOT NULL DEFAULT 1,
	[Description] NVARCHAR(MAX) NULL,
	[Hidden] [bit] NOT NULL DEFAULT 0,
 CONSTRAINT [PK_ClassFeature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[ClassFeature]  WITH CHECK ADD  CONSTRAINT [FK_ClassFeature_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO

ALTER TABLE [dbo].[ClassFeature] CHECK CONSTRAINT [FK_ClassFeature_Class]
GO

ALTER TABLE [dbo].[ClassFeature]  WITH CHECK ADD  CONSTRAINT [FK_ClassFeature_Archetype] FOREIGN KEY([ArchetypeId])
REFERENCES [dbo].[Archetype] ([Id])
GO

ALTER TABLE [dbo].[ClassFeature] CHECK CONSTRAINT [FK_ClassFeature_Archetype]
GO

ALTER TABLE [dbo].[ClassFeature]  WITH CHECK ADD  CONSTRAINT [FK_ClassFeature_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([Id])
GO

ALTER TABLE [dbo].[ClassFeature] CHECK CONSTRAINT [FK_ClassFeature_Feature]
GO
