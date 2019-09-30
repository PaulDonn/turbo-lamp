INSERT INTO [dbo].[Party]
           ([Name])
     VALUES
           ('Test Party 1')
GO

INSERT INTO [dbo].[PlayerCharacter]
           ([CharacterName]
           ,[ClassId]
           ,[ArchetypeId]
           ,[LevelId]
           ,[BackgroundId]
           ,[PlayerId]
           ,[RaceId]
           ,[SubRaceId]
           ,[AlignmentId]
           ,[ExperiencePoints]
           ,[PartyId])
     VALUES
           ('Level 1 PC'
           ,8 --Class
           ,null --ArchetypeId
           ,1 --LevelId
           ,9 --BackgroundId
           ,1 --PlayerId
           ,7 --RaceId
           ,null --SubRaceId
           ,1 --AlignmentId
           ,0 --ExperiencePoints
           ,1  --PartyId
		   ),
		   ('Level 3 PC'
           ,1 --Class
           ,1 --ArchetypeId
           ,3 --LevelId
           ,9 --BackgroundId
           ,2 --PlayerId
           ,1 --RaceId
           ,1 --SubRaceId
           ,3 --AlignmentId
           ,3000 --ExperiencePoints
           ,1  --PartyId
		   )
GO