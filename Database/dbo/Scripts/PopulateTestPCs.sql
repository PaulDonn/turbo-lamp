INSERT INTO [dbo].[Party]
           ([Name])
     VALUES
           ('The Undateables')
GO

INSERT INTO [dbo].[Player]
           ([Name])
     VALUES
           ('Stephen')
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
,[PartyId]
,[HitPointMaximum]
,[HitPointCurrent]
,[Level1SlotsMaximum]
,[Level1SlotsCurrent]
,[Level2SlotsMaximum]
,[Level2SlotsCurrent]
,[Level3SlotsMaximum]
,[Level3SlotsCurrent]
,[Level4SlotsMaximum]
,[Level4SlotsCurrent]
,[Level5SlotsMaximum]
,[Level5SlotsCurrent]
,[Level6SlotsMaximum]
,[Level6SlotsCurrent]
,[Level7SlotsMaximum]
,[Level7SlotsCurrent]
,[Level8SlotsMaximum]
,[Level8SlotsCurrent]
,[Level9SlotsMaximum]
,[Level9SlotsCurrent]
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
           ,10 --<BackgroundId, int,>
           ,(SELECT TOP(1) Id FROM Player WHERE Name = 'Stephen')--<PlayerId, int,>
           ,9 --<RaceId, int,>
           ,null --<SubRaceId, int,>
           ,6 --<AlignmentId, int,>
           ,34000 --<ExperiencePoints, int,>
           ,(SELECT TOP(1) Id FROM Party WHERE Name = 'The Undateables') --<PartyId, int,>
           ,49 --<HitPointMaximum, int,>
           ,24 --<HitPointCurrent, int,>
           ,4 --<Level1SlotsMaximum, int,>
           ,0 --<Level1SlotsCurrent, int,>
           ,3 --<Level2SlotsMaximum, int,>
           ,2 --<Level2SlotsCurrent, int,>
           ,3 --<Level3SlotsMaximum, int,>
           ,1 --<Level3SlotsCurrent, int,>
           ,2 --<Level4SlotsMaximum, int,>
           ,0 --<Level4SlotsCurrent, int,>
           ,0 --<Level5SlotsMaximum, int,>
           ,0 --<Level5SlotsCurrent, int,>
           ,0 --<Level6SlotsMaximum, int,>
           ,0 --<Level6SlotsCurrent, int,>
           ,0 --<Level7SlotsMaximum, int,>
           ,0 --<Level7SlotsCurrent, int,>
           ,0 --<Level8SlotsMaximum, int,>
           ,0 --<Level8SlotsCurrent, int,>
           ,0 --<Level9SlotsMaximum, int,>
           ,0 --<Level9SlotsCurrent, int,>
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

INSERT INTO [dbo].[PcTrait]
           ([PcId]
		   ,[TraitTypeId]
           ,[Description])
     VALUES
           (1
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
           (1--PcId
		   ,1--AbilityId
           ,8--Score
		   ),
		   (1--PcId
		   ,2--AbilityId
           ,15--Score
		   ),
		   (1--PcId
		   ,3--AbilityId
           ,14--Score
		   ),
		   (1--PcId
		   ,4--AbilityId
           ,18--Score
		   ),
		   (1--PcId
		   ,5--AbilityId
           ,10--Score
		   ),
		   (1--PcId
		   ,6--AbilityId
           ,14--Score
		   )
GO

INSERT INTO [dbo].[PcSavingThrow]
           ([PcId]
           ,[AbilityId])
     VALUES
           (1
           ,4),
		   (1
           ,5)
GO

INSERT INTO [dbo].[PcSkill]
           ([PcId]
           ,[SkillId])
     VALUES
           (1,3),
           (1,6),
           (1,7),
           (1,9)
GO

INSERT INTO [dbo].[PcSpell] (PcId, SpellId)
VALUES 
	(1,(SELECT Id FROM Spell WHERE Name = 'Eldritch Blast')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Fire Bolt')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Light')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Mage Hand')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Thaumaturgy')),
	
	(1,(SELECT Id FROM Spell WHERE Name = 'Burning Hands')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Charm Person')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Find Familiar')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Mage Armor')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Magic Missile')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Thunderwave')),
	
	(1,(SELECT Id FROM Spell WHERE Name = 'Darkvision')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Invisibility')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Misty Step')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Scorching Ray')),

	(1,(SELECT Id FROM Spell WHERE Name = 'Counterspell')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Fireball')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Fly')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Haste')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Vampiric Touch')),

	(1,(SELECT Id FROM Spell WHERE Name = 'Dimension Door')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Evard''s Black Tentacles')),
	(1,(SELECT Id FROM Spell WHERE Name = 'Polymorph'))
GO