INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Dwarven Resilience'--<Name, nvarchar(50),>
           ,'You have advantage on saving throws against poison, and you have resistance against poison damage.'--<Description, nvarchar(max),>
           ,'Dwarf_DwarvenResilience'--<Code, nvarchar(50),>
		   ),
           ('Dwarven Combat Training'--<Name, nvarchar(50),>
           ,'You have proficiency with the battleaxe, handaxe, throwing hammer, and warhammer.'--<Description, nvarchar(max),>
           ,'Dwarf_DwarvenCombatTraining'--<Code, nvarchar(50),>
		   ),
           ('Stonecutting'--<Name, nvarchar(50),>
           ,'Whenever you make an Intelligence (History) check related to the origin of stonework, you are considered proficient in the History skill and add double your proficiency bonus to the check, instead of your normal proficiency bonus.'--<Description, nvarchar(max),>
           ,'Dwarf_Stonecutting'--<Code, nvarchar(50),>
		   ),
           ('Dwarven Toughness'--<Name, nvarchar(50),>
           ,'Your hit point maximum increases by 1, and it increases by 1 every time you gain a level.'--<Description, nvarchar(max),>
           ,'HillDwarf_DwarvenToughness'--<Code, nvarchar(50),>
		   ),
           ('Dwarven Armor Training'--<Name, nvarchar(50),>
           ,'You have proficiency with light and medium armor.'--<Description, nvarchar(max),>
           ,'MountainDwarf_DwarvenArmorTraining'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Constitution score increases by 2.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Age')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Dwarves mature at the same rate as humans, but they''re considered young until they reach the age of 50,.On average, they live about 350 years.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Alignment')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Most dwarves are lawful, believing firmly in the benefits of a well-ordered society. They tend toward good as well, with a strong sense of fair play and a belief that everyone deserves to share in the benefits of a just order.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Size')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Dwarves stand between 4 and 5 feet tall and average about 150 pounds. Your size is Medium.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Speed')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your base walking speed is 25 feet. Your speed is not reduced by wearing heavy armor.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Darkvision')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dwarf_DwarvenResilience')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dwarf_DwarvenCombatTraining')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ToolProficiency')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You gain proficiency with the artisan''s tools of your choice: smith''s tools, brewer''s supplies, or mason''s tools.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dwarf_Stonecutting')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dwarf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Languages')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can speak, read, and write Common and Infernal.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),

		   --Hill Dwarf--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Hill Dwarf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Wisdom score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Hill Dwarf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'HillDwarf_DwarvenToughness')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Mountain Dwarf--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Mountain Dwarf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Strength score increases by 2.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Mountain Dwarf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'MountainDwarf_DwarvenArmorTraining')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO