INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Draconic Ancestry'--<Name, nvarchar(50),>
           ,'You have draconic ancestry.'--<Description, nvarchar(max),>
           ,'Dragonborn_DraconicAncestry'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dragonborn')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreIncrease')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your Strength score increases by 2 and your Charisma score increases by 1.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dragonborn')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Age')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Young dragonborn grow quickly. They walk hours after hatching, attain the size and development of a 1O-year-old human child by the age of 3, and reach adulthood by 15. They live to be around 80.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dragonborn')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Alignment')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Dragonborn tend to extremes, making a conscious choice for one side or the other in the cosmic war between good and evil (represented by Bahamut and Tiamat, respectively). Most dragonborn are good, but those who side with Tiamat can be terrible villains.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dragonborn')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Size')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Dragonborn are taller and heavier than humans, standing well over 6 feet tall and averaging almost 250 pounds. Your size is Medium.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dragonborn')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Speed')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Your base walking speed is 30 feet.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Race WHERE [Name] = 'Dragonborn')--<RaceId, int,>
           ,null--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Languages')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Vou can speak. read, and write Common and Draconic. Draconic is thought to be one of the oldest languages and is often used in the study of magic. The language sounds harsh to most other creatures and includes numerous hard consonants and sibilants.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),

		   --Black Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Black Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have black draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Black Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 30 foot line must make 
		   a Dexterity saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 acid damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Black Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to acid damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Blue Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Blue Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have blue draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Blue Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 30 foot line must make 
		   a Dexterity saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 lightning damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Blue Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to lightning damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Brass Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Brass Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have brass draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Brass Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 30 foot line must make 
		   a Dexterity saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 fire damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Brass Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to fire damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Brass Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Bronze Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have bronze draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Bronze Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 30 foot line must make 
		   a Dexterity saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 lightning damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Bronze Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to lightning damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Copper Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Copper Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have copper draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Copper Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 30 foot line must make 
		   a Dexterity saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 acid damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Copper Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to acid damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Gold Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Gold Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have gold draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Gold Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 12 foot cone must make 
		   a Dexterity saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 fire damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Gold Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to fire damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Green Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Green Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have green draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Green Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 12 foot cone must make 
		   a Constitution saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 poison damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Green Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to poison damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Red Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Red Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have red draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Red Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 12 foot cone must make 
		   a Dexterity saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 fire damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Red Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to fire damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Silver Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Silver Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have silver draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Silver Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 12 foot cone must make 
		   a Constitution saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 cold damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'Silver Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to cold damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --White Dragonborn--
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'White Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Dragonborn_DraconicAncestry')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have white draconic ancestry.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'White Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BreathWeapon')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use your action to exhale destructive energy. When you use your breath weapon, each creature in
		   a 12 foot cone must make 
		   a Constitution saving throw. The DC for this saving throw equals 8 + your Constitution modifier + your proficiency bonus. A creature takes
		   2d6 cold damage on a failed save, and half as much damage on a successful one. The damage increases to 3d6 at 6th level. 4d6 at 11th level, and 5d6 at 16th level.
		   
		   After you use your breath weapon, you can''t use it again until you complete a short or long rest.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<RaceId, int,>
           ,(SELECT TOP(1) Id FROM SubRace WHERE [Name] = 'White Dragonborn')--<SubRaceId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DamageResistance')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You have resistance to cold damage'--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO