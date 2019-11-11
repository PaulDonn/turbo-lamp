CREATE TABLE [dbo].[RaceFeature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RaceId] [int] NULL,
	[SubRaceId] [int] NULL,
	[FeatureId] [int] NOT NULL,
	[Level] [int] NOT NULL DEFAULT 1,
	[Description] NVARCHAR(MAX) NULL,
	[Hidden] [bit] NOT NULL DEFAULT 0,
 CONSTRAINT [PK_RaceFeature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RaceFeature]  WITH CHECK ADD  CONSTRAINT [FK_RaceFeature_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([Id])
GO

ALTER TABLE [dbo].[RaceFeature] CHECK CONSTRAINT [FK_RaceFeature_Race]
GO

ALTER TABLE [dbo].[RaceFeature]  WITH CHECK ADD  CONSTRAINT [FK_RaceFeature_SubRace] FOREIGN KEY([SubRaceId])
REFERENCES [dbo].[SubRace] ([Id])
GO

ALTER TABLE [dbo].[RaceFeature] CHECK CONSTRAINT [FK_RaceFeature_SubRace]
GO

ALTER TABLE [dbo].[RaceFeature]  WITH CHECK ADD  CONSTRAINT [FK_RaceFeature_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([Id])
GO

ALTER TABLE [dbo].[RaceFeature] CHECK CONSTRAINT [FK_RaceFeature_Feature]
GO