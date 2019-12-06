INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Menacing'--<Name, nvarchar(50),>
           ,'You gain proficieney in the Intimidation skill.'--<Description, nvarchar(max),>
           ,'HalfOrc_Menacing'--<Code, nvarchar(50),>
		   ),
           ('Relentless Endurance'--<Name, nvarchar(50),>
           ,'When you are reduced to O hit points but not killed outright, you can drop to 1 hit point instead. You can''t use this feature again until you finish a long rest.'--<Description, nvarchar(max),>
           ,'HalfOrc_RelentlessEndurance'--<Code, nvarchar(50),>
		   ),
           ('Savage Attacks'--<Name, nvarchar(50),>
           ,'When you score a critical hit with a melee weapon attack, you can roll one of thc weapon''s damage dice one additional time and add it to the extra damage of the criticaI hit.'--<Description, nvarchar(max),>
           ,'HalfOrc_SavageAttacks'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Strength seore increases by 2, and your Constitution score inereases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Age')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Half-orcs mature a little faster than humans, reaching adulthood around age 14. They age noticeably faster and rarely live longer than 75 years.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Alignment')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Half-orcs inherit a tendeney toward chaos from their orc parents and are not strongly inclined toward good. Half-orcs raised among orcs and willing to live out their lives among them are usually evil.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Size')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Half-orcs are somewhat larger and bulkier than humans, and they range from 5 to well over 6 feet tall. Your size is Medium.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Speed')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your base walking speed is 30 feet.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Darkvision')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Thanks to your orc blood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Languages')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can speak, read, and write Common and Orc. Orc is a harsh, grating language with hard consonants. It has no script of its own but is written in the Dwarvish script.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'HalfOrc_Menacing')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'HalfOrc_RelentlessEndurance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Orc')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'HalfOrc_SavageAttacks')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO