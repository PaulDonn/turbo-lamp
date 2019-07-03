CREATE TABLE [dbo].[Skill](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[AbilityId] [int] NOT NULL,
 CONSTRAINT [PK_Skill] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Skill]  WITH CHECK ADD  CONSTRAINT [FK_Skill_Ability] FOREIGN KEY([AbilityId])
REFERENCES [dbo].[Ability] ([Id])
GO
ALTER TABLE [dbo].[Skill] CHECK CONSTRAINT [FK_Skill_Ability]
GO
