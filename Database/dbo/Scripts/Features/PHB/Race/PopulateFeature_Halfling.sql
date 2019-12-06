INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Lucky'--<Name, nvarchar(50),>
           ,'When you roll a 1 on an attack roll, ability check, or saving throw, you can reroll the die and must use the new roll.'--<Description, nvarchar(max),>
           ,'Halfling_Lucky'--<Code, nvarchar(50),>
		   ),
           ('Brave'--<Name, nvarchar(50),>
           ,'You have advantage on saving throws against being frightened.'--<Description, nvarchar(max),>
           ,'Halfling_Brave'--<Code, nvarchar(50),>
		   ),
           ('Halfling Nimbleness'--<Name, nvarchar(50),>
           ,'You can move through the space of any creature that is of a size larger than yours.'--<Description, nvarchar(max),>
           ,'Halfling_Nimbleness'--<Code, nvarchar(50),>
		   ),

		   --Lightfoot--
           ('Naturally Stealthy'--<Name, nvarchar(50),>
           ,'You can attempt to hide even when you are obscured only by a creature that is at least one size larger than you.'--<Description, nvarchar(max),>
           ,'Lightfoot_NaturallyStealthy'--<Code, nvarchar(50),>
		   ),

		   --Stout--
           ('Stout Resilience'--<Name, nvarchar(50),>
           ,'You have advantage on saving throws against poison, and you have resistance against poison damage.'--<Description, nvarchar(max),>
           ,'Stout_Resilience'--<Code, nvarchar(50),>
		   )
GO

INSERT INTO [dbo].[RaceFeature]
           ([RaceId]
           ,[SubRaceId]
           ,[FeatureId]
		   ,[Level]
           ,[Description]
           ,[Hidden])
     VALUES
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Dexterity score increases by 2.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Age')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'A halfling reaches adulthood at the age of 20 and generally lives into the middle of his or her second century.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Alignment')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Most halflings are lawful good. As a rule, they are good-hearted and kind, hate to see others in pain, and have no tolerance for oppression. They are also very orderly and traditional, leaning heavily on the support of their community and the comfort of their old ways.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Size')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Halflings average about 3 feet tall and weigh about 40 pounds. Your size is Small.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Speed')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your base walking speed is 25 feet'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Languages')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can speak, read, and write Common and Halfling. The Halfling language isn''t secret, but halflings are loath to share it with others. They write very little, so they don''t have a rich body of literature. Their oral tradition, however, is very strong. Almost all halflings speak Common to converse with the people in whose lands they dwell or through which they are traveling.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Halfling_Lucky')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Halfling_Brave')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Halfling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Halfling_Nimbleness')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Lightfoot--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Lightfoot')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Charisma score increases by 1'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Lightfoot')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Lightfoot_NaturallyStealthy')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Stout--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Stout')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Constitution score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Stout')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Stout_Resilience')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO