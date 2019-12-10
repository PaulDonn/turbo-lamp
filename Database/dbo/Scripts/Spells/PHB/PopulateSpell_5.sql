--Level 5

DECLARE @Abjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Abjuration')
DECLARE @Conjuration int = (SELECT Id FROM SpellSchool WHERE Name = 'Conjuration')
DECLARE @Divination int = (SELECT Id FROM SpellSchool WHERE Name = 'Divination')
DECLARE @Enchantment int = (SELECT Id FROM SpellSchool WHERE Name = 'Enchantment')
DECLARE @Evocation int = (SELECT Id FROM SpellSchool WHERE Name = 'Evocation')
DECLARE @Illusion int = (SELECT Id FROM SpellSchool WHERE Name = 'Illusion')
DECLARE @Necromancy int = (SELECT Id FROM SpellSchool WHERE Name = 'Necromancy')
DECLARE @Transmutation int = (SELECT Id FROM SpellSchool WHERE Name = 'Transmutation')

DECLARE @SpellLevel int = 5

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

('Animate Objects'--Name
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

('Antilife Shell'--Name
           ,@Abjuration--Spell School Id
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

('Awaken'--Name
           ,@Transmutation--Spell School Id
           ,'8 hours'--Casting Time
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

--B--

('Banishing Smite'--Name
           ,@Abjuration--Spell School Id
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

('Bigby''s Hand'--Name
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

--C--

('Circle of Power'--Name
           ,@Abjuration--Spell School Id
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

('Cloudkill'--Name
           ,@Conjuration--Spell School Id
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

('Commune'--Name
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

('Commune with Nature'--Name
           ,@Divination--Spell School Id
           ,'1 minute'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,1--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Cone of Cold'--Name
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

('Conjure Elemental'--Name
           ,@Conjuration--Spell School Id
           ,'1 minute'--Casting Time
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

('Conjure Volley'--Name
           ,@Conjuration--Spell School Id
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

('Contact Other Plane'--Name
           ,@Divination--Spell School Id
           ,'1 minute'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,0--Requires Material
          ,null--Material Description
          ,1--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Contagion'--Name
           ,@Necromancy--Spell School Id
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

('Creation'--Name
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
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--D--

('Destructive Wave'--Name
           ,@Evocation--Spell School Id
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

('Dispel Evil and Good'--Name
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

('Dominate Person'--Name
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

('Dream'--Name
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
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

--F--

('Flame Strike'--Name
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

--G--

('Geas'--Name
           ,@Enchantment--Spell School Id
           ,'1 minute'--Casting Time
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

('Greater Restoration'--Name
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

--H--

('Hallow'--Name
           ,@Evocation--Spell School Id
           ,'24 hours'--Casting Time
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

('Hold Monster'--Name
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

('Insect Plague'--Name
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

--L--

('Legend Lore'--Name
           ,@Divination--Spell School Id
           ,'10 minutes'--Casting Time
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

--L--

('Mass Cure Wounds'--Name
           ,@Evocation--Spell School Id
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

('Mislead'--Name
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
          ,null),--Higher Level Description

('Modify Memory'--Name
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

--P--

('Passwall'--Name
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

('Planar Binding'--Name
           ,@Abjuration--Spell School Id
           ,'1 hour'--Casting Time
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

--R--

('Raise Dead'--Name
           ,@Necromancy--Spell School Id
           ,'1 hour'--Casting Time
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

('Rary''s Telepathic Bond'--Name
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

('Reincarnate'--Name
           ,@Transmutation--Spell School Id
           ,'1 hour'--Casting Time
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

('Scrying'--Name
           ,@Divination--Spell School Id
           ,'10 minutes'--Casting Time
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

('Seeming'--Name
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

('Swift Quiver'--Name
           ,@Transmutation--Spell School Id
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

--T--

('Telekinesis'--Name
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

('Teleportation Circle'--Name
           ,@Conjuration--Spell School Id
           ,'1 minute'--Casting Time
           ,''--Range
           ,''--Duration
          ,0--RequiresConcentration
          ,@SpellLevel--Spell Level
          ,1--Requires Verbal
          ,0--Requires Somatic
          ,1--Requires Material
          ,''--Material Description
          ,0--Is Ritual
          ,''--Description
          ,null),--Higher Level Description

('Tree Stride'--Name
           ,@Conjuration--Spell School Id
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

--W--

('Wall of Force'--Name
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

('Wall of Stone'--Name
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
          ,null)--Higher Level Description

GO