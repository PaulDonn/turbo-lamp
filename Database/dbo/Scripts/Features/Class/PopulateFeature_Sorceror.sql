INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Sorcery Points'--<Name, nvarchar(50),>
           ,'You have 2 sorcery points, and you gain more as you
reach higher levels. You regain all spent sorcery points when you
finish a long rest.'--<Description, nvarchar(max),>
           ,'Sorceror_SorceryPoints'--<Code, nvarchar(50),>
		   ),
           ('Flexible Casting'--<Name, nvarchar(50),>
           ,'You can use your sorcery points to gain additional spell
slots, or sacrifice spell slots to gain additional sorcery
points. You learn other ways to use your sorcery points
as you reach higher levels.
-Creating Spell Slots. You can transform unexpended
sorcery points into one spell slot as a bonus action on
your turn. The Creating Spell Slots table shows the cost
of creating a spell slot of a given level. You can create
spell slots no higher in level than 5th.

2 Sorcery Points => Level 1 Spell Slot
3 Sorcery Points => Level 2 Spell Slot
5 Sorcery Points => Level 3 Spell Slot
6 Sorcery Points => Level 4 Spell Slot
7 Sorcery Points => Level 5 Spell Slot

Converting a Spel1 Slot to Sorcery Points. As a
bonus action on your turn, you can expend one spell
slot and gain a number of sorcery points equal to the
slot''s level.'--<Description, nvarchar(max),>
           ,'Sorceror_FlexibleCasting'--<Code, nvarchar(50),>
		   ),
           ('Metamagic'--<Name, nvarchar(50),>
           ,'At 3rd level, you gain the ability to twist your spells
to suit your needs. You gain two of the following
Metamagic options of your choice. You gain another one
at 10th and 17th level.
You can use only one Metamagic option on a spell
when you cast it, unless otherwise noted.'--<Description, nvarchar(max),>
           ,'Sorceror_Metamagic'--<Code, nvarchar(50),>
		   ),
           ('Sorcerous Restoration'--<Name, nvarchar(50),>
           ,'At 20th level, you regain 4 expended sorcery points
whenever you finish a short rest.'--<Description, nvarchar(max),>
           ,'Sorceror_SorcerousRestoration'--<Code, nvarchar(50),>
		   ),
           ('Careful Spell'--<Name, nvarchar(50),>
           ,'When you cast a spell that forces other creatures to make
a saving throw, you can protect some of those creatures
from the spell''s full force. To do so, you spend 1 sorcery
point and choose a number of those creatures up to your
Charisma modifier (minimum of one creature). A chosen
creature automatically succeeds on its saving throw
against the spell.'--<Description, nvarchar(max),>
           ,'Metamagic_CarefulSpell'--<Code, nvarchar(50),>
		   ),
           ('Distant Spell'--<Name, nvarchar(50),>
           ,'When you cast a spell that has a range of 5 feet or
greater, you can spend 1 sorcery point to double the
range of the spell.
When you cast a spell that has a range of touch, you
can spend 1 sorcery point to make the range of the
spell 30 feet.'--<Description, nvarchar(max),>
           ,'Metamagic_DistantSpell'--<Code, nvarchar(50),>
		   ),
           ('Empowered Spell'--<Name, nvarchar(50),>
           ,'When you roll damage for a spell, you can spend 1
sorcery point to reroll a number of the damage dice up
to your Charisma modifier (minimum of one). You must
use the new rolls.
You can use Empowered Spell even if you have
already used a different Metamagic option during the
casting of the spell.'--<Description, nvarchar(max),>
           ,'Metamagic_EmpoweredSpell'--<Code, nvarchar(50),>
		   ),
           ('Extended Spell'--<Name, nvarchar(50),>
           ,'When you cast a spell that has a duration of 1 minute
or longer. you can spend 1 sorcery point to double its
duration, to a maximum duration of 24 hours.'--<Description, nvarchar(max),>
           ,'Metamagic_ExtendedSpell'--<Code, nvarchar(50),>
		   ),
           ('Heightened Spell'--<Name, nvarchar(50),>
           ,'When you cast a spell that forces a creature to make a
saving throw to resist its effects, you can spend 3 sorcery
points to give one target of the spell disadvantage on its
first saving throw made against the spell.'--<Description, nvarchar(max),>
           ,'Metamagic_HeightenedSpell'--<Code, nvarchar(50),>
		   ),
           ('Quickened Spell'--<Name, nvarchar(50),>
           ,'When you cast a spell that has a casting time of 1 action,
you can spend 2 sorcery points to change the casting
time to 1 bonus action for this casting.'--<Description, nvarchar(max),>
           ,'Metamagic_QuickenedSpell'--<Code, nvarchar(50),>
		   ),
           ('Subtle Spell'--<Name, nvarchar(50),>
           ,'When you cast a spell, you can spend 1 sorcery point to
cast it without any somatic ar verbal components.'--<Description, nvarchar(max),>
           ,'Metamagic_SubtleSpell'--<Code, nvarchar(50),>
		   ),
           ('Twinned Spell'--<Name, nvarchar(50),>
           ,'When you cast a spell that targets only one creature and
doesn''t have a range of self, you can spend a number of
sorcery points equal to the spell''s level to target a second
creature in range with the same spell (1 sorcery point if
the spell is a cantrip).'--<Description, nvarchar(max),>
           ,'Metamagic_TwinnedSpell'--<Code, nvarchar(50),>
		   ),

		   --Draconic Sorceror--
           ('Dragon Ancestor'--<Name, nvarchar(50),>
           ,'At 1st level, you choose one type of dragon as your
ancestor. The damage type associated with each dragon
is used by features you gain later.
You can speak, read, and write Draconic. Additionally,
whenever you make a Charisma check when interacting
with dragons, your proficiency bonus is doubled if it
applies to the check.'--<Description, nvarchar(max),>
           ,'DraconicSorceror_Ancestor'--<Code, nvarchar(50),>
		   ),
           ('Draconic Resilience'--<Name, nvarchar(50),>
           ,'As magic flows through your body, it causes physical
traits of your dragon ancestors to emerge. At 1st level,
your hit point maximum increases by 1 and increases by
1 again whenever you gain a level in this c1ass.
Additionally, parts of your skin are covered by a thin
sheen of dragon-like scales. When you aren''t wearing
armor, your AC equals 13 + your Dexterity modifier.'--<Description, nvarchar(max),>
           ,'DraconicSorceror_Resilience'--<Code, nvarchar(50),>
		   ),
           ('Elemental Affinity'--<Name, nvarchar(50),>
           ,'Starting at 6th level, when you cast a spell thal deals
damage of the type associated with your draconic
ancestry, add your Charisma modifier to that damage.
At the same time, you can spend 1 sorcery point to gain
resistance to that damage type for 1 hour.'--<Description, nvarchar(max),>
           ,'DraconicSorceror_ElementalAffinity'--<Code, nvarchar(50),>
		   ),
           ('Dragon Wings'--<Name, nvarchar(50),>
           ,'At 14th level, you gain the ability to sprout a pair of
dragon wings from your back, gaining a flying speed
equal to your current speed. You can create these wings
as a bonus action on your turno They last until you
dismiss them as a bonus action on your turno
You can''t manifest your wings while wearing armor
unless the armor is made to accommodate them, and
clothing not made to accommodate your wings might
be destroyed when you manifest them.'--<Description, nvarchar(max),>
           ,'DraconicSorceror_Wings'--<Code, nvarchar(50),>
		   ),
           ('Draconic Presence'--<Name, nvarchar(50),>
           ,'Beginning at 18th level, you can channel the dread
presence of your dragon ancestor, causing those around
you to become awestruck or frightened. As an action,
you can spend 5 sorcery points to draw on this power
and exude an aura of awe or fear (your choice) to a
distance of 60 feel. For I minute or until you lose your
concentration (as if you were casting a concentration
spell), each hostile creature that starts its turn in this
aura must succeed on a Wisdom saving throw or be
charmed (if you chose awe) or frightened (if you chose
fear) until the aura ends. A creature that succeeds on
this saving throw is immune to your aura for 24 hours.'--<Description, nvarchar(max),>
           ,'DraconicSorceror_Presence'--<Code, nvarchar(50),>
		   ),

		   --Wild Magic Sorceror--
           ('Wild Magic Surge'--<Name, nvarchar(50),>
           ,'Starting when you choose this origin at 1st level, your
spellcasting can unleash surges of untamed magic.
lmmediately after you cast a sorcerer spell of 1st level
or higher, the DM can have you roll a d20. If you roll a
I, roll on the Wild Magic Surge table to create a random
magical effect.'--<Description, nvarchar(max),>
           ,'WildMagicSorceror_WildMagicSurge'--<Code, nvarchar(50),>
		   ),
           ('Tides of Chaos'--<Name, nvarchar(50),>
           ,'Starting at 1st level, you can manipulate the forces of
chance and chaos to gain advantage on one attack roll,
ability check, or saving throw. Once you do so.you must
fnish a long rest before you can use this feature again.
Any time before you regain the use of this feature, the
DM can have you roll on the Wild Magic Surge table
immediately after you cast a sorcerer spell of 1st level or
higher. You then regain the use of this feature.'--<Description, nvarchar(max),>
           ,'WildMagicSorceror_TidesOfChaos'--<Code, nvarchar(50),>
		   ),
           ('Bend Luck'--<Name, nvarchar(50),>
           ,'Starting at 6th level, you have the ability to twist fate
using your wild magic. When another creature you can
see makes an attack roll, an ability check, or a saving
throw, you can use your reaction and spend 2 sorcery
points to roll 1d4 and apply the number rolled as a
bonus or penalty (your choice) to the creature''s roll. You
can do so after the creature rolls but before any effects
of the roll occur.'--<Description, nvarchar(max),>
           ,'WildMagicSorceror_BendLuck'--<Code, nvarchar(50),>
		   ),
           ('Controlled Chaos'--<Name, nvarchar(50),>
           ,'At 14th level, you gain a modicum of control over the
surges of your wild magic. Whenever you roll on the
Wild Magic Surge table, you can roll twice and use
either number.'--<Description, nvarchar(max),>
           ,'WildMagicSorceror_ControlledChaos'--<Code, nvarchar(50),>
		   ),
           ('Spell Bombardment'--<Name, nvarchar(50),>
           ,'Beginning at 18th level, the harmful energy of your
spells intensifies. When you roll damage for a spell and
roll the highest number possible on any of the dice,
choose one of those dice, roll it again and add that roll to
the damage. You can use the feature only once per turn.'--<Description, nvarchar(max),>
           ,'WildMagicSorceror_SpellBombardment'--<Code, nvarchar(50),>
		   )
GO

INSERT INTO [dbo].[ClassFeature]
           ([ClassId]
           ,[ArchetypeId]
           ,[FeatureId]
		   ,[Level]
           ,[Description]
           ,[Hidden])
     VALUES
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Cantrips')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'At 1st level, you know four cantrips of your choice from
the sorcerer spell list. You learn additional sorcerer
cantrips of your choice at higher levels, as shown in the
Cantrips Known column of the Sorcerer table.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SpellSlots')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'The Sorcerer table shows how many spell slots you
have to cast your spells of 1st level and higher. To cast
one of these sorcerer spells, you must expend a slot of
the spell''s level or higher. You regain all expended spell
slots when you finish a long rest.
For example, if you know the 1st-level spell burning
hands and have a 1st-level and a 2nd-level spell slot
available, you can cast burning hands using either slot.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SpellsKnown')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You know two 1st-level spells of your choice from the
sorcerer spell list. Each of these spells must be of a level for which
you have spell slots. For instance, when you reach 3rd
level in this class, you can learn one new spell of 1st
or 2nd level.
Additionally, when you gain a level in this class,
you can choose one of the sorcerer spells you know
and replace it with another spell from the sorcerer
spell list, which also must be of a level for which you
have spell slots.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SpellcastingAbility')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Charisma is your spellcasting ability for your sorcerer
spells, since the power of your magic relies on your
ability to project your will into the world. You use your
Charisma whenever a spell refers to your spellcasting
ability. In addition. you use your Charisma modifier
when setting the saving throw DC for a sorcerer spell
you cast and when making an attack roll with one.
- Spell save DC = 8 + your proficiencybonus +
your Charisma modifier
- Spell attack modifier = your proficiencybonus +
your Charisma modifier'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SpellcastingFocus')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use an arcane focus as a
spellcasting focus for your sorcerer spells.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Sorceror_SorceryPoints')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Sorceror_FlexibleCasting')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Sorceror_Metamagic')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,4--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,8--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,12--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,16--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,19--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Sorceror')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Sorceror_SorcerousRestoration')--<FeatureId, int,>
		   ,20--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Draconic Sorceror--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Draconic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DraconicSorceror_Ancestor')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Draconic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DraconicSorceror_Resilience')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Draconic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DraconicSorceror_ElementalAffinity')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Draconic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DraconicSorceror_Wings')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Draconic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'DraconicSorceror_Presence')--<FeatureId, int,>
		   ,18--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Wild Magic Sorceror--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Wild Magic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'WildMagicSorceror_WildMagicSurge')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Wild Magic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'WildMagicSorceror_TidesOfChaos')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Wild Magic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'WildMagicSorceror_BendLuck')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Wild Magic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'WildMagicSorceror_ControlledChaos')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Wild Magic Sorceror')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'WildMagicSorceror_SpellBombardment')--<FeatureId, int,>
		   ,18--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO