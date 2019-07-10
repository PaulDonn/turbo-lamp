CREATE TABLE [dbo].[RaceLanguage](
	[Id] [int] NOT NULL,
	[RaceId] [int] NOT NULL,
	[LanguageId] [int] NOT NULL,
 CONSTRAINT [PK_RaceLanguage] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[RaceLanguage]  WITH CHECK ADD  CONSTRAINT [FK_RaceLanguage_Language] FOREIGN KEY([LanguageId])
REFERENCES [dbo].[Language] ([Id])
GO

ALTER TABLE [dbo].[RaceLanguage] CHECK CONSTRAINT [FK_RaceLanguage_Language]
GO

ALTER TABLE [dbo].[RaceLanguage]  WITH CHECK ADD  CONSTRAINT [FK_RaceLanguage_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([Id])
GO

ALTER TABLE [dbo].[RaceLanguage] CHECK CONSTRAINT [FK_RaceLanguage_Race]
GO