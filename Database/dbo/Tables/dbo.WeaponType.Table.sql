CREATE TABLE [dbo].[WeaponType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[IsMartial] [bit] NOT NULL DEFAULT 0, 
	[IsRanged] [bit] NOT NULL DEFAULT 0,
	[DamageDie] [int] NOT NULL,
	[NumberOfDice] [int] NOT NULL ,
	[DamageTypeId] [int] NOT NULL,
	[IsLight] [bit] NOT NULL DEFAULT 0,
	[IsHeavy] [bit] NOT NULL DEFAULT 0,
	[IsFinesse] [bit] NOT NULL DEFAULT 0,
	[IsThrown] [bit] NOT NULL DEFAULT 0,
	[RangeLow] [int] NULL,
	[RangeHigh] [int] NULL,
	[IsTwoHanded] [bit] NOT NULL DEFAULT 0,
	[IsVersatile] [bit] NOT NULL DEFAULT 0,
	[VersatileDamageDie] [int] NULL,
	[RequiresLoading] [bit] NOT NULL DEFAULT 0,
	[RequiresAmmunition] [bit] NOT NULL DEFAULT 0,
	[HasReach] [bit] NOT NULL DEFAULT 0,
	[IsSpecial] [bit] NOT NULL DEFAULT 0,
    CONSTRAINT [PK_WeaponType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[WeaponType]  WITH CHECK ADD  CONSTRAINT [FK_WeaponType_DamageType] FOREIGN KEY([DamageTypeId])
REFERENCES [dbo].[DamageType] ([Id])
GO

ALTER TABLE [dbo].[WeaponType] CHECK CONSTRAINT [FK_WeaponType_DamageType]
GO