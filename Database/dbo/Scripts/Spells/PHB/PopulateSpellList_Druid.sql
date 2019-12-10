INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Cantrips--
		   (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Druidcraft')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Guidance')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Poison Spray')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Produce Flame')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Resistance')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shillelagh')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thorn Whip')),

		   --Level 1--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animal Friendship')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Charm Person')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Create or Destroy Water')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cure Wounds')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Magic')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Poison and Disease')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Entangle')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Faerie Fire')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fog Cloud')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Goodberry')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Healing Word')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Jump')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Longstrider')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Purify Food and Drink')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Speak with Animals')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thunderwave')),


		   --Level 2--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animal Messenger')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Barkskin')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Beast Sense')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Darkvision')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Enhance Ability')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Find Traps')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Flame Blade')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Flaming Sphere')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Gust of Wind')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heat Metal')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hold Person')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Lesser Restoration')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Animals or Plants')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Object')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Moonbeam')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Pass Without Trace')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Poison')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spike Growth')),


		   --Level 3--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Call Lightning')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Animals')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Daylight')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Magic')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feign Death')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Meld into Stone')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Plant Growth')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Energy')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sleet Storm')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Speak with Plants')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Water Breathing')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Water Walk')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wind Wall')),


		   --Level 4--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blight')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Confusion')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Minor Elementals')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Woodland Beings')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Control Water')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dominate Beast')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Freedom of Movement')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Giant Insect')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Grasping Vine')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Hallucinatory Terrain')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Ice Storm')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Creature')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Polymorph')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Stone Shape')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Stoneskin')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wall of Fire')),


		   --Level 5--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Antilife Shell')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Awaken')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Commune with Nature')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Elemental')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Contagion')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Geas')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Greater Restoration')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Insect Plague')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mass Cure Wounds')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Planar Binding')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Reincarnate')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Scrying')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tree Stride')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wall of Stone')),


		   --Level 6--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Conjure Fey')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Find the Path')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heal')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heroes'' Feast')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Move Earth')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sunbeam')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Transport via Plants')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wall of Thorns')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wind Walk')),


		   --Level 7--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fire Storm')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mirage Arcane')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Plane Shift')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Regenerate')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Reverse Gravity')),


		   --Level 8--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Animal Shapes')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Antipathy/Sympathy')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Control Weather')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Earthquake')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Feeblemind')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sunburst')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Tsunami')),


		   --Level 9--
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Foresight')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shapechange')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Storm of Vengeance')),
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Resurrection'))

GO