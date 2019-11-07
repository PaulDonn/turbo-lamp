CREATE TABLE [dbo].[SpellListSpell](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SpellListId] [int] NOT NULL,
	[SpellId] [int] NOT NULL,
 CONSTRAINT [PK_SpellListSpell] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[SpellListSpell]  WITH CHECK ADD  CONSTRAINT [FK_SpellListSpell_Spell] FOREIGN KEY([SpellId])
REFERENCES [dbo].[Spell] ([Id])
GO

ALTER TABLE [dbo].[SpellListSpell] CHECK CONSTRAINT [FK_SpellListSpell_Spell]
GO

ALTER TABLE [dbo].[SpellListSpell]  WITH CHECK ADD  CONSTRAINT [FK_SpellListSpell_SpellList] FOREIGN KEY([SpellListId])
REFERENCES [dbo].[SpellList] ([Id])
GO

ALTER TABLE [dbo].[SpellListSpell] CHECK CONSTRAINT [FK_SpellListSpell_SpellList]
GO