INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Cantrips--
		   (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Guidance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Light')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Resistance')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Sacred Flame')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Spare the Dying')),
	       (2, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Thaumaturgy'))

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