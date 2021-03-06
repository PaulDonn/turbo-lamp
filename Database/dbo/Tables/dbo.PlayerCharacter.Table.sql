CREATE TABLE [dbo].[PlayerCharacter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterName] [nvarchar](50) NULL,
	[ClassId] [int] NULL,
	[ArchetypeId] [int] NULL,
	[Level] [int] NOT NULL DEFAULT(1),
	[ProficiencyBonus] [int] NOT NULL DEFAULT(2),
	[BackgroundId] [int] NULL,
	[PlayerId] [int] NOT NULL,
	[RaceId] [int] NULL,
	[SubRaceId] [int] NULL,
	[AlignmentId] [int] NULL,
	[ExperiencePoints] [int] NOT NULL DEFAULT(0),
	[CampaignId] [int] NULL,
	[HitPointMaximum] [int] NOT NULL DEFAULT(0),
	[HitPointCurrent] [int] NOT NULL DEFAULT(0),
	[HitDiceMaximum] [int] NOT NULL DEFAULT(1),
	[HitDiceCurrent] [int] NOT NULL DEFAULT(1),
	[Age] NVARCHAR(50) NULL, 
    [Height] NVARCHAR(50) NULL, 
    [Weight] NVARCHAR(50) NULL, 
    [Eyes] NVARCHAR(50) NULL, 
    [Skin] NVARCHAR(50) NULL, 
    [Hair] NVARCHAR(50) NULL, 
	[Appearance] NVARCHAR(MAX) NULL,
    [Backstory] NVARCHAR(MAX) NULL, 
    [AlliesAndOrganisations] NVARCHAR(MAX) NULL, 
	[Copper] int NOT NULL DEFAULT(0),
	[Silver] int NOT NULL DEFAULT(0),
	[Electrum] int NOT NULL DEFAULT(0),
	[Gold] int NOT NULL DEFAULT(0),
	[Platinum] int NOT NULL DEFAULT(0),
    CONSTRAINT [PK_PlayerCharacter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Alignment] FOREIGN KEY([AlignmentId])
REFERENCES [dbo].[Alignment] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Alignment]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Archetype] FOREIGN KEY([ArchetypeId])
REFERENCES [dbo].[Archetype] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Archetype]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Background] FOREIGN KEY([BackgroundId])
REFERENCES [dbo].[Background] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Background]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Class]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Campaign] FOREIGN KEY([CampaignId])
REFERENCES [dbo].[Campaign] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Campaign]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Player] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Player]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Race]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_SubRace] FOREIGN KEY([SubRaceId])
REFERENCES [dbo].[SubRace] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_SubRace]
GO