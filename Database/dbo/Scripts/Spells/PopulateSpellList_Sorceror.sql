INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Acid Splash')),
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
	       (6, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Strike'))

GO