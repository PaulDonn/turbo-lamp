﻿CREATE TABLE [dbo].[PcTrait](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TraitTypeId] [int] NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[PcId] [int] NOT NULL,
 CONSTRAINT [PK_PcTrait] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO

ALTER TABLE [dbo].[PcTrait]  WITH CHECK ADD  CONSTRAINT [FK_PcTrait_PlayerCharacter] FOREIGN KEY([PcId])
REFERENCES [dbo].[PlayerCharacter] ([Id])
GO

ALTER TABLE [dbo].[PcTrait] CHECK CONSTRAINT [FK_PcTrait_PlayerCharacter]
GO

ALTER TABLE [dbo].[PcTrait]  WITH CHECK ADD  CONSTRAINT [FK_PcTrait_TraitType] FOREIGN KEY([TraitTypeId])
REFERENCES [dbo].[TraitType] ([Id])
GO

ALTER TABLE [dbo].[PcTrait] CHECK CONSTRAINT [FK_PcTrait_TraitType]
GO