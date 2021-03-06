CREATE TABLE [dbo].[Campaign](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[Description] [nvarchar](MAX) NULL,
    [OwningDmId] INT NOT NULL, 
	[CharacterGenerationMethodId] INT NOT NULL , 
    [NewCharacterStartingLevel] INT NOT NULL, 
    CONSTRAINT [PK_Campaign] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Campaign]  WITH CHECK ADD  CONSTRAINT [FK_Campaign_CharacterGenerationMethod] FOREIGN KEY([CharacterGenerationMethodId])
REFERENCES [dbo].[CharacterGenerationMethod] ([Id])
GO
ALTER TABLE [dbo].[Campaign] CHECK CONSTRAINT [FK_Campaign_CharacterGenerationMethod]
GO
