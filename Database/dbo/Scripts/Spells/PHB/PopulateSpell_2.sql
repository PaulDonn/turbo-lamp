--Level 2

DECLARE @Abjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Abjuration')
DECLARE @Conjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')
DECLARE @Divination int = (SELECT Id FROM SpellSchool WHERE Name = 'Divination')
DECLARE @Enchantment int = (SELECT Id FROM SpellSchool WHERE Name = 'Enchantment')
DECLARE @Evocation int = (SELECT Id FROM SpellSchool WHERE Name = 'Evocation')
DECLARE @Illusion int = (SELECT Id FROM SpellSchool WHERE Name = 'Illusion')
DECLARE @Necromancy int = (SELECT Id FROM SpellSchool WHERE Name = 'Necromancy')
DECLARE @Transmutation int = (SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')

DECLARE @SpellLevel int = 2

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

('Aid'--Name
           ,@Abjuration--Spell School Id
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
          ,null),--Higher Level Description

('Alter Self'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Animal Messenger'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Arcane Lock'--Name
           ,@Abjuration--Spell School Id
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
          ,null),--Higher Level Description

('Augury'--Name
           ,@Divination--Spell School Id
           ,'1 minute'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--B--
			
('Barkskin'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Beast Sense'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,0--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Blindness/Deafness'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Blur'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Branding Smite'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--C--
('Calm Emotions'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Cloud of Daggers'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Continual Flame'--Name
           ,@Evocation--Spell School Id
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
          ,null),--Higher Level Description

('Cordon of Arrows'--Name
           ,@Transmutation--Spell School Id
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
          ,null),--Higher Level Description

('Crown of Madness'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--D--

			('Darkness'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Up to 10 minutes'--Duration
	 	   ,1--Requires Concentration
           ,@SpellLevel--Spell Level
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
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'8 hours'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'A pinch of dried carrot or an agate'--Material Description
	       ,0--Is Ritual
           ,'You touch a willing creature to grant it the ability to see in the dark.  For the duration, that creature has darkvision out to a range of 60 feet.'--Description
           ,null),--Higher Level Description

('Detect Thoughts'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--E--

('Enhance Ability'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Enlarge/Reduce'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Enthrall'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--F--

('Find Steed'--Name
           ,@Conjuration--Spell School Id
           ,'10 minutes'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Find Traps'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Flame Blade'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Flaming Sphere'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--G--

('Gentle Repose'--Name
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
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Gust of Wind'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--H--

('Heat Metal'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Hold Person'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--I--

			('Invisibility'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Up to 1 hour'--Duration
	 	   ,1--Requires Concentration
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,'An eyelash encased in gum arabic'--Material Description
	       ,0--Is Ritual
           ,'A creature you touch becomes invisible until the spell ends. Anything the target is wearing or carrying is invisible as long as it is on the target''s person. The spell ends for a target that attacks or casts a spell.'--Description
           ,'When you cast this spell using a spell slot of 3rd level or higher, you can target one additional creature for each slot level above 2nd.'),--Higher Level Description

--K--

('Knock'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--L--

('Lesser Restoration'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Levitate'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Locate Animals or Plants'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Locate Object'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--M--

('Magic Mouth'--Name
           ,@Illusion--Spell School Id
           ,'1 minute'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Magic Weapon'--Name
           ,@Transmutation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Melf''s Acid Arrow'--Name
           ,@Evocation--Spell School Id
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
          ,null),--Higher Level Description

('Mirror Image'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Misty Step'--Name
           ,@Conjuration--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,0--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'Briefly surrounded by silvery mist, you teleport up to 30 feet to an unoccupied space that you can see.'--Description
           ,null),--Higher Level Description

('Moonbeam'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--N--

('Nystul''s Magic Aura'--Name
           ,@Illusion--Spell School Id
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
          ,null),--Higher Level Description

--P--

('Pass without Trace'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Phantasmal Force'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Prayer of Healing'--Name
           ,@Evocation--Spell School Id
           ,'10 minutes'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Protection from Poison'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--R--

('Ray of Enfeeblement'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Rope Trick'--Name
           ,@Transmutation--Spell School Id
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
          ,null),--Higher Level Description

--S--

('Scorching Ray'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You create three rays of fire and hurl them at targets within range. You can hurl them at one target or several.
		   
		   Make a ranged spell attack for each ray. On a hit, the target takes 2d6 fire damage.'--Description
           ,'When you cast this spell using a spell slot of 3rd level or higher, you create one additional ray for each slot level above 2nd.'),--Higher Level Description

('See Invisibility'--Name
           ,@Divination--Spell School Id
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
          ,null),--Higher Level Description

('Shatter'--Name
           ,@Evocation--Spell School Id
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
          ,null),--Higher Level Description

('Silence'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Spider Climb'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Spike Growth'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Spiritual Weapon'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Suggestion'--Name
           ,@Enchantment--Spell School Id
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
          ,null),--Higher Level Description

--W--

('Warding Bond'--Name
           ,@Abjuration--Spell School Id
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
          ,null),--Higher Level Description

('Web'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--Z--

('Zone of Truth'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null)--Higher Level Description

GO