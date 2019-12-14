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
		   <br/>
		   <br/>Copying a Spell into the Book: When you find a Wizard spell of 1st level or higher, you can add it to your Spellbook if it is of a Spell Level you can prepare and if you can spare the time to decipher and copy it.
		   <br/>
		   <br/>Copying that spell into your Spellbook involves reproducing the basic form of the spell, then deciphering the unique system of notation used by the Wizard who wrote it. You must practice the spell until you understand the sounds or gestures required, then transcribe it into your Spellbook using your own notation.
		   <br/>
		   <br/>For each level of the spell, the process takes 2 hours and costs 50 gp. The cost represents material Components you expend as you experiment with the spell to Master it, as well as the fine inks you need to record it. Once you have spent this time and money, you can prepare the spell just like your other Spells.
		   <br/>
		   <br/>Replacing the Book: You can copy a spell from your own Spellbook into another book—for example, if you want to make a backup copy of your Spellbook. This is just like copying a new spell into your Spellbook, but faster and easier, since you understand your own notation and already know how to cast the spell. You need spend only 1 hour and 10 gp for each level of the copied spell.
		   <br/>
		   <br/>If you lose your Spellbook, you can use the same procedure to transcribe the Spells that you have prepared into a new Spellbook. Filling out the remainder of your Spellbook requires you to find new Spells to do so, as normal. For this reason, many wizards keep backup spellbooks in a safe place.
		   <br/>
		   <br/>The Book’s Appearance: Your Spellbook is a unique compilation of Spells, with its own decorative flourishes and margin notes. It might be a plain, functional leather volume that you received as a gift from your Master, a finely bound gilt-­edged tome you found in an ancient Library, or even a loose collection of notes scrounged together after you lost your previous Spellbook in a mishap.'--<Description, nvarchar(max),>
           ,'Wizard_YourSpellbook'--<Code, nvarchar(50),>
		   ),
           ('Arcane Recovery'--<Name, nvarchar(50),>
           ,'You have learned to regain some of your magical energy by studying your Spellbook. Once per day when you finish a Short Rest, you can choose expended Spell Slots to recover. The Spell Slots can have a combined level that is equal to or less than half your Wizard level (rounded up), and none of the slots can be 6th level or higher.
		   <br/>
		   <br/>For example, if you’re a 4th-level Wizard, you can recover up to two levels worth of Spell Slots. You can recover either a 2nd-level spell slot or two 1st-level Spell Slots.'--<Description, nvarchar(max),>
           ,'Wizard_ArcaneRecovery'--<Code, nvarchar(50),>
		   ),
           ('Arcane Tradition'--<Name, nvarchar(50),>
           ,'When you reach 2nd level, you choose an arcane tradition, shaping your practice of magic through one of many schools, such as Evocation. Your choice grants you features at 2nd level and again at 6th, 10th, and 14th level.'--<Description, nvarchar(max),>
           ,'Wizard_ArcaneTradition'--<Code, nvarchar(50),>
		   ),
           ('Spell Mastery'--<Name, nvarchar(50),>
           ,'At 18th level, you have achieved such mastery over certain Spells that you can cast them at will. Choose a 1st-level Wizard spell and a 2nd-level Wizard spell that are in your Spellbook. You can cast those Spells at their lowest level without expending a spell slot when you have them prepared. If you want to cast either spell at a higher level, you must expend a spell slot as normal.
		   <br/>
		   <br/>By spending 8 hours in study, you can exchange one or both of the Spells you chose for different Spells of the same levels.'--<Description, nvarchar(max),>
           ,'Wizard_SpellMastery'--<Code, nvarchar(50),>
		   ),
           ('Signature Spells'--<Name, nvarchar(50),>
           ,'When you reach 20th level, you gain mastery over two powerful Spells and can cast them with little effort. Choose two 3rd-level Wizard Spells in your Spellbook as your signature Spells. You always have these Spells prepared, they don''t count against the number of Spells you have prepared, and you can cast each of them once at 3rd level without expending a spell slot. When you do so, you can''t do so again until you finish a short or Long Rest.
		   <br/>
		   <br/>If you want to cast either spell at a higher level, you must expend a spell slot as normal.'--<Description, nvarchar(max),>
           ,'Wizard_SignatureSpells'--<Code, nvarchar(50),>
		   ),

		   --Abjuration--
           ('Abjuration Savant'--<Name, nvarchar(50),>
           ,'Beginning when you select this school at 2nd level, the gold and time you must spend to copy an Abjuration spell into your Spellbook is halved.'--<Description, nvarchar(max),>
           ,'Abjurer_AbjurationSavant'--<Code, nvarchar(50),>
		   ),
           ('Arcane Ward'--<Name, nvarchar(50),>
           ,'Starting at 2nd level, you can weave magic around yourself for protection. When you cast an abjuration spell of 1st level or higher, you can simultaneously use a strand of the spell''s magic to create a magical ward on yourself that lasts until you finish a long rest. The ward has a hit point maximum equal to twice your wizard level + yout Intelligence modifier. Whenever you take damage, the ward takes the damage instead. If this damage reduces the ward to 0 hit points, you take any remaining damage.
		   <br/>
		   <br/>While the ward has 0 hit points, it can''t absorb damage but its magic remains. Whenever you cast an abjuration spell of first level or higher, the ward regains a number of hit points equal to twice the level of the spell.
		   <br/>
		   <br/>Once yoy create the ward, you can''t create it again until you finish a long rest.'--<Description, nvarchar(max),>
           ,'Abjurer_ArcaneWard'--<Code, nvarchar(50),>
		   ),
           ('Projected Ward'--<Name, nvarchar(50),>
           ,'Starting at 6th level. when a creature that you can see within 30 feet of you takes damage, you can use your reaction to cause your Arcane Ward to absorb that damage. If this damage reduces the ward to O hit points, the warded creature takes any remaining damage.'--<Description, nvarchar(max),>
           ,'Abjurer_ProjectedWard'--<Code, nvarchar(50),>
		   ),
           ('Improved Abjuration'--<Name, nvarchar(50),>
           ,'Beginning at 10th level, when you cast an abjuration spell that requires you to make an ability check as a part of casting that spell (as in counterspell and dispel magic), you add your proficiency bonus to that ability check.'--<Description, nvarchar(max),>
           ,'Abjurer_ImprovedAbjuration'--<Code, nvarchar(50),>
		   ),
           ('Spell Resistance'--<Name, nvarchar(50),>
           ,'Starting at 14th level, you have advantage on saving throws against spells. 
		   <br/>
		   <br/>Furthermore, you have resistance against the damage of spells.'--<Description, nvarchar(max),>
           ,'Abjurer_SpellResistance'--<Code, nvarchar(50),>
		   ),

		   --Conjuration--
           ('Conjuration Savant'--<Name, nvarchar(50),>
           ,'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a conjuration spell into your spellbook is halved.'--<Description, nvarchar(max),>
           ,'Conjurer_ConjurationSavant'--<Code, nvarchar(50),>
		   ),
           ('Minor Conjuration'--<Name, nvarchar(50),>
           ,'Starting at 2nd level when you select this school, you can use your action to conjure up an inanimate object in your hand or on the ground in an unoccupied space that you can see within 10 feet of you. This object can be no larger than 3 feet on a side and weigh no more than 10 pounds, and its form must be that of a nonmagical object that you have seen. The object is visibly magical, radiating dim light out to 5 feet.
		   <br/>
		   <br/>The object disappears after 1 hour, when you use this feature again, or if it takes any damage.'--<Description, nvarchar(max),>
           ,'Conjurer_MinorConjuration'--<Code, nvarchar(50),>
		   ),
           ('Benign Transposition'--<Name, nvarchar(50),>
           ,'Starting at 6th level, you can use your action to teleport up to 30 feet to an unoccupied space that you can see. Alternatively, you can choose a space within range that is occupied by a Small or Medium creature. If that creature is willing, you both teleport, swapping places. 
		   <br/>
		   <br/>Once you use this feature, you can''t use it again until you finish a long rest or you cast a conjuration spell of 1st levei or higher.'--<Description, nvarchar(max),>
           ,'Conjurer_BenignTransposition'--<Code, nvarchar(50),>
		   ),
           ('Focused Conjuration'--<Name, nvarchar(50),>
           ,'Beginning at 10th level, while you are concentrating on a conjuration spell, your concentration can''t be broken as a result of taking damage.'--<Description, nvarchar(max),>
           ,'Conjurer_FocusedConjuration'--<Code, nvarchar(50),>
		   ),
           ('Durable Summons'--<Name, nvarchar(50),>
           ,'Starting at 14th level, any creature that you summon or create with a conjuration spell has 30 temporary hit points.'--<Description, nvarchar(max),>
           ,'Conjurer_DurableSummons'--<Code, nvarchar(50),>
		   ),

		   --Divination--
           ('Divination Savant'--<Name, nvarchar(50),>
           ,'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a divination spell into your spellbook is halved.'--<Description, nvarchar(max),>
           ,'Diviner_DivinationSavant'--<Code, nvarchar(50),>
		   ),
           ('Portent'--<Name, nvarchar(50),>
           ,'Starting at 2nd level when you choose this school, glimpses of the future begin to press in on your awareness. When you finish a long rest, roll two d20s and record the numbers rolled. You can replace any attack roll, saving throw, or ability check made by you or a creature that you can see with one of these foretelling rolls. You must choose to do so before the roll, and you can replace a roll in this way only once per turn.
		   <br/>
		   <br/>Each foretelling roll can be used only once. When you finish a long rest, you lose any unused foretelling rolls.'--<Description, nvarchar(max),>
           ,'Diviner_Portent'--<Code, nvarchar(50),>
		   ),
           ('Expert Divination'--<Name, nvarchar(50),>
           ,'Beginning at 6th level, casting divination spells comes so easily to you that it expends only a fraction of your spellcasting efforts. When you cast a divination spell of 2nd leveI or higher using a spell slot, you regain one expended spell slot. The slot you regain must be of a level lower than the spell you cast and can''t be higher than 5th level.'--<Description, nvarchar(max),>
           ,'Diviner_ExpertDivination'--<Code, nvarchar(50),>
		   ),
           ('The Third Eye'--<Name, nvarchar(50),>
           ,'Starting at 10th level, you can use your action to increase your powers of perception. When you do so, choose one of the following benefits, which lasts until you are incapacitated or you take a short or long rest. You can''t use the feature again until you finish a rest.
		   <br/>
		   <br/><strong>Darkvision</strong> - You gain darkvision out to a range of 60 feet, as described in chapter 8.
		   <br/>
		   <br/><strong>Ethereal Sight</strong> - You can see into the Ethereal Plane within 60 feet of you.
		   <br/>
		   <br/><strong>Greater Comprehension</strong> - You can read any language.
		   <br/>
		   <br/><strong>See Invisibility</strong> - You can see invisible creatures and objects within 10 feet of you that are within line of sight.'--<Description, nvarchar(max),>
           ,'Diviner_TheThirdEye'--<Code, nvarchar(50),>
		   ),
           ('Greater Portent'--<Name, nvarchar(50),>
           ,'Starting at 14th level, the visions in your dreams intensify and paint a more accurate picture in your mind of what is to come. You roll three d20s for your Portent feature, rather than two.'--<Description, nvarchar(max),>
           ,'Diviner_GreaterPortent'--<Code, nvarchar(50),>
		   ),

		   --Enchantment--
           ('Enchantment Savant'--<Name, nvarchar(50),>
           ,'Beginning when you select this school at 2nd level, the gold and time you must spend to copy an enchantment spell into your spellbook is halved.'--<Description, nvarchar(max),>
           ,'Enchanter_EnchantmentSavant'--<Code, nvarchar(50),>
		   ),
           ('Hypnotic Gaze'--<Name, nvarchar(50),>
           ,'Starting at 2nd level when you choose this school, your soft words and enchanting gaze can magically enthrall another creature. As an action, choose one creature that you can see within 5 feet of you. If the target can see or hear you, it must succeed on a Wisdom saving throw against your wizard spell save DC or be charmed by you until the end of your next turn. The charmed creature''s speed drops to O, and the creature is incapacitated and visibly dazed.
		   <br/>
		   <br/>On subsequent turns, you can use your action to maintain this effect, extending its duration until the end of your next turn. However, the effect ends if you move more than 5 feet away from the creature, if the creature can neither see nor hear you, or if the creature takes damage. 
		   <br/>
		   <br/>Once the effect ends, or if the creature succeeds on its initial saving throw against this effect, you can''t use this feature on that creature again until you finish a long rest.'--<Description, nvarchar(max),>
           ,'Enchanter_HypnoticGaze'--<Code, nvarchar(50),>
		   ),
           ('Instinctive Charm'--<Name, nvarchar(50),>
           ,'Beginning at 6th level, when a creature you can see within 30 feet of you makes an attack roll against you, you can use your reaction to divert the attack, provided that another creature is within the attack''s range. The attacker must make a Wisdom saving throw against your wizard spell save DC. On a failed save, the attacker must target the creature that is closest to it, not including you or itself. If multiple creatures are closest, lhe attacker chooses which one to target. On a successful save, you can''t use this feature on the attacker again until you finish a long rest.
		   <br/>
		   <br/>You must choose to use this feature before knowing whether the attack hits or misses. Creatures that can''t be charmed are immune to this effect.'--<Description, nvarchar(max),>
           ,'Enchanter_InstinctiveCharm'--<Code, nvarchar(50),>
		   ),
           ('Split Enchantment'--<Name, nvarchar(50),>
           ,'Starting at 10th level, when you cast an enchantment spell of 1st levei or higher that targets only one creature, you can have it target a second creature.'--<Description, nvarchar(max),>
           ,'Enchanter_SplitEnchantment'--<Code, nvarchar(50),>
		   ),
           ('Alter Memories'--<Name, nvarchar(50),>
           ,'At 14th level, you gain the ability to make a creature unaware of your magical influence on it. When you cast an enchantment spell to charm one or more creatures, you can alter one creature''s understanding so that it remains unaware of being charmed.
		   <br/>
		   <br/>Additionally, once before the spell expires, you can use your action to try to make the chosen creature forget some of the time it spent charmed. The creature must succeed on an Intelligence saving throw against your wizard spell save DC or lose a number of hours of its memories equal to 1 + your Charisma modifier (minimum 1). You can make the creature forget less time, and the amount of time can''t exceed the duration of your enchantment spell.'--<Description, nvarchar(max),>
           ,'Enchanter_AlterMemories'--<Code, nvarchar(50),>
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
		   <br/>
		   <br/>The first time you do so, you suffer no adverse effect. If you use this feature again before you finish a Long Rest, you take 2d12 necrotic damage for each level of the spell, immediately after you cast it. Each time you use this feature again before finishing a Long Rest, the necrotic damage per Spell Level increases by 1d12. This damage ignores Resistance and immunity.'--<Description, nvarchar(max),>
           ,'Evoker_Overchannel'--<Code, nvarchar(50),>
		   ),

		   --Illusion--
           ('Illusion Savant'--<Name, nvarchar(50),>
           ,'Beginning when you se1ect this school at 2nd level, the gold and time you must spend to copy an illusion spell into your spellbook is halved.'--<Description, nvarchar(max),>
           ,'Illusionist_IllusionSavant'--<Code, nvarchar(50),>
		   ),
           ('Improved Minor Illusion'--<Name, nvarchar(50),>
           ,'When you choose this school at 2nd level, you learn the minor illusion cantrip. lf you already know this cantrip, you learn a different wizard cantrip of your choice. The cantrip doesn''t count against your number of cantrips known.
		   <br/>
		   <br/>When you cast minar illusion, yau can create both a sound and an image with a single casting of the spell.'--<Description, nvarchar(max),>
           ,'Illusionist_ImprovedMinorIllusion'--<Code, nvarchar(50),>
		   ),
           ('Malleable Illusions'--<Name, nvarchar(50),>
           ,'Starting at 6th level, when you cast an illusion spell that has a duration of 1 minute or longer, you can use your action to change the nature of that illusion (using the spell''s normal parameters for lhe illusion), provided that you can see the illusion.'--<Description, nvarchar(max),>
           ,'Illusionist_MalleableIllusions'--<Code, nvarchar(50),>
		   ),
           ('Illusory Self'--<Name, nvarchar(50),>
           ,'Beginning at 10th level, you can create an illusory duplicate of yourself as an instant, almost instinctual reaction to danger. When a creature makes an attack roll against you, you can use your reaction to interpose the illusory duplicate between the attacker and yourself. The attack automatically misses you, then the ilIusion dissipates.
		   <br/>
		   <br/>Once you use this feature, you can''t use it again until you finish a short or long rest.'--<Description, nvarchar(max),>
           ,'Illusionist_IllusorySelf'--<Code, nvarchar(50),>
		   ),
           ('Illusory Reality'--<Name, nvarchar(50),>
           ,'By 14th level, you have learned the secret of weaving shadow magic into your illusions to give them a semi-reality. When you cast an illusion spell of 1st level or higher, you can choose one inanimate, nonmagical object that is part of the illusion and make that object real. You can do this on your turn as a bonus action while the spell is ongoing. The object remains real for 1 minute. For example, you can create an illusion of a bridge over a chasm and then make it real long enough for your allies to cross.
		   <br/>
		   <br/>The object can''t deal damage or otherwise directly harm anyone.'--<Description, nvarchar(max),>
           ,'Illusionist_IllusoryReality'--<Code, nvarchar(50),>
		   ),

		   --Necromancy--
           ('Necromancy Savant'--<Name, nvarchar(50),>
           ,'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a necromancy spell into your spellbook is halved.'--<Description, nvarchar(max),>
           ,'Necromancer_NecromancySavant'--<Code, nvarchar(50),>
		   ),
           ('Grim Harvest'--<Name, nvarchar(50),>
           ,'At 2nd level, you gain the ability to reap life energy from creatures you kill with your spells. Once per turn when you kill one ar more creatures with a spell of 1st level or higher, you regain hit points equal to twice the spell''s level, or three times its level if the spell belongs to the School of Necromancy. You don''t gain this benefit for killing constructs or undead.'--<Description, nvarchar(max),>
           ,'Necromancer_GrimHarvest'--<Code, nvarchar(50),>
		   ),
           ('Undead Thralls'--<Name, nvarchar(50),>
           ,'At 6th level, you add the animate dead spell to your spellbook if it is not there already, When you cast animate dead, you can target one additional corpse or pile of bones, creating another zombie or ske1eton, as appropriate.
		   <br/>
		   <br/>Whenever you create an undead using a necromancy spell, it has additional benefits:
		   <br/>
		   <br/>The creature''s hit point maximum is increased by an amount equal to your wizard level.
		   <br/>
		   <br/>The creature adds your proficiency bonus to its weapon damage rolls,'--<Description, nvarchar(max),>
           ,'Necromancer_UndeadThralls'--<Code, nvarchar(50),>
		   ),
           ('Inured To Undeath'--<Name, nvarchar(50),>
           ,'Beginning at 10th level, you have resistance to necrotic damage, and your hit point maximum can''t be reduced. You have spent so much time dealing with undead and the forces that animate them that you have become inured to some of their worst effects.'--<Description, nvarchar(max),>
           ,'Necromancer_InuredToUndeath'--<Code, nvarchar(50),>
		   ),
           ('Command Undead'--<Name, nvarchar(50),>
           ,'Starting at 14th level, you can use magic to bring undead under your control, even those created by other wizards. As an action, you can choose one undead that you can see within 60 feet of you. That creature must make a Charisma saving throw against your wizard spell save DC. If it succeeds, you can''t use this feature on it again. If it fails, it becomes friendly to you and obeys your commands until you use this feature again.
		   <br/>
		   <br/>Intelligent undead are harder to control in this way. If the target has an Intelligence of 8 or higher, it has advantage on the saving throw. If it fails the saving throw and has an Intelligence of 12 or higher, it can repeat the saving throw at the end of every hour until it succeeds and breaks free.'--<Description, nvarchar(max),>
           ,'Necromancer_CommandUndead'--<Code, nvarchar(50),>
		   ),

		   --Transmutation--
           ('Transmutation Savant'--<Name, nvarchar(50),>
           ,'Beginning when you select this school at 2nd level, the gold and time you must spend to copy a transmutation spell into your spellbook is halved.'--<Description, nvarchar(max),>
           ,'Transmuter_TransmutationSavant'--<Code, nvarchar(50),>
		   ),
           ('Minor Alchemy'--<Name, nvarchar(50),>
           ,'Starting at 2nd level when you select this school, you can temporarily alter the physical properties of one nonmagical object, changing it from one substance into another. You perform a special alchemical procedure on one object composed entire1y of wood, stone (but not a gemstone), iron, copper, or silver, transforming it into a different one of those materiais. For each 10 minutes you spend performing the procedure, you can transform up to I cubic foot of material. After 1 hour, or until you lose your concentration (as if you were concentrating on a spell), the material reverts to its original substance.'--<Description, nvarchar(max),>
           ,'Transmuter_MinorAlchemy'--<Code, nvarchar(50),>
		   ),
           ('Transmuter''s Stone'--<Name, nvarchar(50),>
           ,'Starting at 6th level, you can spend 8 hours creating a transmuter''s stone that stores transmutation magic. You can benefit from the stone yourself or give it to another creature. A creature gains a benefit of your choice as long as the stone is in the creature''s possession. When you create the stone, choose the benefit from the following options:
		   <br/>
		   <br/>Darkvision out to a range of 60 feet, as described in chapter 8
		   <br/>
		   <br/>An increase to speed of lO feet while the creature is unencumbered
		   <br/>
		   <br/>Proficiency in Constitution saving throws
		   <br/>
		   <br/>Resistance to acid, cold, fire, lightning, or thunder damage (your choice whenever you choose this benefit)
		   <br/>
		   <br/>Each time you cast a transmutation spell of Ist level or higher, you can change the effect of your stone if the stone is on your person. If you create a new transmuter''s stone, the previous one ceases to function.'--<Description, nvarchar(max),>
           ,'Transmuter_TransmutersStone'--<Code, nvarchar(50),>
		   ),
           ('Shapechanger'--<Name, nvarchar(50),>
           ,'At 10th level, you add the polymorph spell to your spellbook, if it is not there already. You can cast polymorph without expending a spell slot. When you do so, you can target only yourself and transform into a beast whose challenge rating is 1 or lower.
		   <br/>
		   <br/>Once you cast polymorph in this way, you can''t do so again until you finish a short or long rest, though you can still cast it normally using an available spell slot.'--<Description, nvarchar(max),>
           ,'Transmuter_Shapechanger'--<Code, nvarchar(50),>
		   ),
           ('Master Transmuter'--<Name, nvarchar(50),>
           ,'Starting at 14th level, you can use your action to consume the reserve of transmutation magic stored within your transmuter''s stone in a single burst. When you do so, choose one of the following effects. Your transmuter''s stone is destroyed and can''t be remade until you finish a long rest.
		   <br/>
		   <br/><strong>Minor Transformation</strong> - You can transmute one nonmagical object - no larger than a 5 foot cube - into another nonmagical object of similar size and mass and of equal or lesser value. You must spend 10 minutes handling the object to transform it.
		   <br/>
		   <br/><strong>Panacea</strong> - You remove all curses, diseases, and poisons affecting a creature that you touch with the transmuter''s stone. The creature also regains all its hit points.
		   <br/>
		   <br/><strong>Restore Life</strong> - You cast the raise dead spell on a creature you touch with the transmuter''s stone, without expending a spell slot or needing to have the spell in your spellbook.
		   <br/>
		   <br/><strong>Restore Youth</strong> - You touch the transmuter''s stone to a willing creature, and that creature''s apparent age is reduced by 3d1O years, to a minimum of 13 years. This effect doesn''t extend lhe creature''s lifespan.'--<Description, nvarchar(max),>
           ,'Transmuter_MasterTransmuter'--<Code, nvarchar(50),>
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
		   <br/>
		   <br/>You prepare the list of Wizard Spells that are available for you to cast. To do so, choose a number of Wizard Spells from your Spellbook equal to your Intelligence modifier + your Wizard level (minimum of one spell). The Spells must be of a level for which you have Spell Slots.
		   <br/>
		   <br/>For example, if you''re a 3rd-level Wizard, you have four 1st-level and two 2nd-level Spell Slots. With an Intelligence of 16, your list of prepared Spells can include six Spells of 1st or 2nd level, in any combination, chosen from your Spellbook. If you prepare the 1st-level spell Magic Missile, you can cast it using a 1st-level or a 2nd-level slot. Casting the spell doesn''t remove it from your list of prepared Spells.
		   <br/>
		   <br/>You can change your list of prepared Spells when you finish a Long Rest. Preparing a new list of Wizard Spells requires time spent studying your Spellbook and memorizing the incantations and gestures you must make to cast the spell: at least 1 minute per Spell Level for each spell on your list.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Wizard')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'SpellcastingAbility')--<FeatureId, int,>
		   ,1--<Level, int>
           ,'Intelligence is your Spellcasting Ability for your Wizard Spells, since you learn your Spells through dedicated study and memorization. You use your Intelligence whenever a spell refers to your Spellcasting Ability. In addition, you use your Intelligence modifier when setting the saving throw DC for a Wizard spell you cast and when Making an Attack roll with one.
		   <br/>
		   <br/>Spell save DC = 8 + your Proficiency Bonus + your Intelligence modifier
		   <br/>
		   <br/>Spell Attack modifier = your Proficiency Bonus + your Intelligence modifier'--<Description, int,>
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

		   --Abjuration--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Abjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Abjurer_AbjurationSavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Abjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Abjurer_ArcaneWard')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Abjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Abjurer_ProjectedWard')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Abjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Abjurer_ImprovedAbjuration')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Abjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Abjurer_SpellResistance')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Conjuration--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Conjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Conjurer_ConjurationSavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Conjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Conjurer_MinorConjuration')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Conjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Conjurer_BenignTransposition')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Conjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Conjurer_FocusedConjuration')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Conjurer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Conjurer_DurableSummons')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Divination--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Diviner')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Diviner_DivinationSavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Diviner')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Diviner_Portent')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Diviner')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Diviner_ExpertDivination')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Diviner')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Diviner_TheThirdEye')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Diviner')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Diviner_GreaterPortent')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Enchantment--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Enchanter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Enchanter_EnchantmentSavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Enchanter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Enchanter_HypnoticGaze')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Enchanter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Enchanter_InstinctiveCharm')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Enchanter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Enchanter_SplitEnchantment')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Enchanter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Enchanter_AlterMemories')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Evocation--
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
		   ),

		   --Illusion--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Illusionist')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Illusionist_IllusionSavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Illusionist')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Illusionist_ImprovedMinorIllusion')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Illusionist')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Illusionist_MalleableIllusions')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Illusionist')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Illusionist_IllusorySelf')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Illusionist')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Illusionist_IllusoryReality')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Necromancy--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Necromancer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Necromancer_NecromancySavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Necromancer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Necromancer_GrimHarvest')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Necromancer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Necromancer_UndeadThralls')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Necromancer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Necromancer_InuredToUndeath')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Necromancer')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Necromancer_CommandUndead')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Transmutation--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Transmuter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Transmuter_TransmutationSavant')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Transmuter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Transmuter_MinorAlchemy')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Transmuter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Transmuter_TransmutersStone')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Transmuter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Transmuter_Shapechanger')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Transmuter')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Transmuter_MasterTransmuter')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )
GO