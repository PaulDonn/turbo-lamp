CREATE TABLE [dbo].[PcSkill](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PcId] [int] NOT NULL,
	[SkillId] [int] NOT NULL,
    CONSTRAINT [PK_PcSkill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PcSkill]  WITH CHECK ADD  CONSTRAINT [FK_PcSkill_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO
ALTER TABLE [dbo].[PcSkill] CHECK CONSTRAINT [FK_PcSkill_PlayerCharacter]
GO
ALTER TABLE [dbo].[PcSkill]  WITH CHECK ADD  CONSTRAINT [FK_PcSkill_Skill] FOREIGN KEY([SkillId])
REFERENCES [dbo].[Skill] ([Id])
GO
ALTER TABLE [dbo].[PcSkill] CHECK CONSTRAINT [FK_PcSkill_Skill]
GO
