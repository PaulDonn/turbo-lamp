CREATE TABLE [dbo].[CampaignSource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CampaignId] [int] NOT NULL,
	[SourceId] [int] NOT NULL,
 CONSTRAINT [PK_CampaignSource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[CampaignSource]  WITH CHECK ADD  CONSTRAINT [FK_CampaignSource_Campaign] FOREIGN KEY([CampaignId])
REFERENCES [dbo].[Campaign] ([Id])
GO

ALTER TABLE [dbo].[CampaignSource] CHECK CONSTRAINT [FK_CampaignSource_Campaign]
GO

ALTER TABLE [dbo].[CampaignSource]  WITH CHECK ADD  CONSTRAINT [FK_CampaignSource_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO

ALTER TABLE [dbo].[CampaignSource] CHECK CONSTRAINT [FK_CampaignSource_Source]
GO