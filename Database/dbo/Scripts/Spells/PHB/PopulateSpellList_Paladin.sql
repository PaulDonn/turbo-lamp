INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Level 1--
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Bless')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Command')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Compelled Duel')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Cure Wounds')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Evil and Good')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Magic')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Detect Poison and Disease')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Divine Favor')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Heroism')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Evil and Good')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Purify Food and Drink')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Searing Smite')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shield of Faith')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thunderous Smite')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Wrathful Smite')),


		   --Level 2--
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Aid')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Branding Smite')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Find Steed')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Lesser Restoration')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Object')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Magic Weapon')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Protection from Poison')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Zone of Truth')),


		   --Level 3--')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Aura of Vitality')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blinding Smite')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Create Food and Water')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Crusader''s Mantle')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Daylight')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Magic')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Elemental Weapon')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Magic Circle')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Remove Curse')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Revivify')),


		   --Level 4--
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Aura of Life')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Aura of Purity')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Banishment')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Death Ward')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Locate Creature')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Staggering Smite')),


		   --Level 5--
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Banishing Smite')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Circle of Power')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Destructive Wave')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dispel Evil and Good')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Geas')),
	       (4, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Raise Dead'))

GO