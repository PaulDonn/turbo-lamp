CREATE TABLE [dbo].[Background](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AdditionalLanguages] [int] NULL,
	[ImagePath] NVARCHAR(150) NULL, 
	[SourceId] INT NOT NULL DEFAULT 1, 
 CONSTRAINT [PK_Background] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Background]  WITH CHECK ADD  CONSTRAINT [FK_Background_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO

ALTER TABLE [dbo].[Background] CHECK CONSTRAINT [FK_Background_Source]
GO