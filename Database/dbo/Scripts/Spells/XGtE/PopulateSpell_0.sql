--Cantrips

DECLARE @Abjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Abjuration')
DECLARE @Conjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')
DECLARE @Divination int = (SELECT Id FROM SpellSchool WHERE Name = 'Divination')
DECLARE @Enchantment int = (SELECT Id FROM SpellSchool WHERE Name = 'Enchantment')
DECLARE @Evocation int = (SELECT Id FROM SpellSchool WHERE Name = 'Evocation')
DECLARE @Illusion int = (SELECT Id FROM SpellSchool WHERE Name = 'Illusion')
DECLARE @Necromancy int = (SELECT Id FROM SpellSchool WHERE Name = 'Necromancy')
DECLARE @Transmutation int = (SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')

DECLARE @Source int = (SELECT Id FROM Source WHERE [Code] = 'XGtE')

INSERT INTO [dbo].[Spell]
           ([Name]
           ,[SpellSchoolId]
           ,[CastingTime]
           ,[Range]
           ,[Duration]
		   ,[RequiresConcentration]
           ,[SpellLevel]
           ,[RequiresVerbal]
           ,[RequiresSomatic]
           ,[RequiresMaterial]
           ,[MaterialDescription]
		   ,[IsRitual]
           ,[Description]
           ,[HigherLevelDescription]
		   ,[SourceId])
     VALUES

--C--

('Control Flames'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,0--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source

('Create Bonfire'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,9--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source
		 
--F--

('Frostbite'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source
		 
--G--

('Gust'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source
		 
--I--

('Infestation'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source
		 
--M--

('Magic Stone'--Name
           ,@Transmutation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source

('Mold Earth'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,0--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source
		 
--P--

('Primal Savagery'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,0--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source
		 
--T--

('Thunderclap'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,0--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source

('Toll the Dead'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source),--Source
		 
--W--

('Word of Radiance'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,9--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
         ,''--Higher Level Description		
         ,@Source)--Source

GO