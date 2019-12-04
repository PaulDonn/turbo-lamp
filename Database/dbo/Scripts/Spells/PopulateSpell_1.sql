--Level 1

DECLARE @Abjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Abjuration')
DECLARE @Conjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')
DECLARE @Divination int = (SELECT Id FROM SpellSchool WHERE Name = 'Divination')
DECLARE @Enchantment int = (SELECT Id FROM SpellSchool WHERE Name = 'Enchantment')
DECLARE @Evocation int = (SELECT Id FROM SpellSchool WHERE Name = 'Evocation')
DECLARE @Illusion int = (SELECT Id FROM SpellSchool WHERE Name = 'Illusion')
DECLARE @Necromancy int = (SELECT Id FROM SpellSchool WHERE Name = 'Necromancy')
DECLARE @Transmutation int = (SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')

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

--A--


--B--

			('Burning Hands'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'Self (15 foot cone)'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,1--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'As you hold your hands with thumbs touching and fingers spread, a thin sheet of flames shoots forth from your outstretched fingertips. Each creature in a 15 foot cone must make a Dexterity saving throw. A creature takes 3d6 fire damage on a failed save, or half as much damage on a successful one.
		   
		   The fire ignites any flammable objects in the area that aren''t being worn or carried.'--Description
           ,'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'),--Higher Level Description

--C--

			('Charm Person'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'1 hour'--Duration
	 	   ,0--Requires Concentration
           ,1--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You attempt to charm a humanoid you can see within range. It must make a Wisdom saving throw, and does so with advantage if you or your companions are fighting it. If it fails the saving throw, it is charmed by you until the spell ends or until you or your companions do anything harmful to it. The charmed creature regards you as a friendly acquaintance. When the spell ends, the creature knows it was charmed by you.'--Description
           ,' When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.'),--Higher Level Description

--D--


--E--


--F--

			('Find Familiar'--Name
           ,@Conjuration--Spell School Id
           ,'1 hour'--Casting Time
           ,'10 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,1--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'10gp worth of charcoal, insense, and herbs that must be consumed by fire in a brass brazier'--Material Description
	       ,1--Is Ritual
           ,'You gain the service of a familiar, a spirit that takes an animal form you choose: bat, cat, crab, frog (toad), hawk, lizard, octopus, owl, poisonous snake, fish (quipper), rat, raven, sea horse, spider, or weasel.  Appearing in an unoccupied space within range, the familiar has the statistics of the chosen form, though it is a celestial, fey, or fiend (your choice) instead of a beast.
		   
		   Your familiar acts independently of you, but it always obeys your commands.  In combat, it rolls its own initiative and acts on its own turn.  A familiar can''t attack, but it can take other actions as normal.
		   
		   When the familiar drops to 0 hit points, it disappears, leaving behind no physical form.  It reappears after you cast this spell again.
		   
		   While your familiar is within 100 feet of you, you can communicate with it telepathically.  Additionally, as an action, you can see through your familiar''s eyes and hear what it hears until the start of your next turn, gaining the benefits of any special senses that the familiar has.  During this time, you are deaf and blind with regard to your own senses.
		   
		   As an action, you can temporarily dismiss your familiar.  It disappears into a pocket dimension where it awaits your summons.  Alternatively, you can dismiss it forever.  As an action while it is temporarily dismissed, you can cause it to reappear in any unoccupied space within 30 feet of you.
		   
		   You can''t have more than one familiar at a time.  If you cast this spell while you already have a familiar, you instead cause it to adopt a new form.  Choose one of the forms from the above list.  Your familiar transforms into the chosen creature.
		   
		   Finally, when you cast a spell with a range of touch, your familiar can deliver the spell as if it had cast the spell.  Your familiar must be within 100 feet of you, and it must use its reaction to deliver the spell when you cast it.  If the spell requires an attack roll, you use your attack modifier for the roll.'--Description
           ,null),--Higher Level Description

--G--


--H--

			('Hellish Rebuke'--Name
           ,@Evocation--Spell School Id
           ,'1 reaction'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,1--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You point your finger, and the creature that damaged you is momentarily surrounded by hellish flames.  The creature must make a Dexterity saving throw.  It takes 2d10 fire damage on a failed save, or half as much damage on a successful one.'--Description
           ,'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st.'),--Higher Level Description

--I--


--J--


--K--


--L--


--M--

			('Mage Armor'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'8 hours'--Duration
	 	   ,0--Requires Concentration
           ,1--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A piece of cured leather'--Material Description
	       ,0--Is Ritual
           ,'You touch a willing creature who isn''t wearing armor, and a protective magical force surrounds it until the spell ends. The target''s base AC becomes 13 + its Dexterity modifier. The spell ends if the target dons armor or if you dismiss the spell as an action.'--Description
           ,null),--Higher Level Description

			('Magic Missile'--Name
           ,(SELECT Id FROM SpellSchool WHERE Name = 'Evocation')--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,1--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You create three glowing darts of magical force. Each dart hits a creature of your choice that you can see within range. A dart deals 1d4 + 1 force damage to its target. The darts all strike simultaneously, and you can direct them to hit one creature or several.'--Description
           ,'When you cast this spell using a spell slot of 2nd level or higher, the spell creates one more dart for each slot level above 1st.'),--Higher Level Description

--N--


--O--


--P--


--Q--


--R--


--S--


--T--

			('Thunderwave'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'Self (15 foot cube)'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,1--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'A wave of thunderous force sweeps out from you. Each creature in a 15 foot cube originating from you must make a Constitution saving throw. On a failed save, a creature takes 2d8 thunder damage and is pushed 10 feet away from you. On a successful save, the creature takes half as much damage and isn''t pushed.
		   
		   In addition, unsecured objects that are completely within the area of effect are automatically pushed 10 feet away from you by the spell''s effect, and the spell emits a thunderous boom audible out to 300 feet.'--Description
           ,'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.')--Higher Level Description

--U--


--V--


--W--


--X--


--Y--


--Z--


GO