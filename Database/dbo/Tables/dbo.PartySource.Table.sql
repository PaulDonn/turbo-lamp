CREATE TABLE [dbo].[PartySource](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PartyId] [int] NOT NULL,
	[SourceId] [int] NOT NULL,
 CONSTRAINT [PK_PartySource] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PartySource]  WITH CHECK ADD  CONSTRAINT [FK_PartySource_Party] FOREIGN KEY([PartyId])
REFERENCES [dbo].[Party] ([Id])
GO

ALTER TABLE [dbo].[PartySource] CHECK CONSTRAINT [FK_PartySource_Party]
GO

ALTER TABLE [dbo].[PartySource]  WITH CHECK ADD  CONSTRAINT [FK_PartySource_Source] FOREIGN KEY([SourceId])
REFERENCES [dbo].[Source] ([Id])
GO

ALTER TABLE [dbo].[PartySource] CHECK CONSTRAINT [FK_PartySource_Source]
GO