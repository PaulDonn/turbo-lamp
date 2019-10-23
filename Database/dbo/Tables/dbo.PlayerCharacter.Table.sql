CREATE TABLE [dbo].[PlayerCharacter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterName] [nvarchar](50) NOT NULL,
	[ClassId] [int] NOT NULL,
	[ArchetypeId] [int] NULL,
	[LevelId] [int] NOT NULL,
	[BackgroundId] [int] NULL,
	[PlayerId] [int] NOT NULL,
	[RaceId] [int] NOT NULL,
	[SubRaceId] [int] NULL,
	[AlignmentId] [int] NOT NULL,
	[ExperiencePoints] [int] NOT NULL DEFAULT(0),
	[PartyId] [int] NULL,
	[HitPointMaximum] [int] NOT NULL DEFAULT(0),
	[HitPointCurrent] [int] NOT NULL DEFAULT(0),
	[Level1SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level1SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level2SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level2SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level3SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level3SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level4SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level4SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level5SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level5SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level6SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level6SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level7SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level7SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level8SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level8SlotsCurrent] [int] NOT NULL DEFAULT(0),
	[Level9SlotsMaximum] [int] NOT NULL DEFAULT(0),
	[Level9SlotsCurrent] [int] NOT NULL DEFAULT(0),
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

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Party] FOREIGN KEY([PartyId])
REFERENCES [dbo].[Party] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Party]
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