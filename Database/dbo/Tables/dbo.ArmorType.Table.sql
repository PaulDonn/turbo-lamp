CREATE TABLE [dbo].[ArmorType](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Class] [nvarchar](50) NOT NULL,
	[BaseAC] [int] NOT NULL,
	[AddDexterityBonus] [bit] NOT NULL,
	[DexterityBonusMax] [int] NULL,
	[StrengthRequirement] [int] NULL,
	[StealthDisadvantage] [bit] NOT NULL,
 CONSTRAINT [PK_ArmorType] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO