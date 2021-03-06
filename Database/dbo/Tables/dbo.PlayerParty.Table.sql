CREATE TABLE [dbo].[PlayerCampaign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlayerId] [INT] NOT NULL,
	[CampaignId] [INT] NOT NULL,
    CONSTRAINT [PK_PlayerCampaign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PlayerCampaign]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCampaign_Player] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([Id])
GO
ALTER TABLE [dbo].[PlayerCampaign] CHECK CONSTRAINT [FK_PlayerCampaign_Player]
GO

ALTER TABLE [dbo].[PlayerCampaign]  WITH CHECK ADD  CONSTRAINT [FK_PlayerCampaign_Campaign] FOREIGN KEY([CampaignId])
REFERENCES [dbo].[Campaign] ([Id])
GO
ALTER TABLE [dbo].[PlayerCampaign] CHECK CONSTRAINT [FK_PlayerCampaign_Campaign]
GO
