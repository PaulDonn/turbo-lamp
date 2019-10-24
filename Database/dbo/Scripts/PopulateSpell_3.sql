--Level 3
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

			('Counterspell'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Abjuration')--Spell School Id
           ,'1 reaction'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,3--Spell Level
           ,0--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You attempt to interrupt a creature in the process of casting a spell. If the creature is casting a spell of 3rd level or lower, its spell fails and has no effect.  If it is casting a spell of 4th level or higher, make an ability check using your spellcasting ability.  The DC equals 10 + the spell''s level.  On a success, the creature''s spell fails and has no effect.'--Description
           ,'When you cast this spell using a spell slot of 4th level or higher, the interrupted spell has no effect if its level is less than or equal to the level of the spell slot you used.'),--Higher Level Description

--D--


--E--


--F--

			('Fireball'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Evocation')--Spell School Id
           ,'1 action'--Casting Time
           ,'150 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,3--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A tiny ball of bat guano and sulfur'--Material Description
	       ,0--Is Ritual
           ,'A bright streak flashes from your pointing finger to a point you choose within range and then blossoms with a low roar into an explosion of flame. Each creature in a 20 foot radius sphere centered on that point must make a Dexterity saving throw. A target takes 8d6 fire damage on a failed save, or half as much damage on a successful one.
		   
		   The fire spreads around corners. It ignites flammable objects in the area that aren''t being worn or carried.'--Description
           ,'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.'),--Higher Level Description

		    ('Fly'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Up to 10 minutes'--Duration
	 	   ,1--Requires Concentration
           ,3--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A wing from any bird'--Material Description
	       ,0--Is Ritual
           ,'You touch a willing creature. The target gains a flying speed of 60 feet for the duration. When the spell ends, the target falls if it is still aloft, unless it can stop the fall.'--Description
           ,'When you cast this spell using a spell slot of 4th level or higher, you can target one additional creature for each slot level above 3rd.'),--Higher Level Description

--G--


--H--

			('Haste'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Up to 1 minute'--Duration
	 	   ,1--Requires Concentration
           ,3--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A shaving of licorice root'--Material Description
	       ,0--Is Ritual
           ,'Choose a willing creature that you can see within range. Until the spell ends, the target''s speed is doubled, it gains a +2 bonus to AC, it has advantage on Dexterity saving throws, and it gains an additional action on each of its turns. That action can be used only to take the Attack (one weapon attack only), Dash, Disengage, Hide, or Use an Object action.
		   
		   When the spell ends, the target can''t move or take actions until after its next turn, as a wave of lethargy sweeps over it.'--Description
           ,null),--Higher Level Description

--I--


--J--


--K--


--L--


--M--


--N--


--O--


--P--


--Q--


--R--


--S--


--T--


--U--


--V--

			('Vampiric Touch'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Necromancy')--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'Up to 1 minute'--Duration
	 	   ,1--Requires Concentration
           ,3--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'The touch of your shadow wreathed hand can siphon life force from others to heal your wounds. Make a melee spell attack against a creature within your reach. On a hit, the target takes 3d6 necrotic damage, and you regain hit points equal to half the amount of necrotic damage dealt.  Until the spell ends, you can make the attack again on each of your turns as an action.'--Description
           ,'When you cast this spell using a spell slot of 4th level or higher, the damage increases by 1d6 for each slot level above 3rd.')--Higher Level Description

--W--


--X--


--Y--


--Z--


GO