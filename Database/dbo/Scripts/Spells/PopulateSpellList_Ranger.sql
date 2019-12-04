INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES (5, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = '')),

GO