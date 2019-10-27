CREATE TABLE [dbo].[PcEquipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[PcId] [int] NULL,
	[EquipmentId] [int] NOT NULL,
	[Quantity] [int] NULL,
	[Name] [nvarchar](150) NULL,
	[EquippedSlot] NVARCHAR(50) NULL,
 CONSTRAINT [PK_PcEquipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcEquipment]  WITH CHECK ADD  CONSTRAINT [FK_PcEquipment_Equipment] FOREIGN KEY([EquipmentId])
REFERENCES [dbo].[Equipment] ([Id])
GO

ALTER TABLE [dbo].[PcEquipment] CHECK CONSTRAINT [FK_PcEquipment_Equipment]
GO

ALTER TABLE [dbo].[PcEquipment]  WITH CHECK ADD  CONSTRAINT [FK_PcEquipment_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO

ALTER TABLE [dbo].[PcEquipment] CHECK CONSTRAINT [FK_PcEquipment_PlayerCharacter]
GO
