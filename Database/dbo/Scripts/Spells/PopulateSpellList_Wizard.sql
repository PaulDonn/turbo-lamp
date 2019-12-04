INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Acid Splash')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blade Ward')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Chill Touch')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dancing Lights')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Fire Bolt')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Friends')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Light')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mage Hand')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Message')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Minor Illusion')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Poison Spray')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Shocking Grasp')),
	       (8, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Strike'))

GO