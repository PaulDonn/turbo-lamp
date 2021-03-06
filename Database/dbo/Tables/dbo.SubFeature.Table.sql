CREATE TABLE [dbo].[SubFeature](
	[Id] [int] NOT NULL,
	[FeatureId] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[Code] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_SubFeature] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER TABLE [dbo].[SubFeature]  WITH CHECK ADD  CONSTRAINT [FK_SubFeature_Feature] FOREIGN KEY([FeatureId])
REFERENCES [dbo].[Feature] ([Id])
GO
ALTER TABLE [dbo].[SubFeature] CHECK CONSTRAINT [FK_SubFeature_Feature]
GO
