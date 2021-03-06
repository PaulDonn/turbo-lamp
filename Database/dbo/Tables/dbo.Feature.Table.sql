CREATE TABLE [dbo].[Feature](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](50) NOT NULL UNIQUE,
	[Quantity] int NULL,
	[SourceId] INT NOT NULL DEFAULT 1, 
 CONSTRAINT [PK_Feature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Feature]  WITH CHECK ADD  CONSTRAINT [FK_Feature_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO

ALTER TABLE [dbo].[Feature] CHECK CONSTRAINT [FK_Feature_Source]
GO
