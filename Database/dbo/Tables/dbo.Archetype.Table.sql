CREATE TABLE [dbo].[Archetype](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[ClassId] [int] NOT NULL,
	[StartingLevel] [int] NOT NULL,
 CONSTRAINT [PK_Archetype] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[Archetype]  WITH CHECK ADD  CONSTRAINT [FK_Archetype_Class] FOREIGN KEY([ClassId])
REFERENCES [dbo].[Class] ([Id])
GO
ALTER TABLE [dbo].[Archetype] CHECK CONSTRAINT [FK_Archetype_Class]
GO
