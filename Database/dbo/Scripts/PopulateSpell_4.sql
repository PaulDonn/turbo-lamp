--Level 4
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

			('Dimension Door'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')--Spell School Id
           ,'1 action'--Casting Time
           ,'500 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,4--Spell Level
           ,1--Requires Verbal
           ,0--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You teleport yourself from your current location to any other spot within range. You arrive at exactly the spot desired. It can be a place you can see, one you can visualize, or one you can describe by stating distance and direction, such as "200 feet straight downward" or "upward to the northwest at a 45 degree angle, 300 feet."
		   
		   You can bring along objects as long as their weight doesn''t exceed what you can carry. You can also bring one willing creature of your size or smaller who is carrying gear up to its carrying capacity. The creature must be within 5 feet of you when you cast this spell.
		   
		   If you would arrive in a place already occupied by an object or a creature, you and any creature traveling with you each take 4d6 force damage, and the spell fails to teleport you.'--Description
           ,null),--Higher Level Description

--E--

			('Evard''s Black Tentacles'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')--Spell School Id
           ,'1 action'--Casting Time
           ,'90 feet'--Range
           ,'Up to 1 minute'--Duration
	 	   ,1--Requires Concentration
           ,4--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A piece of tentacle from a giant octopus or a giant squid'--Material Description
	       ,0--Is Ritual
           ,'Squirming, ebony tentacles fill a 20 foot square on ground that you can see within range. For the duration, these tentacles turn the ground in the area into difficult terrain.
		   
		   When a creature enters the affected area for the first time on a turn or starts its turn there, the creature must succeed on a Dexterity saving throw or take 3d6 bludgeoning damage and be restrained by the tentacles until the spell ends. A creature that starts its turn in the area and is already restrained by the tentacles takes 3d6 bludgeoning damage.
		   
		   A creature restrained by the tentacles can use its action to make a Strength or Dexterity check (its choice) against your spell save DC. On a success, it frees itself.'--Description
           ,null),--Higher Level Description

--F--


--G--


--H--


--I--


--J--


--K--


--L--


--M--


--N--


--O--


--P--

			('Polymorph'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Up to 1 hour'--Duration
	 	   ,1--Requires Concentration
           ,4--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A caterpillar cocoon'--Material Description
	       ,0--Is Ritual
           ,'This spell transforms a creature that you can see within range into a new form. An unwilling creature must make a Wisdom saving throw to avoid the effect. The spell has no effect on a shapechanger or a creature with 0 hit points.
		   
		   The transformation lasts for the duration, or until the target drops to 0 hit points or dies. The new form can be any beast whose challenge rating is equal to or less than the target''s (or the target''s level, if it doesn''t have a challenge rating). The target''s game statistics, including mental ability scores, are replaced by the statistics of the chosen beast. It retains its alignment and personality.
		   
		   The target assumes the hit points of its new form. When it reverts to its normal form, the creature returns to the number of hit points it had before it transformed. If it reverts as a result of dropping to 0 hit points, any excess damage carries over to its normal form. As long as the excess damage doesn''t reduce the creature''s normal form to 0 hit points, it isn''t knocked unconscious.
		   
		   The creature is limited in the actions it can perform by the nature of its new form, and it can''t speak, cast spells, or take any other action that requires hands or speech.
		   
		   The target''s gear melds into the new form. The creature can''t activate, use, wield, or otherwise benefit from any of its equipment.'--Description
           ,null)--Higher Level Description

--Q--


--R--


--S--


--T--


--U--


--V--


--W--


--X--


--Y--


--Z--


GO