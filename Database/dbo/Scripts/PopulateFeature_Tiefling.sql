INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Hellish Resistance'--<Name, nvarchar(50),>
           ,'You have Resistance to fire damage.'--<Description, nvarchar(max),>
           ,'Tiefling_HellishResistance'--<Code, nvarchar(50),>
		   ),
           ('Infernal Legacy'--<Name, nvarchar(50),>
           ,'You know the Thaumaturgy cantrip. When you reach 3rd level, you can cast the Hellish Rebuke spell as a 2nd-level spell once with this trait and regain the ability to do so when you finish a Long Rest. When you reach 5th level, you can cast the Darkness spell once with this trait and regain the ability to do so when you finish a Long Rest. Charisma is your Spellcasting Ability for these Spells.'--<Description, nvarchar(max),>
           ,'Tiefling_InfernalLegacy'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Intelligence score increases by 1, and your Charisma score increases by 2.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Age')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Tieflings mature at the same rate as humans but live a few years longer.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Alignment')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Tieflings might not have an innate tendency toward evil, but many of them end up there. Evil or not, an independent Nature inclines many tieflings toward a chaotic Alignment.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Size')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Tieflings are about the same size and build as humans. Your size is Medium.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Speed')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your base walking speed is 30 feet.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Darkvision')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Thanks to your Infernal heritage, you have superior vision in dark and dim Conditions. You can see in dim light within 60 feet of you as if it were bright light, and in Darkness as if it were dim light. You can’t discern color in Darkness, only shades of gray.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Tiefling_HellishResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Tiefling_InfernalLegacy')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Languages')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can speak, read, and write Common and Infernal.'--<Description, int,>
           ,1--<Hidden, bit,>
		   )
GO