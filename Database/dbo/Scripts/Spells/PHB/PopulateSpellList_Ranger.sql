INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Level 1--
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Alarm')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animal Friendship')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cure Wounds')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Magic')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Poison and Disease')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Ensnaring Strike')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fog Cloud')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Goodberry')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hail of Thorns')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hunter''s Mark')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Jump')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Longstrider')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Speak with Animals')),


		   --Level 2--
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animal Messenger')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Barkskin')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Beast Sense')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cordon of Arrows')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Darkvision')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Find Traps')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Lesser Restoration')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Animals or Plants')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Object')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Pass Without Trace')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Poison')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Silence')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spike Growth')),


		   --Level 3--
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Animals')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Barrage')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Daylight')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Lightning Arrow')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Nondetection')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Plant Growth')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Energy')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Speak with Plants')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Water Breathing')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Water Walk')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wind Wall')),


		   --Level 4--
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Woodland Beings')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Freedom of Movement')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Grasping Vine')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Creature')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Stoneskin')),


		   --Level 5--
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Commune with Nature')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Volley')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Swift Quiver')),
	       (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tree Stride'))

GO