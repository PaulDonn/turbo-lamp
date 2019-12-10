INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Cantrips--
		   (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blade Ward')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dancing Lights')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Friends')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Light')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mage Hand')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Message')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Minor Illusion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Prestidigitation')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Strike')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Vicious Mockery')),

		   --Level 1--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animal Friendship')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Bane')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Charm Person')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Comprehend Languages')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cure Wounds')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Magic')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Disguise Self')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dissonant Whispers')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Faerie Fire')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feather Fall')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Healing Word')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heroism')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Identify')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Illusory Script')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Longstrider')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Silent Image')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sleep')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tasha''s Hideous Laughter')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thunderwave')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Unseen Servant')),


		   --Level 2--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animal Messenger')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blindness/Deafness')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Calm Emotions')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cloud of Daggers')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Crown of Madness')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Thoughts')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Enhance Ability')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Enthrall')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heat Metal')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Person')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Invisibility')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Knock')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Lesser Restoration')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Animals or Plants')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Object')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Magic Mouth')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Phantasmal Force')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'See Invisibility')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shatter')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Silence')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Suggestion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Zone of Truth')),


		   --Level 3--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Bestow Curse')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Clairvoyance')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Magic')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fear')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feign Death')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Glyph of Warding')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hypnotic Pattern')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Leomund''s Tiny Hut')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Major Image')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Nondetection')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Plant Growth')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sending')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Speak with Dead')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Speak with Plants')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Stinking Cloud')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tongues')),


		   --Level 4--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Compulsion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Confusion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dimension Door')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Freedom of Movement')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Greater Invisibility')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hallucinatory Terrain')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Creature')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Polymorph')),


		   --Level 5--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animate Objects')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Awaken')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dominate Person')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dream')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Geas')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Greater Restoration')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Monster')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Legend Lore')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Cure Wounds')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mislead')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Modify Memory')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Planar Binding')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Raise Dead')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Scrying')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Seeming')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Teleportation Circle')),


		   --Level 6--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Eyebite')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Find the Path')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Guards and Wards')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Suggestion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Otto''s Irresistible Dance')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Programmed Illusion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Seeing')),


		   --Level 7--'
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Etherealness')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Forcecage')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mirage Arcane')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mordenkainen''s Magnificent Mansion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mordenkainen''s Sword')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Project Image')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Regenerate')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Resurrection')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Symbol')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Teleport')),


		   --Level 8--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dominate Monster')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feeblemind')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Glibness')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mind Blank')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Power Word Stun')),


		   --Level 9--
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Foresight')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Power Word Heal')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Power Word Kill')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Polymorph'))

GO