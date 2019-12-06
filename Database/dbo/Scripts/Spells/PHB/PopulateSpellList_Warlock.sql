INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES
		   --Cantrips--
		   (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blade Ward')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Chill Touch')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Eldritch Blast')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Friends')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mage Hand')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Minor Illusion')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Poison Spray')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Prestidigitation')),
	       (7, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Strike'))

		   --Level 1--


		   --Level 2--


		   --Level 3--


		   --Level 4--


		   --Level 5--


		   --Level 6--


		   --Level 7--


		   --Level 8--


		   --Level 9--
GO