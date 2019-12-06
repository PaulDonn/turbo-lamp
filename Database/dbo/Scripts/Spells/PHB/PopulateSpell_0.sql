--Cantrips

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

('Acid Splash'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,''),--Higher Level Description		   
		   
--B--

('Blade Ward'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'1 round'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description	

--C--

('Chill Touch'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'1 round'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,''),--Higher Level Description

--D--

('Dancing Lights'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'Up to 1 minute'--Duration
		   ,1--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
		   
('Druidcraft'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
--E--

('Eldritch Blast'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,'A beam of crackling energy streaks toward a creature within range. Make a ranged spell attack against the target. On a hit, the target takes 1d10 force damage.'--Description
           ,'The spell creates more than one beam when you reach higher levels: two beams at 5th level, three beams at 11th level, and four beams at 17th level. You can direct the beams at the same target or different ones. Make a seoarate attack roll for each beam.'),--Higher Level Description		   
		   
--F--

('Fire Bolt'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--Requires Concentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,'You hurl a mote of fire at a creature or object within range.  Make a ranged spell attack against the target.  On a hit, the target takes 1d10 fire damage.  A flammable object hit by this spell ignites if it isn''t being worn or carried.'--Description
           ,'This spell''s damage increases by 1d10 when you reach 5th level (2d10), 11th level (3d10), and 17th level (4d10).'),--Higher Level Description
		   
('Friends'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'Up to 1 minute'--Duration
		   ,1--RequiresConcentration
           ,0--Spell Level
           ,0--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
--G--

('Guidance'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Up to 1 minute'--Duration
		   ,1--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description

--L--

('Light'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'1 hour'--Duration
		   ,0--Requires Concentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,0--Requires Somatic
           ,1--Requires Material
           ,'A firefly or phosphorescent moss'--Material Description
		   ,0--Is Ritual
           ,'You touch one object that is no larger than 10 feet in any dimension. Until the spell ends, the object sheds bright light in a 20 foot radius and dim light for an additional 20 feet. The light can be colored as you like. Completely covering the object with something opaque blocks the light. The spell ends if you cast it again or dismiss it as an action.
		   
		   If you target an object held or worn by a hostile creature, that creature must succeed on a Dexterity saving throw to avoid the spell.'--Description
           ,null),--Higher Level Description

--M--

('Mage Hand'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'1 minute'--Duration
		   ,0--Requires Concentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,'A spectral, floating hand appears at a point you choose within range. The hand lasts for the duration or until you dismiss it as an action. The hand vanishes if it is ever more than 30 feet away from you or if you cast this spell again.
		   
		   You can use your action to control the hand. You can use the hand to manipulate an object, open an unlocked door or container, stow or retrieve an item from an open container, or pour the contents out of a vial. You can move the hand up to 30 feet each time you use it.
		   
		   The hand can''t attack, activate magic items, or carry more than 10 pounds.'--Description
           ,null),--Higher Level Description
		   
('Mending'--Name
           ,@Transmutation--Spell School Id
           ,'1 minute'--Casting Time
           ,'Touch'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
		   
('Message'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'1 round'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
		   
('Minor Illusion'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'1 minute'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,0--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description

--P--

('Poison Spray'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'10 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description

('Prestidigitation'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'10 feet'--Range
           ,'1 hour'--Duration
		   ,0--Requires Concentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,'This spell is a minor magical trick that novice spellcasters use for practice. You create one of the following magical effects within range:
		   
		   -You create an instantaneous, harmless sensory effect, such as a shower of sparks, a puff of wind, faint musical notes, or an odd odor.
		   -You instantaneously light or snuff out a candle, a torch, or a small campfire.
		   -You instantaneously clean or soil an object no larger than 1 cubic foot.
		   -You chill, warm, or flavor up to 1 cubic foot of nonliving material for 1 hour.
		   -You make a color, a small mark, or a symbol appear on an object or a surface for 1 hour.
		   -You create a nonmagical trinket or an illusory image that can fit in your hand and that lasts until the end of your next turn.
		   
		   If you cast this spell multiple times, you can have up to three of its non instantaneous effects active at a time, and you can dismiss such an effect as an action.'--Description
           ,null),--Higher Level Description
		   
('Produce Flame'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'10 minutes'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,''),--Higher Level Description

--R--

('Ray of Frost'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,''),--Higher Level Description

('Resistance'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Up to 1 minute'--Duration
		   ,1--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description

--S--

('Sacred Flame'--Name
           ,@Evocation --Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
		   
('Shillelagh'--Name
           ,@Transmutation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Touch'--Range
           ,'1 minute'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
		   
('Shocking Grasp'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description
		   
('Spare the Dying'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description

--T--

('Thaumaturgy'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'1 minute'--Duration
	 	   ,0--Requires Concentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,0--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You manifest a minor wonder, a sign of supernatural power, within range.  You create one of the following magical effects within range:
		   
		   -Your voice booms up to three times as loud as normal for 1 minute.
		   -You cause flames to flicker, brighten, dim, or change color for 1 minute.
		   -You cause harmless tremors in the ground for 1 minute.
		   -You create an instantaneous sound that originates from a point of your choice within range, such as a rumble of thunder, the cry of a raven, or ominous whispers.
		   -You instantaneously cause an unlocked door or window to fly open or slam shut.
		   -You alter the appearance of your eyes for 1 minute.
		   
		   If you cast this spell multiple times, you can have up to three of its 1 minute effects active at a time, and you can dismiss such an effect as an action.'--Description
           ,null),--Higher Level Description
		   
('Thorn Whip'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,1--Requires Material
           ,''--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,''),--Higher Level Description
		   
('True Strike'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Up to 1 round'--Duration
		   ,1--RequiresConcentration
           ,0--Spell Level
           ,0--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,null),--Higher Level Description

--V--

('Vicious Mockery'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
		   ,0--RequiresConcentration
           ,0--Spell Level
           ,1--Requires Verbal
           ,0--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
		   ,0--Is Ritual
           ,''--Description
           ,'')--Higher Level Description

GO