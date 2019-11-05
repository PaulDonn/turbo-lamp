CREATE TABLE [dbo].[PcTreasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PcId] [int] NOT NULL,
	[TreasureId] [int] NOT NULL,
	[Quantity] [int] NULL ,
	[Name] [nvarchar](150) NULL,
 CONSTRAINT [PK_PcTreasure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcTreasure]  WITH CHECK ADD  CONSTRAINT [FK_PcTreasure_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO

ALTER TABLE [dbo].[PcTreasure] CHECK CONSTRAINT [FK_PcTreasure_PlayerCharacter]
GO

ALTER TABLE [dbo].[PcTreasure]  WITH CHECK ADD  CONSTRAINT [FK_PcTreasure_Treasure] FOREIGN KEY([TreasureId])
REFERENCES [dbo].[Treasure] ([Id])
GO

ALTER TABLE [dbo].[PcTreasure] CHECK CONSTRAINT [FK_PcTreasure_Treasure]
GO