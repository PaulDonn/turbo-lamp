CREATE TABLE [dbo].[SubRace](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[RaceId] [int] NOT NULL,
	[AdditionalLanguages] INT NULL, 
	[ImagePath] NVARCHAR(150) NULL, 
	[SourceId] INT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_SubRace] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubRace]  WITH CHECK ADD  CONSTRAINT [FK_SubRace_Race] FOREIGN KEY([RaceId])
REFERENCES [dbo].[Race] ([Id])
GO
ALTER TABLE [dbo].[SubRace] CHECK CONSTRAINT [FK_SubRace_Race]
GO

ALTER TABLE [dbo].[SubRace]  WITH CHECK ADD  CONSTRAINT [FK_SubRace_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO

ALTER TABLE [dbo].[SubRace] CHECK CONSTRAINT [FK_SubRace_Source]
GO
