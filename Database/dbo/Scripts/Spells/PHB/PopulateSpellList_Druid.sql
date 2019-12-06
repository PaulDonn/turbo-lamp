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
	       (3, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thorn Whip'))

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