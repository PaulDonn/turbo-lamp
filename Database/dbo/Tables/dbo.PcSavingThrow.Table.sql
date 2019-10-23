CREATE TABLE [dbo].[PcSavingThrow](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PcId] [int] NOT NULL,
	[AbilityId] [int] NOT NULL,
 CONSTRAINT [PK_PcSavingThrow] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcSavingThrow]  WITH CHECK ADD  CONSTRAINT [FK_PcSavingThrow_Ability] FOREIGN KEY([AbilityId])
REFERENCES [dbo].[Ability] ([Id])
GO

ALTER TABLE [dbo].[PcSavingThrow] CHECK CONSTRAINT [FK_PcSavingThrow_Ability]
GO

ALTER TABLE [dbo].[PcSavingThrow]  WITH CHECK ADD  CONSTRAINT [FK_PcSavingThrow_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO

ALTER TABLE [dbo].[PcSavingThrow] CHECK CONSTRAINT [FK_PcSavingThrow_PlayerCharacter]
GO
