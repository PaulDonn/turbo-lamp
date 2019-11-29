--Level 2
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
           ,[HigherLevelDescription])
     VALUES

			--(''--Name
   --        ,(SELECT Id FROM SpellSchool WHERE Name = '')--Spell School Id
   --        ,''--Casting Time
   --        ,''--Range
   --        ,''--Duration
	 	--   ,0--Requires Concentration
   --        ,--Spell Level
   --        ,0--Requires Verbal
   --        ,0--Requires Somatic
   --        ,0--Requires Material
   --        ,null--Material Description
	  --     ,0--Is Ritual
   --        ,''--Description
   --        ,null),--Higher Level Description

--A--


--B--
			

--C--


--D--

			('Darkness'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Evocation')--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Up to 10 minutes'--Duration
	 	   ,1--Requires Concentration
           ,2--Spell Level
           ,1--Requires Verbal
           ,0--Requires Somatic
           ,1--Requires Material
           ,'Bat fur and a drop of pitch or piece of coal'--Material Description
	       ,0--Is Ritual
           ,'Magical darkness spreads from a point you choose within range to fill a 15 foot radius sphere for the duration. The darkness spreads around corners. A creature with darkvision can''t see through this darkness, and nonmagical light can''t illuminate it.
		   
		   If the point you choose is on an object you are holding or one that isn''t being worn or carried, the darkness emanates from the object and moves with it. Completely covering the source of the darkness with an opaque object, such as a bowl or a helm, blocks the darkness.
		   
		   If any of this spell''s area overlaps with an area of light created by a spell of 2nd level or lower, the spell that created the light is dispelled.'--Description
           ,null),--Higher Level Description

		   	('Darkvision'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'8 hours'--Duration
	 	   ,0--Requires Concentration
           ,2--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A pinch of dried carrot or an agate'--Material Description
	       ,0--Is Ritual
           ,'You touch a willing creature to grant it the ability to see in the dark.  For the duration, that creature has darkvision out to a range of 60 feet.'--Description
           ,null),--Higher Level Description

--E--


--F--


--G--


--H--


--I--

			('Invisibility'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Illusion')--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Up to 1 hour'--Duration
	 	   ,1--Requires Concentration
           ,2--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'An eyelash encased in gum arabic'--Material Description
	       ,0--Is Ritual
           ,'A creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target''s person. The spell ends for a target that attacks or casts a spell.'--Description
           ,'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.'),--Higher Level Description

--J--


--K--


--L--


--M--

			('Misty Step'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,2--Spell Level
           ,1--Requires Verbal
           ,0--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'Briefly surrounded by silvery mist, you teleport up to 30 feet to an unoccupied space that you can see.'--Description
           ,null),--Higher Level Description

--N--


--O--


--P--


--Q--


--R--


--S--

			('Scorching Ray'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Evocation')--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,2--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You create three rays of fire and hurl them at targets within range. You can hurl them at one target or several.
		   
		   Make a ranged spell attack for each ray. On a hit, the target takes 2d6 fire damage.'--Description
           ,'When you cast this spell using a spell slot of 3rd level or higher, you create one additional ray for each slot level above 2nd.')--Higher Level Description

--T--


--U--


--V--


--W--


--X--


--Y--


--Z--


GO