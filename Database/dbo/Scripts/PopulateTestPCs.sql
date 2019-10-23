INSERT INTO [dbo].[Party]
           ([Name])
     VALUES
           ('Test Party 1')
GO

INSERT INTO [dbo].[Player]
           ([Name])
     VALUES
           ('Player 1')
          ,('Player 2')
          ,('Player 3')
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

INSERT INTO [dbo].[PcAbilityScore]
           ([PcId]
           ,[AbilityId]
           ,[Score])
     VALUES
	 --Level 1 PC
           (1--PcId
		   ,1--AbilityId
           ,8--Score
		   ),
		   (1--PcId
		   ,2--AbilityId
           ,10--Score
		   ),
		   (1--PcId
		   ,3--AbilityId
           ,12--Score
		   ),
		   (1--PcId
		   ,4--AbilityId
           ,13--Score
		   ),
		   (1--PcId
		   ,5--AbilityId
           ,14--Score
		   ),
		   (1--PcId
		   ,6--AbilityId
           ,15--Score
		   ),

		--Level 3 PC
		   (2--PcId
		   ,1--AbilityId
           ,15--Score
		   ),
		   (2--PcId
		   ,2--AbilityId
           ,13--Score
		   ),
		   (2--PcId
		   ,3--AbilityId
           ,14--Score
		   ),
		   (2--PcId
		   ,4--AbilityId
           ,8--Score
		   ),
		   (2--PcId
		   ,5--AbilityId
           ,10--Score
		   ),
		   (2--PcId
		   ,6--AbilityId
           ,12--Score
		   )
GO

INSERT INTO [dbo].[PcSavingThrow]
           ([PcId]
           ,[AbilityId])
     VALUES
           (1
           ,1),
		   (1
           ,2),
		   (2
           ,1),
		   (2
           ,3)
GO

INSERT INTO [dbo].[PcSkill]
           ([PcId]
           ,[SkillId])
     VALUES
           (1,1),
           (1,10),
           (1,11),
           (1,17),
           (1,18),
           (2,4),
           (2,6),
           (2,8),
           (2,15)
GO