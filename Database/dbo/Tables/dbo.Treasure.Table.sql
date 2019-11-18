﻿CREATE TABLE [dbo].[Treasure](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](150) NOT NULL,
	[Description] [nvarchar](max) NULL,
	[Weight] [int] NOT NULL DEFAULT 0,
	[Value] [int] NOT NULL DEFAULT 0,
	[ImagePath] NVARCHAR(150) NULL, 
	[Source] NVARCHAR(50) NOT NULL DEFAULT 'PHB', 
 CONSTRAINT [PK_Treasure] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO