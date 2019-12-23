CREATE TABLE [dbo].[PcSpellLevel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PcId] [int] NOT NULL,
	[SpellLevel] [int] NOT NULL,
	[SlotsMaximum] [int] NOT NULL DEFAULT 0,
	[SlotsCurrent] [int] NOT NULL DEFAULT 0,
    CONSTRAINT [PK_PcSpellLevel] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcSpellLevel]  WITH CHECK ADD CONSTRAINT [FK_PcSpellLevel_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO

ALTER TABLE [dbo].[PcSpellLevel] CHECK CONSTRAINT [FK_PcSpellLevel_PlayerCharacter]
GO

ALTER TABLE [dbo].[PcSpellLevel] WITH CHECK ADD CONSTRAINT [UQ_PcSpellLevel_PcId_SpellLevel] UNIQUE ([PcId],[SpellLevel])
GO

ALTER TABLE [dbo].[PcSpellLevel] CHECK CONSTRAINT [UQ_PcSpellLevel_PcId_SpellLevel]
GO

ALTER TABLE [dbo].[PcSpellLevel] ADD CONSTRAINT [RG_PcSpellLevel_SpellLevel]
CHECK ([SpellLevel] BETWEEN 1 AND 9)
GO