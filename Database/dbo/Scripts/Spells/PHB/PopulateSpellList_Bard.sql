INSERT INTO [dbo].[SpellListSpell] (SpellListId, SpellId)
	VALUES 
		   --Cantrips--
		   (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Blade Ward')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Dancing Lights')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Friends')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Light')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mage Hand')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Mending')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Message')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Minor Illusion')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Prestidigitation')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'True Strike')),
	       (1, (SELECT TOP(1) [Id] FROM [dbo].[Spell] WHERE [Name] = 'Vicious Mockery'))

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