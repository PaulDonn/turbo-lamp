CREATE TABLE [dbo].[PcFeature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PcId] [int] NOT NULL,
	[FeatureId] [int] NULL,
	[RaceFeatureId] [int] NULL,
	[ClassFeatureId] [int] NULL,
	[QuantityMaximum] INT NULL, 
    [QuantityCurrent] INT NULL, 
    CONSTRAINT [PK_PcFeature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcFeature]  WITH CHECK ADD  CONSTRAINT [FK_PcFeature_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([Id])
GO

ALTER TABLE [dbo].[PcFeature] CHECK CONSTRAINT [FK_PcFeature_Feature]
GO

ALTER TABLE [dbo].[PcFeature]  WITH CHECK ADD  CONSTRAINT [FK_PcFeature_RaceFeature] FOREIGN KEY([RaceFeatureId])
REFERENCES [dbo].[RaceFeature] ([Id])
GO

ALTER TABLE [dbo].[PcFeature] CHECK CONSTRAINT [FK_PcFeature_RaceFeature]
GO

ALTER TABLE [dbo].[PcFeature]  WITH CHECK ADD  CONSTRAINT [FK_PcFeature_ClassFeature] FOREIGN KEY([ClassFeatureId])
REFERENCES [dbo].[ClassFeature] ([Id])
GO

ALTER TABLE [dbo].[PcFeature] CHECK CONSTRAINT [FK_PcFeature_ClassFeature]
GO

ALTER TABLE [dbo].[PcFeature]  WITH CHECK ADD  CONSTRAINT [FK_PcFeature_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO

ALTER TABLE [dbo].[PcFeature] CHECK CONSTRAINT [FK_PcFeature_PlayerCharacter]
GO
