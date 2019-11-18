CREATE TABLE [dbo].[Race](
	[Id] [int] NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](max) NOT NULL,
	[AdditionalLanguages] [int] NULL,
	[AdditionalSkills] [int] NULL,
	[Source] NVARCHAR(50) NOT NULL DEFAULT 'PHB', 
 CONSTRAINT [PK_Race] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO