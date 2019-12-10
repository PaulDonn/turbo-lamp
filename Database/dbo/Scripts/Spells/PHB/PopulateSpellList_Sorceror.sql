INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Cantrips--
		   (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Acid Splash')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blade Ward')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Chill Touch')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dancing Lights')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fire Bolt')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Friends')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Light')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mage Hand')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Message')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Minor Illusion')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Poison Spray')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Prestidigitation')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Ray of Frost')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shocking Grasp')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Strike')),

		   --Level 1--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Burning Hands')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Charm Person')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Chromatic Orb')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Color Spray')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Comprehend Languages')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Magic')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Disguise Self')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Expeditious Retreat')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'False Life')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feather Fall')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fog Cloud')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Jump')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mage Armor')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Magic Missile')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Ray of Sickness')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shield')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Silent Image')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sleep')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thunderwave')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Witch Bolt')),


		   --Level 2--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Alter Self')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blindness/Deafness')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blur')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cloud of Daggers')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Crown of Madness')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Darkness')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Darkvision')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Thoughts')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Enhance Ability')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Enlarge/Reduce')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Gust of Wind')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Person')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Invisibility')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Knock')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Levitate')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mirror Image')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Misty Step')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Phantasmal Force')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Scorching Ray')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'See Invisibility')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shatter')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spider Climb')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Suggestion')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Web')),


		   --Level 3--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blink')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Clairvoyance')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Counterspell')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Daylight')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Magic')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fear')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fireball')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fly')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Gaseous Form')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Haste')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hypnotic Pattern')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Lightning Bolt')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Major Image')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Energy')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sleet Storm')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Slow')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Stinking Cloud')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tongues')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Water Breathing')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Water Walk')),


		   --Level 4--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Banishment')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blight')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Confusion')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dimension Door')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dominate Beast')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Greater Invisibility')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Ice Storm')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Polymorph')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Stoneskin')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wall of Fire')),


		   --Level 5--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animate Objects')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cloudkill')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cone of Cold')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Creation')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dominate Person')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Monster')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Insect Plague')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Seeming')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Telekinesis')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Teleportation Circle')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wall of Stone')),


		   --Level 6--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Arcane Gate')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Chain Lightning')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Circle of Death')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Disintegrate')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Eyebite')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Globe of Invulnerability')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Suggestion')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Move Earth')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sunbeam')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Seeing')),


		   --Level 7--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Delayed Blast Fireball')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Etherealness')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Finger of Death')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fire Storm')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Plane Shift')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Prismatic Spray')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Reverse Gravity')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Teleport')),


		   --Level 8--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dominate Monster')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Earthquake')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Incendiary Cloud')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Power Word Stun')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sunburst')),


		   --Level 9--
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Gate')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Meteor Swarm')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Power Word Kill')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Time Stop')),
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wish'))

GO