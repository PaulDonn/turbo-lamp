INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Guidance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Light')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Resistance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sacred Flame')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spare the Dying')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thaumaturgy'))

GO