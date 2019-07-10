CREATE TABLE [dbo].[PcLanguage](
	[Id] [int] NOT NULL,
	[PcId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
 CONSTRAINT [PK_PcLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcLanguage]  WITH CHECK ADD  CONSTRAINT [FK_PcLanguage_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[PcLanguage] CHECK CONSTRAINT [FK_PcLanguage_Language]
GO

ALTER TABLE [dbo].[PcLanguage]  WITH CHECK ADD  CONSTRAINT [FK_PcLanguage_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO