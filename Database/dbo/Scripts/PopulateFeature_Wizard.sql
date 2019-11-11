INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Spellbook'--<Name, nvarchar(50),>
           ,'At 1st level, you have a Spellbook containing six 1st-level Wizard Spells of your choice. Your Spellbook is the repository of the Wizard Spells you know, except your Cantrips, which are fixed in your mind.'--<Description, nvarchar(max),>
           ,'Wizard_Spellbook'--<Code, nvarchar(50),>
		   ),
           ('Your Spellbook'--<Name, nvarchar(50),>
           ,'The Spells that you add to your Spellbook as you gain levels reflect the arcane Research you conduct on your own, as well as intellectual breakthroughs you have had about the Nature of the multiverse. You might find other Spells during your Adventures. You could discover a spell recorded on a scroll in an evil wizard’s chest, for example, or in a dusty tome in an ancient Library.

Copying a Spell into the Book: When you find a Wizard spell of 1st level or higher, you can add it to your Spellbook if it is of a Spell Level you can prepare and if you can spare the time to decipher and copy it.

Copying that spell into your Spellbook involves reproducing the basic form of the spell, then deciphering the unique system of notation used by the Wizard who wrote it. You must practice the spell until you understand the sounds or gestures required, then transcribe it into your Spellbook using your own notation.

For each level of the spell, the process takes 2 hours and costs 50 gp. The cost represents material Components you expend as you experiment with the spell to Master it, as well as the fine inks you need to record it. Once you have spent this time and money, you can prepare the spell just like your other Spells.

Replacing the Book: You can copy a spell from your own Spellbook into another book—for example, if you want to make a backup copy of your Spellbook. This is just like copying a new spell into your Spellbook, but faster and easier, since you understand your own notation and already know how to cast the spell. You need spend only 1 hour and 10 gp for each level of the copied spell.

If you lose your Spellbook, you can use the same procedure to transcribe the Spells that you have prepared into a new Spellbook. Filling out the remainder of your Spellbook requires you to find new Spells to do so, as normal. For this reason, many wizards keep backup spellbooks in a safe place.

The Book’s Appearance: Your Spellbook is a unique compilation of Spells, with its own decorative flourishes and margin notes. It might be a plain, functional leather volume that you received as a gift from your Master, a finely bound gilt-­edged tome you found in an ancient Library, or even a loose collection of notes scrounged together after you lost your previous Spellbook in a mishap.'--<Description, nvarchar(max),>
           ,'Wizard_YourSpellbook'--<Code, nvarchar(50),>
		   ),
           ('Arcane Recovery'--<Name, nvarchar(50),>
           ,'You have learned to regain some of your magical energy by studying your Spellbook. Once per day when you finish a Short Rest, you can choose expended Spell Slots to recover. The Spell Slots can have a combined level that is equal to or less than half your Wizard level (rounded up), and none of the slots can be 6th level or higher.

For example, if you’re a 4th-level Wizard, you can recover up to two levels worth of Spell Slots. You can recover either a 2nd-level spell slot or two 1st-level Spell Slots.'--<Description, nvarchar(max),>
           ,'Wizard_ArcaneRecovery'--<Code, nvarchar(50),>
		   ),
           ('Arcane Tradition'--<Name, nvarchar(50),>
           ,'When you reach 2nd level, you choose an arcane tradition, shaping your practice of magic through one of eight schools, such as Evocation. Your choice grants you features at 2nd level and again at 6th, 10th, and 14th level.'--<Description, nvarchar(max),>
           ,'Wizard_ArcaneTradition'--<Code, nvarchar(50),>
		   ),
           ('Spell Mastery'--<Name, nvarchar(50),>
           ,'At 18th level, you have achieved such mastery over certain Spells that you can cast them at will. Choose a 1st-level Wizard spell and a 2nd-level Wizard spell that are in your Spellbook. You can cast those Spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.

By spending 8 hours in study, you can exchange one or both of the Spells you chose for different Spells of the same levels.'--<Description, nvarchar(max),>
           ,'Wizard_SpellMastery'--<Code, nvarchar(50),>
		   ),
           ('Signature Spells'--<Name, nvarchar(50),>
           ,'When you reach 20th level, you gain mastery over two powerful Spells and can cast them with little effort. Choose two 3rd-level Wizard Spells in your Spellbook as your signature Spells. You always have these Spells prepared, they don''t count against the number of Spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or Long Rest.

If you want to cast either spell at a higher level, you must expend a spell slot as normal.'--<Description, nvarchar(max),>
           ,'Wizard_SignatureSpells'--<Code, nvarchar(50),>
		   ),

		   --Evoker--
           ('Evocation Savant'--<Name, nvarchar(50),>
           ,'Beginning when you select this school at 2nd level, the gold and time you must spend to copy an Evocation spell into your Spellbook is halved.'--<Description, nvarchar(max),>
           ,'Evoker_EvocationSavant'--<Code, nvarchar(50),>
		   ),
           ('Sculpt Spells'--<Name, nvarchar(50),>
           ,'Beginning at 2nd level, you can create pockets of relative safety within the Effects of your Evocation Spells. When you cast an Evocation spell that affects other creatures that you can see, you can choose a number of them equal to 1 + the spell’s level. The chosen creatures automatically succeed on their Saving Throws against the spell, and they take no damage if they would normally take half damage on a successful save.'--<Description, nvarchar(max),>
           ,'Evoker_SculptSpells'--<Code, nvarchar(50),>
		   ),
           ('Potent Cantrip'--<Name, nvarchar(50),>
           ,'Starting at 6th level, your damaging Cantrips affect even creatures that avoid the brunt of the effect. When a creature succeeds on a saving throw against your cantrip, the creature takes half the cantrip’s damage (if any) but suffers no additional effect from the cantrip.'--<Description, nvarchar(max),>
           ,'Evoker_PotentCantrip'--<Code, nvarchar(50),>
		   ),
           ('Empowered Evocation'--<Name, nvarchar(50),>
           ,'Beginning at 10th level, you can add your Intelligence modifier to one damage roll of any Wizard Evocation spell you cast.'--<Description, nvarchar(max),>
           ,'Evoker_EmpoweredEvocation'--<Code, nvarchar(50),>
		   ),
           ('Overchannel'--<Name, nvarchar(50),>
           ,'Starting at 14th level, you can increase the power of your simpler Spells. When you cast a Wizard spell of 1st through 5th level that deals damage, you can deal maximum damage with that spell.

The first time you do so, you suffer no adverse effect. If you use this feature again before you finish a Long Rest, you take 2d12 necrotic damage for each level of the spell, immediately after you cast it. Each time you use this feature again before finishing a Long Rest, the necrotic damage per Spell Level increases by 1d12. This damage ignores Resistance and immunity.'--<Description, nvarchar(max),>
           ,'Evoker_Overchannel'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Spellcasting')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'As a student of Arcane Magic, you have a Spellbook containing Spells that show the first glimmerings of your true power.'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Cantrips')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'At 1st level, you know three Cantrips of your choice from the Wizard spell list. You learn additional Wizard Cantrips of your choice at higher levels'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Wizard_Spellbook')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Wizard_YourSpellbook')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'PreparingSpells')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'The Wizard table shows how many Spell Slots you have to cast your Spells of 1st level and higher. To cast one of these Spells, you must expend a slot of the spell''s level or higher. You regain all expended Spell Slots when you finish a Long Rest.

You prepare the list of Wizard Spells that are available for you to cast. To do so, choose a number of Wizard Spells from your Spellbook equal to your Intelligence modifier + your Wizard level (minimum of one spell). The Spells must be of a level for which you have Spell Slots.

For example, if you''re a 3rd-level Wizard, you have four 1st-level and two 2nd-level Spell Slots. With an Intelligence of 16, your list of prepared Spells can include six Spells of 1st or 2nd level, in any combination, chosen from your Spellbook. If you prepare the 1st-level spell Magic Missile, you can cast it using a 1st-level or a 2nd-level slot. Casting the spell doesn''t remove it from your list of prepared Spells.

You can change your list of prepared Spells when you finish a Long Rest. Preparing a new list of Wizard Spells requires time spent studying your Spellbook and memorizing the incantations and gestures you must make to cast the spell: at least 1 minute per Spell Level for each spell on your list.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SpellcastingAbility')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Intelligence is your Spellcasting Ability for your Wizard Spells, since you learn your Spells through dedicated study and memorization. You use your Intelligence whenever a spell refers to your Spellcasting Ability. In addition, you use your Intelligence modifier when setting the saving throw DC for a Wizard spell you cast and when Making an Attack roll with one.

Spell save DC = 8 + your Proficiency Bonus + your Intelligence modifier
Spell Attack modifier = your Proficiency Bonus + your Intelligence modifier'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'RitualCasting')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can cast a Wizard spell as a ritual if that spell has the ritual tag and you have the spell in your Spellbook. You don''t need to have the spell prepared.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SpellcastingFocus')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'You can use an arcane focus as a Spellcasting focus for your Wizard Spells.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'LearningSpells')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Each time you gain a Wizard level, you can add two Wizard Spells of your choice to your Spellbook for free. Each of these Spells must be of a level for which you have Spell Slots, as shown on the Wizard table. On your Adventures, you might find other Spells that you can add to your Spellbook (see “Your Spellbook”).'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Wizard_ArcaneRecovery')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Wizard_ArcaneTradition')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,4--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,8--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,12--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,16--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,19--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Wizard_SpellMastery')--<FeatureId, int,>
		   ,18--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Wizard_SignatureSpells')--<FeatureId, int,>
		   ,20--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Evoker')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Evoker_EvocationSavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Evoker')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Evoker_SculptSpells')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Evoker')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Evoker_PotentCantrip')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Evoker')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Evoker_EmpoweredEvocation')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Evoker')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Evoker_Overchannel')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO