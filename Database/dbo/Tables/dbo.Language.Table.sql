CREATE TABLE [dbo].[Language](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[TypicalSpeakers] [nvarchar](50) NOT NULL,
	[Script] [nvarchar](50) NOT NULL,
	[IsExotic] [bit] NOT NULL,
    [SourceId] INT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_Language] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Language]  WITH CHECK ADD  CONSTRAINT [FK_Language_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO

ALTER TABLE [dbo].[Language] CHECK CONSTRAINT [FK_Language_Source]
GO