INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES
		   --Cantrips--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blade Ward')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Chill Touch')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Eldritch Blast')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Friends')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mage Hand')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Minor Illusion')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Poison Spray')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Prestidigitation')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Strike')),

		   --Level 1--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Armor of Agathys')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Arms of Hadar')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Charm Person')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Comprehend Languages')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Expeditious Retreat')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hellish Rebuke')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hex')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Illusory Script')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Evil and Good')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Unseen Servant')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Witch Bolt')),

		   --Level 2--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cloud of Daggers')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Crown of Madness')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Darkness')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Enthrall')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Person')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Invisibility')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mirror Image')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Misty Step')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Ray of Enfeeblement')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shatter')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spider Climb')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Suggestion')),

		   --Level 3--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Counterspell')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Magic')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fear')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fly')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Gaseous Form')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hunger of Hadar')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hypnotic Pattern')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Magic Circle')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Major Image')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Remove Curse')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tongues')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Vampiric Touch')),

		   --Level 4--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Banishment')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blight')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dimension Door')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hallucinatory Terrain')),

		   --Level 5--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Contact Other Plane')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dream')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Monster')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Scrying')),

		   --Level 6--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Arcane Gate')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Circle of Death')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Fey')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Create Undead')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Eyebite')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Flesh to Stone')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Suggestion')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Seeing')),


		   --Level 7--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Etherealness')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Finger of Death')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Forcecage')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Plane Shift')),


		   --Level 8--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Demiplane')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dominate Monster')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feeblemind')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Glibness')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Power Word Stun')),


		   --Level 9--
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Astral Projection')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Foresight')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Imprisonment')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Power Word Kill')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Polymorph'))
GO