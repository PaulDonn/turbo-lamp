INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Gnome Cunning'--<Name, nvarchar(50),>
           ,'You have advantage on all Intelligence, Wisdom, and Charisma saving throws against magic.'--<Description, nvarchar(max),>
           ,'Gnome_Cunning'--<Code, nvarchar(50),>
		   ),

		   --Forest Gnome--
           ('Natural Illusionist'--<Name, nvarchar(50),>
           ,'You know the minor illusion cantrip. Intelligence is your spellcasting ability for it.'--<Description, nvarchar(max),>
           ,'ForestGnome_NaturalIllusionist'--<Code, nvarchar(50),>
		   ),
           ('Speak With Small Beasts'--<Name, nvarchar(50),>
           ,'Through sounds and gestures, you can communicate simple ideas with Small or smaller beasts. Forest gnomes love animals and often keep squirrels, badgers, rabbits, moles, woodpeckers, and other creatures as beloved pets.'--<Description, nvarchar(max),>
           ,'ForestGnome_SpeakWithSmallBeasts'--<Code, nvarchar(50),>
		   ),

		   --Rock Gnome--
           ('Artificer''s Lore'--<Name, nvarchar(50),>
           ,'Whenever you make an Intelligence (History) check related to magic items, alchemical objects, or technological devices, you can add twice your proficiency bonus, instead of any proficiency bonus you normally apply.'--<Description, nvarchar(max),>
           ,'RockGnome_ArtificersLore'--<Code, nvarchar(50),>
		   ),
           ('Tinker'--<Name, nvarchar(50),>
           ,'You have proficiency with artisan''s tools (tinker''s tools). Using those tools, you can spend 1 hour and 10 gp worth of materials to construct a Tiny clockwork device (AC 5, 1 hp). The device ceases to function after 24 hours (unless you spend 1 hour repairing it to keep the device functioning), or when you use your action to dismantle it; at that time, you can reclaim the materiaIs used to create it. You can have up to three such devices active at a time.
		   
		   When you create a device, choose one of the following options:
		   
		   -Clockwork Toy. This toy is a clockwork animal, monster, or person, such as a frog, mouse, bird, dragon, or soldier. When placed on the ground, the toy moves 5 feet across the ground on each of your turns in a random direction. It makes noises as appropriate to the creature it represents.
		   
		   -Fire Starter. The device produces a miniature flame, which you can use to light a candle, torch, or campfire. Using the device requires your action.
		   
		   -Music Box. When opened, this music box plays a single song at a moderate volume. The box stops playing when it reaches the song''s end or when it is closed.'--<Description, nvarchar(max),>
           ,'RockGnome_Tinker'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Intelligence score increases by 2.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Age')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Gnomes mature at the same rate humans do, and most are expected to settle down into an adult life by around age 40. They can live 350 to almost 500 years.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Alignment')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Gnomes are most often good. Those who tend toward law are sages, engineers, researchers, scholars, investigators, or inventors. Those who tend toward chaos are minstrels, trickslers, wanderers, or fanciful jewelers. Gnomes are good-hearted, and even the tricksters among them are more playful than vicious.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Size')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Gnomes are between 3 and 4 feet tall and average about 40 pounds. Your size is Small.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Speed')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your base walking speed is 25 feet.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Darkvision')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Accustomed to life underground, you have superior vision in dark and dim conditions. You can see in dim light within 60 feet of you as if it were bright light, and in darkness as if it were dim light. You can''t discern color in darkness, only shades of gray.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Languages')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can speak, read, and write Common and Gnomish. The Gnomish language, which uses the Dwarvish script, is renowned for its technical treatises and its catalogs of knowledge about the natural world.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Gnome')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Gnome_Cunning')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Forest Gnome--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Forest Gnome')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Dexterity score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Forest Gnome')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ForestGnome_NaturalIllusionist')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Forest Gnome')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ForestGnome_SpeakWithSmallBeasts')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Rock Gnome--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Rock Gnome')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Constitution score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Rock Gnome')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'RockGnome_ArtificersLore')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Rock Gnome')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'RockGnome_Tinker')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO