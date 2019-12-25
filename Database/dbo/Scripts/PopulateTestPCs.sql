INSERT INTO [dbo].[Player]
           ([UserId], [Name], [EmailAddress], [IsDM], [IsEnabled])
     VALUES
           ('1', 'Paul', 'paul.donnelly.91@gmail.com', 1, 1)
          ,('2', 'Stephen', 'stephen.mcguire@dndmail.com', 0, 1)
          ,('3', 'Amy', 'amy.reynolds@dndmail.com', 0, 1)
          ,('4', 'Chrissy', 'chrissy.donnelly@dndmail.com', 0, 1)
          ,('5', 'Terry', 'terry.reynolds@dndmail.com', 0, 1)
GO

INSERT INTO [dbo].[Party]
           ([Name],[Description],[OwningDmId], [CharacterGenerationMethodId], [NewCharacterStartingLevel])
     VALUES
           ('The Undateables',
		    'A band of misfits leaving either salvation or devestation their wake.
			
			These daring advernturers have saved the mining town of Phandalin from a villainous sorcerer, freed the city of Waterdeep from the clutches of a coven of Hags, and defeated the mighty Remorhaz in the ancestral home of a great Dwarven clan. They have also banished a shopkeeper to oblivion, helped in the revival of a crime lord and unleashed two demonic princes upon the material plane.',
		    (SELECT TOP(1) Id FROM Player WHERE [Name] = 'Paul'),
			1,
			1)
GO

INSERT INTO [dbo].[PartySource] ([PartyId], [SourceId])
VALUES ((SELECT TOP(1) Id FROM Party WHERE Name = 'The Undateables'), 1)

INSERT INTO [dbo].[PlayerParty] ([PlayerId], [PartyId])
VALUES
	((SELECT TOP(1) Id FROM Player WHERE [Name] = 'Paul'),
	 (SELECT TOP(1) Id FROM Party WHERE [Name] = 'The Undateables')), 
	((SELECT TOP(1) Id FROM Player WHERE [Name] = 'Stephen'),
	 (SELECT TOP(1) Id FROM Party WHERE [Name] = 'The Undateables')), 
	((SELECT TOP(1) Id FROM Player WHERE [Name] = 'Amy'),
	 (SELECT TOP(1) Id FROM Party WHERE [Name] = 'The Undateables')), 
	((SELECT TOP(1) Id FROM Player WHERE [Name] = 'Chrissy'),
	 (SELECT TOP(1) Id FROM Party WHERE [Name] = 'The Undateables')), 
	((SELECT TOP(1) Id FROM Player WHERE [Name] = 'Terry'),
	 (SELECT TOP(1) Id FROM Party WHERE [Name] = 'The Undateables'))
GO

INSERT INTO [dbo].[PlayerCharacter]
([CharacterName]
,[ClassId]
,[ArchetypeId]
,[Level]
,[ProficiencyBonus]
,[BackgroundId]
,[PlayerId]
,[RaceId]
,[SubRaceId]
,[AlignmentId]
,[ExperiencePoints]
,[PartyId]
,[HitPointMaximum]
,[HitPointCurrent]
,[HitDiceMaximum]
,[HitDiceCurrent]
,[Age]
,[Height]
,[Weight]
,[Eyes] 
,[Skin] 
,[Hair] 
,[Appearance]
,[Backstory] 
,[AlliesAndOrganisations]
,[Copper]
,[Silver]
,[Electrum]
,[Gold] 
,[Platinum]
)
     VALUES
           ('Varg' --<CharacterName, nvarchar(50),>
           ,12 --<ClassId, int,>
           ,37 --<ArchetypeId, int,>
           ,8 --<LevelId, int,>
           ,4 --<ProficiencyBonus, int,>
           ,10 --<BackgroundId, int,>
           ,(SELECT TOP(1) Id FROM Player WHERE Name = 'Stephen')--<PlayerId, int,>
           ,9 --<RaceId, int,>
           ,null --<SubRaceId, int,>
           ,6 --<AlignmentId, int,>
           ,34000 --<ExperiencePoints, int,>
           ,(SELECT TOP(1) Id FROM Party WHERE Name = 'The Undateables') --<PartyId, int,>
           ,49 --<HitPointMaximum, int,>
           ,24 --<HitPointCurrent, int,>
           ,8 --<HitDiceMaximum, int,>
           ,7 --<HitDiceCurrent, int,>
		   ,'Old' --[Age]
		   ,null --[Height]
		   ,null --[Weight]
		   ,null --[Eyes] 
		   ,'Purple' --[Skin] 
		   ,null --[Hair] 
		   ,null --[Appearance]
		   ,'Favourite Quote: "Huh? What? Where am I?"' --[Backstory] 
		   ,'Harpers - Rank 1 - Watcher' --[AlliesAndOrganisations]
		   ,95 --[Copper]
		   ,221 --[Silver]
		   ,0 --[Electrum]
		   ,3898 --[Gold] 
		   ,81 --[Platinum]
		   )
GO

INSERT INTO [dbo].[PcSpellLevel]
		   ([PcId]
		   ,[SpellLevel]
		   ,[SlotsMaximum]
		   ,[SlotsCurrent])
	 VALUES((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			1,--[SpellLevel]
			4,--[SlotsMaximum]
			0--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			2,--[SpellLevel]
			3,--[SlotsMaximum]
			2--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			3,--[SpellLevel]
			3,--[SlotsMaximum]
			1--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			4,--[SpellLevel]
			2,--[SlotsMaximum]
			0--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			5,--[SpellLevel]
			0,--[SlotsMaximum]
			0--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			6,--[SpellLevel]
			0,--[SlotsMaximum]
			0--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			7,--[SpellLevel]
			0,--[SlotsMaximum]
			0--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			8,--[SpellLevel]
			0,--[SlotsMaximum]
			0--[SlotsCurrent]
			),
			((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),--[PcId]
			9,--[SpellLevel]
			0,--[SlotsMaximum]
			0--[SlotsCurrent]
			)

INSERT INTO [dbo].[PcTrait]
           ([PcId]
		   ,[TraitTypeId]
           ,[Description])
     VALUES
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')
		   ,1
           ,'There''s nothing I like more than a good mystery.'),
           (1
		   ,2
           ,'Nothing should fetter the infinite possibility inherent in all existence.'),
           (1
		   ,3
           ,'I have an ancient text that holds terrible secrets that must not fall into the wrong hands.'),
           (1
		   ,4
           ,'Unlocking an ancient mystery is worth the price of a civilisation')
GO

INSERT INTO [dbo].[PcAbilityScore]
           ([PcId]
           ,[AbilityId]
           ,[Score])
     VALUES
	 --Level 1 PC
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--PcId
		   ,1--AbilityId
           ,8--Score
		   ),
		   ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--PcId
		   ,2--AbilityId
           ,15--Score
		   ),
		   ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--PcId
		   ,3--AbilityId
           ,14--Score
		   ),
		   ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--PcId
		   ,4--AbilityId
           ,18--Score
		   ),
		   ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--PcId
		   ,5--AbilityId
           ,10--Score
		   ),
		   ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--PcId
		   ,6--AbilityId
           ,14--Score
		   )
GO

INSERT INTO [dbo].[PcSavingThrow]
           ([PcId]
           ,[AbilityId])
     VALUES
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')
           ,4),
		   ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')
           ,5)
GO

INSERT INTO [dbo].[PcSkill]
           ([PcId]
           ,[SkillId])
     VALUES
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),3),
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),6),
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),7),
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),9)
GO

INSERT INTO [dbo].[PcFeature]
           ([PcId]
           ,[FeatureId]
           ,[RaceFeatureId]
           ,[ClassFeatureId]
           ,[QuantityMaximum]
           ,[QuantityCurrent])
     SELECT
           (SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--<PcId, int,>
           ,null--<FeatureId, int,>
           ,Id--<RaceFeatureId, int,>
           ,null--<ClassFeatureId, int,>
           ,null--<QuantityMaximum, int,>
           ,null--<QuantityCurrent, int,>
		   FROM RaceFeature
		   WHERE RaceId = (SELECT TOP(1) Id FROM Race WHERE [Name] = 'Tiefling')
		   AND [Level] <= 8
GO

INSERT INTO [dbo].[PcFeature]
           ([PcId]
           ,[FeatureId]
           ,[RaceFeatureId]
           ,[ClassFeatureId]
           ,[QuantityMaximum]
           ,[QuantityCurrent])
     SELECT
           (SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--<PcId, int,>
           ,null--<FeatureId, int,>
           ,null--<RaceFeatureId, int,>
           ,Id--<ClassFeatureId, int,>
           ,null--<QuantityMaximum, int,>
           ,null--<QuantityCurrent, int,>
		   FROM ClassFeature
		   WHERE ClassId = (SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')
		   AND [Level] <= 8
GO

INSERT INTO [dbo].[PcFeature]
           ([PcId]
           ,[FeatureId]
           ,[RaceFeatureId]
           ,[ClassFeatureId]
           ,[QuantityMaximum]
           ,[QuantityCurrent])
     SELECT
           (SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--<PcId, int,>
           ,null--<FeatureId, int,>
           ,null--<RaceFeatureId, int,>
           ,Id--<ClassFeatureId, int,>
           ,null--<QuantityMaximum, int,>
           ,null--<QuantityCurrent, int,>
		   FROM ClassFeature
		   WHERE ArchetypeId = (SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Evoker')
		   AND [Level] <= 8
GO

INSERT INTO [dbo].[PcSpell] ([PcId], [SpellId], [IsPrepared])
VALUES 
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Eldritch Blast'), 1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Fire Bolt'), 1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Light'), 1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Mage Hand'), 1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Thaumaturgy'), 1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Acid Splash'), 1),
	
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Burning Hands'), 0),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Charm Person'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Find Familiar'), 0),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Mage Armor'), 0),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Magic Missile'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Thunderwave'), 0),
	
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Darkvision'), 0),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Invisibility'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Misty Step'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Scorching Ray'),1),

	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Counterspell'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Fireball'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Fly'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Haste'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Vampiric Touch'),1),

	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Dimension Door'),1),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Evard''s Black Tentacles'), 0),
	((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg'),(SELECT Id FROM Spell WHERE Name = 'Polymorph'),1)
GO

INSERT INTO [dbo].[PcEquipment]
           ([PcId]
           ,[EquipmentId]
           ,[Quantity]
           ,[Name]
           ,[EquippedSlot])
     VALUES
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--<PcId, int,>
           ,(SELECT TOP(1) Id FROM Equipment WHERE [Name] = 'Quarterstaff')--<EquipmentId, int,>
           ,null--<Quantity, int,>
           ,null--<Name, nvarchar(150),>
           ,'BothHands'--<EquippedSlot, nvarchar(50),>
		   ),
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--<PcId, int,>
           ,(SELECT TOP(1) Id FROM Equipment WHERE [Name] = 'Robes')--<EquipmentId, int,>
           ,null--<Quantity, int,>
           ,'Wizard Robes'--<Name, nvarchar(150),>
           ,'Armor'--<EquippedSlot, nvarchar(50),>
		   ),
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--<PcId, int,>
           ,(SELECT TOP(1) Id FROM Equipment WHERE [Name] = 'Sling')--<EquipmentId, int,>
           ,null--<Quantity, int,>
           ,null--<Name, nvarchar(150),>
           ,null--<EquippedSlot, nvarchar(50),>
		   ),
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')--<PcId, int,>
           ,(SELECT TOP(1) Id FROM Equipment WHERE [Name] = 'Dart')--<EquipmentId, int,>
           ,20--<Quantity, int,>
           ,null--<Name, nvarchar(150),>
           ,null--<EquippedSlot, nvarchar(50),>
		   )
GO

INSERT INTO [dbo].[PcTreasure]
           ([PcId]
           ,[TreasureId]
           ,[Quantity]
           ,[Name])
     VALUES
           ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')
           ,(SELECT TOP(1) Id FROM Treasure WHERE [Name] = 'Diamond')
           ,5
           ,NULL),
		   ((SELECT TOP(1) Id FROM PlayerCharacter WHERE [CharacterName] = 'Varg')
           ,(SELECT TOP(1) Id FROM Treasure WHERE [Name] = 'Book')
           ,NULL
           ,'Ancient Tome')
GO