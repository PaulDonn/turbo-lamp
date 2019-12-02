CREATE TABLE [dbo].[PlayerParty](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PlayerId] [INT] NOT NULL,
	[PartyId] [INT] NOT NULL,
    CONSTRAINT [PK_PlayerParty] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PlayerParty]  WITH CHECK ADD  CONSTRAINT [FK_PlayerParty_Player] FOREIGN KEY([PlayerId])
REFERENCES [dbo].[Player] ([Id])
GO
ALTER TABLE [dbo].[PlayerParty] CHECK CONSTRAINT [FK_PlayerParty_Player]
GO

ALTER TABLE [dbo].[PlayerParty]  WITH CHECK ADD  CONSTRAINT [FK_PlayerParty_Party] FOREIGN KEY([PartyId])
REFERENCES [dbo].[Party] ([Id])
GO
ALTER TABLE [dbo].[PlayerParty] CHECK CONSTRAINT [FK_PlayerParty_Party]
GO
