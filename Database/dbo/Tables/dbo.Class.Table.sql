CREATE TABLE [dbo].[Class](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[HitDie] [int] NOT NULL,
	[ArchetypeTypeName] [nvarchar](50) NOT NULL,
	[ArchetypeTypeDescription] [nvarchar](max) NOT NULL,
	[ArchetypeStartingLevel] [int] NOT NULL,
	[NumberOfStartingSkills] [int] NOT NULL,
	[SpellcastingAbilityId] [int] NOT NULL,
	[ImagePath] NVARCHAR(150) NULL, 
	[SourceId] INT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Ability] FOREIGN KEY([SpellcastingAbilityId])
REFERENCES [dbo].[Ability] ([Id])
GO

ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Ability]
GO

ALTER TABLE [dbo].[Class]  WITH CHECK ADD  CONSTRAINT [FK_Class_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO

ALTER TABLE [dbo].[Class] CHECK CONSTRAINT [FK_Class_Source]
GO