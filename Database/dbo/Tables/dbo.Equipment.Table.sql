CREATE TABLE [dbo].[Equipment](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[EquipmentTypeId] [int] NOT NULL,
	[Description] [nvarchar](max) NULL,
	[IsCursed] [bit] NOT NULL,
	[CurseDescription] [nvarchar](max) NULL,
	[Weight] [int] NOT NULL,
	[Value] [int] NOT NULL,
	[PreRequisiteAbilityId] [int] NULL,
	[PreRequisiteAbilityScore] [int] NULL,	
	[WeaponTypeId] [int] NULL,
	[ArmorTypeId] [int] NULL,
	[Bonus] [int] NOT NULL DEFAULT 0,
	[IsMagical] [bit] NOT NULL,
	[ImagePath] NVARCHAR(150) NULL, 
	[Source] NVARCHAR(50) NOT NULL DEFAULT 'PHB', 
    CONSTRAINT [PK_Equipment] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_Ability] FOREIGN KEY([PreRequisiteAbilityId])
REFERENCES [dbo].[Ability] ([Id])
GO

ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_Ability]
GO

ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_EquipmentType] FOREIGN KEY([EquipmentTypeId])
REFERENCES [dbo].[EquipmentType] ([Id])
GO

ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_EquipmentType]
GO

ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_WeaponType] FOREIGN KEY([WeaponTypeId])
REFERENCES [dbo].[WeaponType] ([Id])
GO

ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_WeaponType]
GO

ALTER TABLE [dbo].[Equipment]  WITH CHECK ADD  CONSTRAINT [FK_Equipment_ArmorType] FOREIGN KEY([ArmorTypeId])
REFERENCES [dbo].[ArmorType] ([Id])
GO

ALTER TABLE [dbo].[Equipment] CHECK CONSTRAINT [FK_Equipment_ArmorType]
GO