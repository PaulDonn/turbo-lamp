﻿--Level 8

DECLARE @Abjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Abjuration')
DECLARE @Conjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')
DECLARE @Divination int = (SELECT Id FROM SpellSchool WHERE Name = 'Divination')
DECLARE @Enchantment int = (SELECT Id FROM SpellSchool WHERE Name = 'Enchantment')
DECLARE @Evocation int = (SELECT Id FROM SpellSchool WHERE Name = 'Evocation')
DECLARE @Illusion int = (SELECT Id FROM SpellSchool WHERE Name = 'Illusion')
DECLARE @Necromancy int = (SELECT Id FROM SpellSchool WHERE Name = 'Necromancy')
DECLARE @Transmutation int = (SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')

DECLARE @Source int = (SELECT Id FROM Source WHERE [Code] = 'XGtE')
DECLARE @SpellLevel int = 8

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

('Abi-Dalzim''s Horrid Wilting'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null--Higher Level Description		
         ,@Source),--Source

('Illusory Dragon'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,0--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null--Higher Level Description		
         ,@Source),--Source

('Maddening Darkness'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null--Higher Level Description		
         ,@Source),--Source

('Mighty Fortress'--Name
           ,@Conjuration--Spell School Id
           ,'1 minute'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null--Higher Level Description		
         ,@Source)--Source

GO