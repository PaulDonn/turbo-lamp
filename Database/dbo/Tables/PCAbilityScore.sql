CREATE TABLE [dbo].[PcAbilityScore](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AbilityId] [int] NOT NULL,
	[Score] [int] NOT NULL,
	[PcId] [int] NOT NULL,
 CONSTRAINT [PK_PcAbilityScore] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcAbilityScore]  WITH CHECK ADD  CONSTRAINT [FK_PcAbilityScore_Ability] FOREIGN KEY([AbilityId])
REFERENCES [dbo].[Ability] ([Id])
GO

ALTER TABLE [dbo].[PcAbilityScore] CHECK CONSTRAINT [FK_PcAbilityScore_Ability]
GO

ALTER TABLE [dbo].[PcAbilityScore]  WITH CHECK ADD  CONSTRAINT [FK_PcAbilityScore_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO

ALTER TABLE [dbo].[PcAbilityScore] CHECK CONSTRAINT [FK_PcAbilityScore_PlayerCharacter]
GO