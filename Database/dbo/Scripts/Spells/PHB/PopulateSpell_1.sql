--Level 1

DECLARE @Abjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Abjuration')
DECLARE @Conjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')
DECLARE @Divination int = (SELECT Id FROM SpellSchool WHERE Name = 'Divination')
DECLARE @Enchantment int = (SELECT Id FROM SpellSchool WHERE Name = 'Enchantment')
DECLARE @Evocation int = (SELECT Id FROM SpellSchool WHERE Name = 'Evocation')
DECLARE @Illusion int = (SELECT Id FROM SpellSchool WHERE Name = 'Illusion')
DECLARE @Necromancy int = (SELECT Id FROM SpellSchool WHERE Name = 'Necromancy')
DECLARE @Transmutation int = (SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')

DECLARE @SpellLevel int = 1

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

('Alarm'--Name
           ,@Abjuration--Spell School Id
           ,'1 minute'--Casting Time
           ,'30 feet'--Range
           ,'8 hours'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,'You set an alarm against unwanted intrusion. Choose a door, a window, or an area within range that is no larger than a 20 foot cube. Until the spell ends, an alarm alerts you whenever a Tiny or larger creature touches or enters the warded area. When you cast the spell, you can designate creatures that won''t set off the alarm. You also choose whether the alarm is mental or audible.
		  
		  A mental alarm alerts you with a ping in your mind if you are within 1 mile of the warded area. This ping awakens you if you are sleeping.
		  
		  An audible alarm produces the sound of a hand bell for 10 seconds within 60 feet.'--Description
          ,null),--Higher Level Description	

('Animal Friendship'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'24 hours'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'This spell lets you convince a beast that you mean it no harm.  Choose a beast that you can see within range.  It must see and hear you.  If the beast''s Intelligence is 4 or higher, the spell fails.  Otherwise, the beast must succeed on a Wisdom saving throw or be charmed by you for the spell''s duration.  If you or one of your companions harms the target, the spells ends.'--Description
          ,'If you cast this spell using a spell slot of 2nd level or higher, you can affect one additional beast t level above 1st.'),--Higher Level Description

('Armor of Agathys'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'1 hour'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Arms of Hadar'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--B--
('Bane'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'Up to three creatures of your choice that you can see within range must make Charisma saving throws. Whenever a target that fails this saving throw makes an attack roll or a saving throw before the spell ends, the target must roll a d4 and subtract the number rolled from the attack roll or saving throw.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),--Higher Level Description	

('Bless'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'You bless up to three creatures of your choice within range. Whenever a target makes an attack roll or a saving throw before the spell ends, the target can roll a d4 and add the number rolled to the attack roll or saving throw.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),--Higher Level Description	

('Burning Hands'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'Self (15 foot cone)'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
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
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You attempt to charm a humanoid you can see within range. It must make a Wisdom saving throw, and does so with advantage if you or your companions are fighting it. If it fails the saving throw, it is charmed by you until the spell ends or until you or your companions do anything harmful to it. The charmed creature regards you as a friendly acquaintance. When the spell ends, the creature knows it was charmed by you.'--Description
           ,' When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.'),--Higher Level Description

('Chromatic Orb'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'90 feet'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description	

('Color Spray'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'1 round'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'A dazzling array of flashing, colored light springs from your hand. Roll 6d10; the total is how many hit points of creatures this spell can effect. Creatures in a 15 foot cone originating from you are affected in ascending order of their current hit points (ignoring unconscious creatures and creatures that can''t see).
		  
		  Starting with the creature that has the lowest current hit points, each creature affected by this spell is blinded until the end of your next turn. Subtract each creature''s hit points from the total before moving on to the creature with the next lowest hit points. A creature''s hit points must be equal to or less than the remaining total for that creature to be affected.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d10 for each slot level above 1st.'),--Higher Level Description	

('Command'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'1 round'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'You speak a one word command to a creature you can see within range. The target must succeed on a Wisdom saving throw or follow the command on its next turn. The spell has no effect if the target is undead, if it doesn''t understand your language, or if your command is directly harmful to it.
		  
		  Some typical commands and their effects follow. You might issue a command other than one described here. If you do so, the GM determines how the target behaves. If the target can''t follow your command, the spell ends.
		  
		  Approach. The target moves toward you by the shortest and most direct route, ending its turn if it moves within 5 feet of you.
		  Drop. The target drops whatever it is holding and then ends its turn.
		  Grovel. The target falls prone and then ends its turn.
		  Halt. The target doesn''t move and takes no actions.  A flying creature stays aloft, provided that it is able to do so. If it must move to stay aloft, it flies the minimum distance needed to remain in the air.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, you can affect one additional creature for each slot level above 1st. The creatures must be within 30 feet of each other when you target them.'),--Higher Level Description	

('Compelled Duel'--Name
           ,@Enchantment--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'30 feet'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description	

('Comprehend Languages'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'1 hour'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,'For the duration, you understand the literal meaning of any spoken language that you hear. You also understand any written language that you see, but you must be touching the surface on which the words are written. It takes about 1 minute to read one page of text.
		  
		  This spell doesn''t decode secret messages in a text or a glyph, such as an arcane sigil, that isn''t part of a written language.'--Description
          ,null),--Higher Level Description	

('Create or Destroy Water'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'You either create or destroy water.
		  
		  Create Water. You create up to 10 gallons of clean water within range in an open container. Alternatively, the water falls as rain in a 30 foot cube within range, extinguishing exposed flames in the area.
		  Destroy Water. You destroy up to 10 gallons of water in an open container within range. Alternatively, you destroy fog in a 30 foot cube within range.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, you create or destroy 10 additional gallons of water, or the size of the cube increases by 5 feet, for each slot level above 1st.'),--Higher Level Description	

('Cure Wounds'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'A creature you touch regains a number of hit points equal to 1d8 + your spellcasting ability modifier. This spell has no effect on undead or constructs.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d8 for each slot level above 1st.'),--Higher Level Description	

--D--

('Detect Evil and Good'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'Up to 10 minutes'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'For the duration, you know if there is an aberration, celestial, elemental, fey, fiend, or undead within 30 feet of you, as well as where the creature is located. Similarly, you know if there is a place or object within 30 feet of you that has been magically consecrated or desecrated.
		  
		  The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'--Description
          ,null),--Higher Level Description	

('Detect Magic'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'Up to 10 minutes'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,1--Is Ritual
          ,'For the duration, you sense the presence of magic within 30 feet of you.  If you sense magic in this way, you can use your action to see a faint aura around any visible creature or object in the area that bears magic, and you learn its school of magic, if any.
		  
		  The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'--Description
          ,null),--Higher Level Description	

('Detect Poison and Disease'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'Up to 10 minutes'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,'For the duration, you can sense the presence and location of poisons, poisonous creatures, and diseases within 30 feet of you. You also identify the kind of poison, poisonous creature, or disease in each case.
		  
		  The spell can penetrate most barriers, but it is blocked by 1 foot of stone, 1 inch of common metal, a thin sheet of lead, or 3 feet of wood or dirt.'--Description
          ,null),--Higher Level Description	

('Disguise Self'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'1 hour'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'You make yourself -- including your clothing, armor, weapons, and other belongings on your person -- look different until the spell ends or until you use your action to dismiss it. You can seem 1 foot shorter or taller and can appear thin, fat, or in between. You can''t change your body type, so you must adopt a form that has the same basic arrangement of limbs. Otherwise, the extent of the illusion is up to you.
		  
		  The changes wrought by this spell fail to hold up to physical inspection. For example, if you use this spell to add a hat to your outfit, objects pass through the hat, and anyone who touches it would feel nothing or would feel your head and hair. If you use this spell to appear thinner than you are, the hand of someone who reaches out to touch you would bump into you while it was seemingly still in midair.
		  
		  To discern that you are disguised, a creature can use its action to inspect your appearance and must succeed on an Intelligence (Investigation) check against your spell save DC.'--Description
          ,null),--Higher Level Description	

('Dissonant Whispers'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description	

('Divine Favor'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'Your prayer empowers you with divine radiance. Until the spell ends, your weapon attacks deal an extra 1d4 radiant damage on a hit.'--Description
          ,null),--Higher Level Description	

--E--

('Ensnaring Strike'--Name
           ,@Conjuration--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description	

('Entangle'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'90 feet'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'Grasping weeds and vines sprout from the ground in a 20 foot square starting from a point within range. For the duration, these plants turn the ground in the area into difficult terrain.
		  
		  A creature in the area when you cast the spell must succeed on a Strength saving throw or be restrained by the entangling plants until the spell ends. A creature restrained by the plants can use its action to make a Strength check against your spell save DC. On a success, it frees itself.
		  
		  When the spell ends, the conjured plants wilt away.'--Description
          ,null),--Higher Level Description	

('Expeditious Retreat'--Name
           ,@Transmutation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Up to 10 minutes'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'This spell allows you to move at an incredible pace. When you cast this spell, and then as a bonus action on each of your turns until the spell ends, you can take the Dash action.'--Description
          ,null),--Higher Level Description	

--F--

('Faerie Fire'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'Each object in a 20 foot cube within range is outlined in blue, green, or violet light (your choice). Any creature in the area when the spell is cast is also outlined in light if it fails a Dexterity saving throw. For the duration, objects and affected creatures shed dim light in a 10 foot radius.
		  
		  Any attack roll against an affected creature or object has advantage if the attacker can see it, and the affected creature or object can''t benefit from being invisible.'--Description
          ,null),--Higher Level Description

('False Life'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'1 hour'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'Bolstering yourself with a necromantic facsimile of life, you gain 1d4 + 4 temporary hit points for the duration.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, you gain 5 additional temporary hit points for each slot level above 1st.'),--Higher Level Description

('Feather Fall'--Name
           ,@Transmutation--Spell School Id
           ,'1 reaction'--Casting Time
           ,'60 feet'--Range
           ,'1 minute'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'Choose up to five falling creatures within range. A falling creature''s rate of descent slows to 60 feet per round until the spell ends. If the creature lands before the spell ends, it takes no falling damage and can land on its feet, and the spell ends for that creature.'--Description
          ,null),--Higher Level Description

('Find Familiar'--Name
           ,@Conjuration--Spell School Id
           ,'1 hour'--Casting Time
           ,'10 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
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
		   
('Fog Cloud'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'Up to 1 hour'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'You create a 20 foot radius sphere of fog centered on a point within range. The sphere spreads around corners, and its area is heavily obscured. It lasts for the duration or until a wind of moderate or greater speed (at least 10 miles per hour) disperses it.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, the radius of the fog increases by 20 feet for each slot level above 1st.'),--Higher Level Description

--G--

('Goodberry'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'Up to ten berries appear in your hand and are infused with magic for the duration.  A creature can use its action to eat one berry.  Eating a berry restores 1 hit point, and the berry provides enough nourishment to sustain a creature for one day.
		  
		  The berries lose their potency if they have not been consumed within 24 hours of the casting of this spell.'--Description
          ,null),--Higher Level Description

('Grease'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'1 minute'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'Slick grease covers the ground in a 10 foot square centered on a point within range and turns it into difficult terrain for the duration.
		  
		  When the grease appears, each creature standing in its area must succeed on a Dexterity saving throw or fall prone. A creature that enters the area or ends its turn there must also succeed on a Dexterity saving throw or fall prone.'--Description
          ,null),--Higher Level Description

('Guiding Bolt'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'120 feet'--Range
           ,'1 round'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'A flash of light streaks toward a creature of your choice within range. Make a ranged spell attack against the target. On a hit, the target takes 4d6 radiant damage, and the next attack roll made against this target before the end of your next turn has advantage, thanks to the mystical dim light glittering on the target until then.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d6 for each slot level above 1st.'),--Higher Level Description

--H--

('Hail of Thorns'--Name
           ,@Conjuration--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Healing Word'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'A creature of your choice that you can see within range regains hit points equal to 1d4 + your spellcasting ability modifier. This spell has no effect on undead or constructs.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, the healing increases by 1d4 for each slot level above 1st.'),--Higher Level Description

('Hellish Rebuke'--Name
           ,@Evocation--Spell School Id
           ,'1 reaction'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You point your finger, and the creature that damaged you is momentarily surrounded by hellish flames.  The creature must make a Dexterity saving throw.  It takes 2d10 fire damage on a failed save, or half as much damage on a successful one.'--Description
           ,'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st.'),--Higher Level Description

('Heroism'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'A willing creature you touch is imbued with bravery. Until the spell ends, the creature is immune to being frightened and gains temporary hit points equal to your spellcasting ability modifier at the start of each of its turns. When the spell ends, the target loses any remaining temporary hit points from this spell.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),--Higher Level Description

('Hex'--Name
           ,@Enchantment--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'90 feet'--Range
           ,'Up to 1 hour'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Hunter''s Mark'--Name
           ,@Divination--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'90 feet'--Range
           ,'Up to 1 hour'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'You choose a creature you can see within range and mystically mark it as your quarry. Until the spell ends, you deal an extra 1d6 damage to the target whenever you hit it with a weapon attack, and you have advantage on any Wisdom (Perception) or Wisdom (Survival) check you make to find it. If the target drops to 0 hit points before this spell ends, you can use a bonus action on a subsequent turn of yours to mark a new creature.'--Description
          ,'When you cast this spell using a spell slot of 3rd or 4th level, you can maintain your concentration on the spell for up to 8 hours. When you use a spell slot of 5th level or higher, you can maintain your concentration on the spell for up to 24 hours.'),--Higher Level Description

--I--

('Identify'--Name
           ,@Divination--Spell School Id
           ,'1 minute'--Casting Time
           ,'Touch'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,'You choose one object that you must touch throughout the casting of the spell. If it is a magic item or some other magic imbued object, you learn its properties and how to use them, whether it requires attunement to use, and how many charges it has, if any. You learn whether any spells are affecting the item and what they are. If the item was created by a spell, you learn which spell created it.
		  
		  If you instead touch a creature throughout the casting, you learn what spells, if any, are currently affecting it.'--Description
          ,null),--Higher Level Description

('Illusory Script'--Name
           ,@Illusion--Spell School Id
           ,'1 minute'--Casting Time
           ,'Touch'--Range
           ,'10 days'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,0--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,'You write on parchment, paper, or some other suitable writing material and imbue it with a potent illusion that lasts for the duration.
		  
		  To you and any creatures you designate when you cast the spell, the writing appears normal, written in your hand, and conveys whatever meaning you intended when you wrote the text. To all others, the writing appears as if it were written in an unknown or magical script that is unintelligible. Alternatively, you can cause the writing to appear to be an entirely different message, written in a different hand and language, though the language must be one you know.
		  
		  Should the spell be dispelled, the original script and the illusion both disappear.
		  
		  A creature with truesight can read the hidden message.'--Description
          ,null),--Higher Level Description

('Inflict Wounds'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'Make a melee spell attack against a creature you can reach. On a hit, the target takes 3d10 necrotic damage.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d10 for each slot level above 1st.'),--Higher Level Description

--J--

('Jump'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'1 minute'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'You touch a creature. The creature''s jump distance is tripled until the spell ends.'--Description
          ,null),--Higher Level Description

--L--

('Longstrider'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'1 hour'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'You touch a creature. The target''s speed increases by 10 feet until the spell ends.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, you can target one additional creature for each slot level above 1st.'),--Higher Level Description

--M--

('Mage Armor'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'8 hours'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
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
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'You create three glowing darts of magical force. Each dart hits a creature of your choice that you can see within range. A dart deals 1d4 + 1 force damage to its target. The darts all strike simultaneously, and you can direct them to hit one creature or several.'--Description
           ,'When you cast this spell using a spell slot of 2nd level or higher, the spell creates one more dart for each slot level above 1st.'),--Higher Level Description

--P--

('Protection from Evil and Good'--Name
           ,@Abjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'Touch'--Range
           ,'Up to 10 minutes'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'Until the spell ends, one willing creature you touch is protected against certain types of creatures: aberrations, celestials, elementals, fey, fiends, and undead.
		  
		  The protection grants several benefits. Creatures of those types have disadvantage on attack rolls against the target. The target also can''t be charmed, frightened, or possessed by them. If the target is already charmed, frightened, or possessed by such a creature, the target has advantage on any new saving throw against the relevant effect.'--Description
          ,null),--Higher Level Description

('Purify Food and Drink'--Name
           ,@Transmutation--Spell School Id
           ,'1 action'--Casting Time
           ,'10 feet'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,1--Is Ritual
          ,'All nonmagical food and drink within a 5 foot radius sphere centered on a point of your choice within range is purified and rendered free of poison and disease.'--Description
          ,null),--Higher Level Description

--R--

('Ray of Sickness'--Name
           ,@Necromancy--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Instantaneous'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--S--

('Sanctuary'--Name
           ,@Abjuration--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'30 feet'--Range
           ,'1 minute'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'You ward a creature within range against attack. Until the spell ends, any creature who targets the warded creature with an attack or a harmful spell must first make a Wisdom saving throw. On a failed save, the creature must choose a new target or lose the attack or spell. This spell doesn''t protect the warded creature from area effects, such as the explosion of a fireball.
		  
		  If the warded creature makes an attack, casts a spell that affects an enemy, or deals damage to another creature, this spell ends.'--Description
          ,null),--Higher Level Description

('Searing Smite'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Shield'--Name
           ,@Abjuration--Spell School Id
           ,'1 reaction'--Casting Time
           ,'Self'--Range
           ,'1 round'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,'An invisible barrier of magical force appears and protects you. Until the start of your next turn, you have a +5 bonus to AC, including against the triggering attack, and you take no damage from magic missile.'--Description
          ,null),--Higher Level Description

('Shield of Faith'--Name
           ,@Abjuration--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'60 feet'--Range
           ,'Up to 10 minutes'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'A shimmering field appears and surrounds a creature of your choice within range, granting it a +2 bonus to AC for the duration.'--Description
          ,null),--Higher Level Description

('Silent Image'--Name
           ,@Illusion--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'Up to 10 minutes'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'You create the image of an object, a creature, or some other visible phenomenon that is no larger than a 15 foot cube. The image appears at a spot within range and lasts for the duration. The image is purely visual; it isn''t accompanied by sound, smell, or other sensory effects.
		  
		  You can use your action to cause the image to move to any spot within range. As the image changes location, you can alter its appearance so that its movements appear natural for the image. For example, if you create an image of a creature and move it, you can alter the image so that it appears to be walking.
		  
		  Physical interaction with the image reveals it to be an illusion, because things can pass through it. A creature that uses its action to examine the image can determine that it is an illusion with a successful Intelligence (Investigation) check against your spell save DC. If a creature discerns the illusion for what it is, the creature can see through the image.'--Description
          ,null),--Higher Level Description

('Sleep'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'90 feet'--Range
           ,'1 minute'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'This spell sends creatures into a magical slumber. Roll 5d8; the total is how many hit points of creatures this spell can affect. Creatures within 20 feet of a point you choose within range are affected in ascending order of their current hit points (ignoring unconscious creatures).
		  
		  Starting with the creature that has the lowest current hit points, each creature affected by this spell falls unconscious until the spell ends, the sleeper takes damage, or someone uses an action to shake or slap the sleeper awake. Subtract each creature''s hit points from the total before moving on to the creature with the next lowest hit points. A creature''s hit points must be equal to or less than the remaining total for that creature to be affected.
		  
		  Undead and creatures immune to being charmed aren''t affected by this spell.'--Description
          ,'When you cast this spell using a spell slot of 2nd level or higher, roll an additional 2d8 for each slot level above 1st.'),--Higher Level Description

('Speak with Animals'--Name
           ,@Divination--Spell School Id
           ,'1 action'--Casting Time
           ,'Self'--Range
           ,'10 minutes'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,1--Is Ritual
          ,'You gain the ability to comprehend and verbally communicate with beasts for the duration. The knowledge and awareness of many beasts is limited by their intelligence, but at minimum, beasts can give you information about nearby locations and monsters, including whatever they can perceive or have perceived within the past day. You might be able to persuade a beast to perform a small favor for you, at the GM''s discretion.'--Description
          ,null),--Higher Level Description

--T--

('Tasha''s Hideous Laughter'--Name
           ,@Enchantment--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,'A creature of your choice that you can see within range perceives everything as hilariously funny and falls into fits of laughter if this spell affects it. The target must succeed on a Wisdom saving throw or fall prone, becoming incapacitated and unable to stand up for the duration. A creature with an Intelligence score of 4 or less isn''t affected.
		  
		  At the end of each of its turns, and each time it takes damage, the target can make another Wisdom saving throw. The target has advantage on the saving throw if it''s triggered by damage. On a success, the spell ends.'--Description
          ,null),--Higher Level Description

('Tenser''s Floating Disk'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'1 hour'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,'This spell creates a circular, horizontal plane of force, 3 feet in diameter and 1 inch thick, that floats 3 feet above the ground in an unoccupied space of your choice that you can see within range. The disk remains for the duration, and can hold up to 500 pounds. If more weight is placed on it, the spell ends, and everything on the disk falls to the ground.
		  
		  The disk is immobile while you are within 20 feet of it. If you move more than 20 feet away from it, the disk follows you so that it remains within 20 feet of you. It can move across uneven terrain, up or down stairs, slopes and the like, but it can''t cross an elevation change of 10 feet or more. For example, the disk can''t move across a 10 foot deep pit, nor could it leave such a pit if it was created at the bottom.
		  
		  If you move more than 100 feet from the disk (typically because it can''t move around an obstacle to follow you), the spell ends.'--Description
          ,null),--Higher Level Description

('Thunderous Smite'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Thunderwave'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'Self (15 foot cube)'--Range
           ,'Instantaneous'--Duration
	 	   ,0--Requires Concentration
           ,@SpellLevel--Spell Level
           ,1--Requires Verbal
           ,1--Requires Somatic
           ,0--Requires Material
           ,null--Material Description
	       ,0--Is Ritual
           ,'A wave of thunderous force sweeps out from you. Each creature in a 15 foot cube originating from you must make a Constitution saving throw. On a failed save, a creature takes 2d8 thunder damage and is pushed 10 feet away from you. On a successful save, the creature takes half as much damage and isn''t pushed.
		   
		   In addition, unsecured objects that are completely within the area of effect are automatically pushed 10 feet away from you by the spell''s effect, and the spell emits a thunderous boom audible out to 300 feet.'--Description
           ,'When you cast this spell using a spell slot of 2nd level or higher, the damage increases by 1d8 for each slot level above 1st.'),--Higher Level Description

--U--

('Unseen Servant'--Name
           ,@Conjuration--Spell School Id
           ,'1 action'--Casting Time
           ,'60 feet'--Range
           ,'1 hour'--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,1--Is Ritual
          ,'This spell creates an invisible, mindless, shapeless, Medium force that performs simple tasks at your command until the spell ends. The servant springs into existence in an unoccupied space on the ground within range. It has AC 10, 1 hit point, and a Strength of 2, and it can''t attack. If it drops to 0 hit points, the spell ends.
		  
		  Once on each of your turns as a bonus action, you can mentally command the servant to move up to 15 feet and interact with an object. The servant can perform simple tasks that a human servant could do, such as fetching things, cleaning, mending, folding clothes, lighting fires, serving food, and pouring wine. Once you give the command, the servant performs the task to the best of its ability until it completes the task, then waits for your next command.
		  
		  If you command the servant to perform a task that would move it more than 60 feet away from you, the spell ends.'--Description
          ,null),--Higher Level Description

--W--

('Witch Bolt'--Name
           ,@Evocation--Spell School Id
           ,'1 action'--Casting Time
           ,'30 feet'--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Wrathful Smite'--Name
           ,@Evocation--Spell School Id
           ,'1 bonus action'--Casting Time
           ,'Self '--Range
           ,'Up to 1 minute'--Duration
          ,1--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null)--Higher Level Description

GO