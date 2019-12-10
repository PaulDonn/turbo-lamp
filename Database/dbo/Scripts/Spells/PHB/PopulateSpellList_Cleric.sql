INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Cantrips--
		   (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Guidance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Light')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Resistance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sacred Flame')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spare the Dying')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thaumaturgy')),

		   --Level 1--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Bane')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Bless')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Command')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Create or Destroy Water')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cure Wounds')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Evil and Good')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Magic')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Poison and Disease')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Guiding Bolt')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Healing Word')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Inflict Wounds')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Evil and Good')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Purify Food and Drink')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sanctuary')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shield of Faith')),


		   --Level 2--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Aid')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Augury')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blindness/Deafness')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Calm Emotions')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Continual Flame')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Enhance Ability')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Find Traps')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Gentle Repose')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Person')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Lesser Restoration')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Object')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Prayer of Healing')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Poison')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Silence')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spiritual Weapon')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Warding Bond')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Zone of Truth')),


		   --Level 3--')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animate Dead')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Beacon of Hope')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Bestow Curse')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Clairvoyance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Create Food and Water')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Daylight')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Magic')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feign Death')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Glyph of Warding')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Magic Circle')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Healing Word')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Meld into Stone')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Energy')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Remove Curse')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Revivify')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sending')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Speak with Dead')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spirit Guardians')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tongues')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Water Walk')),


		   --Level 4--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Banishment')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Control Water')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Death Ward')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Divination')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Freedom of Movement')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Guardian of Faith')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Creature')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Stone Shape')),


		   --Level 5--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Commune')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Contagion')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Evil and Good')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Flame Strike')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Geas')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Greater Restoration')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hallow')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Insect Plague')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Legend Lore')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Cure Wounds')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Planar Binding')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Raise Dead')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Scrying')),


		   --Level 6--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blade Barrier')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Create Undead')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Find the Path')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Forbiddance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Harm')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heal')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heroes'' Feast')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Planar Ally')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Seeing')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Word of Recall')),


		   --Level 7--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Celestial')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Divine Word')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Etherealness')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fire Storm')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Plane Shift')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Regenerate')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Resurrection')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Symbol')),


		   --Level 8--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Antimagic Field')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Control Weather')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Earthquake')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Holy Aura')),


		   --Level 9--
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Astral Projection')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Gate')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Heal')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Resurrection'))

GO