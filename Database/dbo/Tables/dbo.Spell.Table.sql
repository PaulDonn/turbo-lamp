CREATE TABLE [dbo].[Spell](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[SpellSchoolId] [int] NOT NULL,
	[CastingTime] [nvarchar](150) NOT NULL,
	[Range] [nvarchar](150) NOT NULL,
	[Duration] [nvarchar](150) NOT NULL,
	[RequiresConcentration] [bit] NOT NULL,
	[SpellLevel] [int] NOT NULL,
	[RequiresVerbal] [bit] NOT NULL,
	[RequiresSomatic] [bit] NOT NULL,
	[RequiresMaterial] [bit] NOT NULL,
	[MaterialDescription] [nvarchar](150) NULL,
	[IsRitual] [bit] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[HigherLevelDescription] [nvarchar](max) NULL,
	[Source] NVARCHAR(50) NOT NULL DEFAULT 'PHB', 
 CONSTRAINT [PK_Spell] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Spell]  WITH CHECK ADD  CONSTRAINT [FK_Spell_SpellSchool] FOREIGN KEY([SpellSchoolId])
REFERENCES [dbo].[SpellSchool] ([Id])
GO

ALTER TABLE [dbo].[Spell] CHECK CONSTRAINT [FK_Spell_SpellSchool]
GO