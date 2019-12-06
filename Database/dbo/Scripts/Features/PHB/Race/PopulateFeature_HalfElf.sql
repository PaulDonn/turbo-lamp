INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Skill Versatility'--<Name, nvarchar(50),>
           ,'You gain proficiency in two skills of your choice.'--<Description, nvarchar(max),>
           ,'HalfElf_SkillVersatility'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Charisma score increases by 2, and two other ability scores of your choice increase by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Age')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Half-elves mature at the same rate humans do and reach adulthood around the age of 20. They live much longer than humans, however, often exceeding 180 years.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Alignment')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Half-elves share the chaotic bent of their elven heritage. They value both personal freedom and creative expression, demonstrating neither love of leaders nor desire for followers. They chafe at rules, resent others'' demands, and sometimes prove unreliable, or at least unpredictable.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Size')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Half-elves are about the same size as humans, ranging from 5 to 6 feet tall. Vour size is Medium.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Speed')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your base walking speed is 30 feet.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Darkvision')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Thanks to your elfblood, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Languages')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can speak, read, and write Common, Elvish, and one extra language of your choice.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'FeyAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Half Elf')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'HalfElf_SkillVersatility')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),

		   --High Elf--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'High Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your intelligence score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'High Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Elf_WeaponTraining')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'High Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Cantrips')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You know one Cantrip of your choice from the wizard spell list. Intelligence is your spellcasting ability for it.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'High Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ExtraLanguage')--<FeatureId, int,>
		   ,0--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),

		   --Wood Elf--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Wood Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Wisdom score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Wood Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Elf_WeaponTraining')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Wood Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'WoodElf_FleetOfFoot')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Wood Elf')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'WoodElf_MaskOfTheWild')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Drow--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Drow')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Charisma score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Drow')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SuperiorDarkvision')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Drow')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Drow_SunlightSensitivity')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Drow')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Drow_DrowMagic')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Drow')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Drow_WeaponTraining')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   )
GO