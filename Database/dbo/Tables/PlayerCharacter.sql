CREATE TABLE [dbo].[PlayerCharacter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CharacterName] [nvarchar](50) NOT NULL,
	[ClassId] [int] NOT NULL,
	[SubClassId] [int] NULL,
	[LevelId] [int] NOT NULL,
	[BackgroundId] [int] NULL,
	[PlayerId] [int] NOT NULL,
	[RaceId] [int] NOT NULL,
	[AlignmentId] [int] NOT NULL,
	[ExperiencePoints] [int] NOT NULL,
	[PartyId] [int] NULL,
 CONSTRAINT [PK_PlayerCharacter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PlayerCharacter]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCharacter_Party] FOREIGN KEY([PartyId])
REFERENCES [dbo].[Party] ([Id])
GO

ALTER TABLE [dbo].[PlayerCharacter] CHECK CONSTRAINT [FK_PlayerCharacter_Party]
GO