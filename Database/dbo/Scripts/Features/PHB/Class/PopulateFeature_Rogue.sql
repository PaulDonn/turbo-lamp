INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Expertise'--<Name, nvarchar(50),>
           ,'At 1st level, choose two of your skill proficiencies, or one of your skill proficiencies and your proficiency with thieves'' tools. Your proficiency bonus is doubled for any ability check you make that uses either of the chosen proficiencies.
		   
		   At 6th level, you can choose two more of your proficiencies (in skills or with thieves'' tools) to gain this benefit.'--<Description, nvarchar(max),>
           ,'Rogue_Expertise'--<Code, nvarchar(50),>
		   ),
           ('Sneak Attack'--<Name, nvarchar(50),>
           ,'Beginning at 1st level, you know how to strike subtly and exploit a foe''s distraction. Once per turn, you can deal an extra 1d6 damage to one creature you hit with an attack if you have advantage on the attack roll. The attack must use a finesse or a ranged weapon.
		   
		   You don''t need advantage on the attack roll if another enemy of the target is within 5 feet of it, that enemy isn''t incapacitated, and you don''t have disadvantage on the attack roll.
		   
		   The amount of the extra damage increases as you gain levels in this class, as shown in the Sneak Attack column of the Rogue table.'--<Description, nvarchar(max),>
           ,'Rogue_SneakAttack'--<Code, nvarchar(50),>
		   ),
           ('Thieves'' Cant'--<Name, nvarchar(50),>
           ,'During your rogue training you learned thieves'' cant, a secret mix of dialect, jargon, and code that allows you to hide messages in seemingly normal conversation. Only another creature that knows thieves'' cant understands such messages. It takes four times longer to convey such a message than it does to speak the same idea plainly.
		   
		   In addition, you understand a set of secret signs and symbols used to convey short, simple messages, such as whether an area is dangerous or the territory of a thieves'' guild, whether loot is nearby, or whether the people in an area are easy marks or will provide a safe house for thieves on the run.'--<Description, nvarchar(max),>
           ,'Rogue_ThievesCant'--<Code, nvarchar(50),>
		   ),
           ('Cunning Action'--<Name, nvarchar(50),>
           ,'Starting at 2nd level, your quick thinking and agility allow you to move and act quickly. You can take a bonus action on each of your turns in combat. This action can be used only to take the Dash, Disengage, or Hide action.'--<Description, nvarchar(max),>
           ,'Rogue_CunningAction'--<Code, nvarchar(50),>
		   ),
           ('Roguish Archetype'--<Name, nvarchar(50),>
           ,'At 3rd level, you choose an archetype that you emulate in the exercise of your rogue abilities: Thief, Assassin, or Arcane Trickster. Your archetype choice grants you features at 3rd level and then again at 9th, 13th, and 17th level.'--<Description, nvarchar(max),>
           ,'Rogue_RoguishArchetype'--<Code, nvarchar(50),>
		   ),
           ('Uncanny Dodge'--<Name, nvarchar(50),>
           ,'Starting at 5th level, when an attacker that you can see hits you with an attack, you can use your reaction to halve the attack''s damage against you.'--<Description, nvarchar(max),>
           ,'Rogue_UncannyDodge'--<Code, nvarchar(50),>
		   ),
           ('Evasion'--<Name, nvarchar(50),>
           ,'Beginning at 7th level, you can nimbly dodge out of the way of certain area effects, such as a red dragon''s fiery breath or an ice storm spell. When you are subjected to an effect that allows you to make a Dexterity saving throw to take only half damage, you instead take no damage if you succeed on the saving throw, and only half damage if you fail'--<Description, nvarchar(max),>
           ,'Rogue_Evasion'--<Code, nvarchar(50),>
		   ),
           ('Reliable Talent'--<Name, nvarchar(50),>
           ,'By 11th level, you have refined your chosen skills until they approach perfection. Whenever you make an ability check that lets you add your proficiency bonus, you can treat a d20 roll of 9 or lower as a 10.'--<Description, nvarchar(max),>
           ,'Rogue_ReliableTalent'--<Code, nvarchar(50),>
		   ),
           ('Blindsense'--<Name, nvarchar(50),>
           ,'Starting at 14th level, if you are able to hear, you are aware of the location of any hidden or invisible creature within 1O feet of you.'--<Description, nvarchar(max),>
           ,'Rogue_Blindsense'--<Code, nvarchar(50),>
		   ),
           ('Slippery Mind'--<Name, nvarchar(50),>
           ,'By 15th level, you have acquired greater mental strength. You gain proficiency in Wisdom saving throws.'--<Description, nvarchar(max),>
           ,'Rogue_SlipperyMind'--<Code, nvarchar(50),>
		   ),
           ('Elusive'--<Name, nvarchar(50),>
           ,'Beginning at 18th level, you are so evasive that attackers rarely gain the upper hand against you. No attack roll has advantage against you while you aren''t incapacitated.'--<Description, nvarchar(max),>
           ,'Rogue_Elusive'--<Code, nvarchar(50),>
		   ),
           ('Stroke of Luck'--<Name, nvarchar(50),>
           ,'At 20th level, you have an uncanny knack for succeeding when you need to. If your attack misses a target within range, you can turn the miss into a hit. Alternatively, if you fail an ability check, you can treat the d20 roll as a 20.
		   
		   Once you use this feature, you can''t use it again until you finish a short or long rest.'--<Description, nvarchar(max),>
           ,'Rogue_StrokeOfLuck'--<Code, nvarchar(50),>
		   ),
           
		   --Thief--
           ('Fast Hands'--<Name, nvarchar(50),>
           ,'Starting at 3rd level, you can use the bonus action granted by your Cunning Action to make a Dexterity (Sleight of Hand) check, use your thieves'' tools to disarm a trap or open a lock, or take the Use an Object action.'--<Description, nvarchar(max),>
           ,'Thief_FastHands'--<Code, nvarchar(50),>
		   ),
           ('Second-Story Work'--<Name, nvarchar(50),>
           ,'When you choose this archetype at 3rd level, you gain the ability to climb faster than normal; climbing no longer costs you extra movement.
		   
		   In addition, when you make a running jump, the distance you cover increases by a number of feet equal to your Dexterity modifier.'--<Description, nvarchar(max),>
           ,'Thief_SecondStoryWork'--<Code, nvarchar(50),>
		   ),
           ('Supreme Sneak'--<Name, nvarchar(50),>
           ,'Starting at 9th level, you have advantage on a Dexterity (Stealth) check if you move no more than half your speed on the same turn.'--<Description, nvarchar(max),>
           ,'Thief_SupremeSneak'--<Code, nvarchar(50),>
		   ),
           ('Use Magic Device'--<Name, nvarchar(50),>
           ,'By 13th level, you have learned enough about the workings of magic that you can improvise the use of items even when they are not intended for you. You ignore all class, race, and level requirements on the use of magic items.'--<Description, nvarchar(max),>
           ,'Thief_UseMagicDevice'--<Code, nvarchar(50),>
		   ),
           ('Thief''s Reflexes'--<Name, nvarchar(50),>
           ,'When you reach 17th level, you have become adept at laying ambushes and quickly escaping danger. You can take two turns during the first round of any combat. You take your first turn at your normal initiative and your second turn at your initiative minus 10. You can''t use this feature when you are surprised.'--<Description, nvarchar(max),>
           ,'Thief_Reflexes'--<Code, nvarchar(50),>
		   ),

		   --Assassin--
           ('Bonus Proficiencies'--<Name, nvarchar(50),>
           ,'When you choose this archetype at 3rd level, you gain proficiency with the disguise kit and the poisoner''s kit.'--<Description, nvarchar(max),>
           ,'Assassin_BonusProficiencies'--<Code, nvarchar(50),>
		   ),
           ('Assassinate'--<Name, nvarchar(50),>
           ,'Starting at 3rd level, you are at your deadliest when you get the drop on your enemies. You have advantage on attack rolls against any creature that hasn''t taken a turn in the combat yet. In addition, any hit you score against a creature that is surprised is a criticai hit.'--<Description, nvarchar(max),>
           ,'Assassin_Assassinate'--<Code, nvarchar(50),>
		   ),
           ('Infiltration Expertise'--<Name, nvarchar(50),>
           ,'Starting at 9th level, you can unfailingly create false identities for yourself. You must spend seven days and 25 gp to establish the history, profession, and affiliations for an identity. You can''t establish an identity that belongs to someone else. For example, you might acquire appropriate clothing, letters of introduction, and official looking certification to establish yourself as a member of a trading house from a remote city so you can insinuate yourself into the company of other wealthy merchants.
		   
		   Thereafter, if you adopt the new identity as a disguise, other creatures believe you to be that person until given an obvious reason not to.'--<Description, nvarchar(max),>
           ,'Assassin_InfiltrationExpertise'--<Code, nvarchar(50),>
		   ),
           ('Imposter'--<Name, nvarchar(50),>
           ,'At 13th level, you gain the ability to unerringly mimic another person''s speech, writing, and behavior.
		   
		   You must spend at least three hours studying these three components of the person''s behavior, listening to speech, examining handwriting, and observing mannerisms.
		   
		   Your ruse is indiscernible to the casual observer. If a wary creature suspects something is amiss, you have advantage on any Charisma (Deception) check you make to avoid detection.'--<Description, nvarchar(max),>
           ,'Assassin_Imposter'--<Code, nvarchar(50),>
		   ),
           ('Death Strike'--<Name, nvarchar(50),>
           ,'Starting at 17th level, you become a master of instant death. When you attack and hit a creature that is surprised, it must make a Constitution saving throw (DC 8 + your Dexterity modifier + your proficiency bonus). On a failed save, double the damage of your attack against the creature.'--<Description, nvarchar(max),>
           ,'Assassin_DeathStrike'--<Code, nvarchar(50),>
		   ),

		   --Arcane Trickster--
           ('Mage Hand Legermain'--<Name, nvarchar(50),>
           ,'Starting at 3rd level, when you cast mage hand, you can make the spectral hand invisible, and you can perform the following additional tasks with it:
		   
		   -You can stow one object the hand is holding in a container worn or carried by another creature.
		   
		   -You can retrieve an object in a container worn or carried by another creature.
		   
		   -You can use thieves'' tools to pick locks and disarm traps at range.
		   
		   You can perform one of these tasks without being noticed by a creature if you succeed on a Dexterity (Sleight of Hand) check contested by the creature''s Wisdom (Perception) check.
		   
		   In addition, you can use the bonus action granted by your Cunning Action to controlthe hand.'--<Description, nvarchar(max),>
           ,'ArcaneTrickster_MageHandLegermain'--<Code, nvarchar(50),>
		   ),
           ('Magical Ambush'--<Name, nvarchar(50),>
           ,'Starting at 9th level, if you are hidden from a creature when you cast a spell on it, the creature has disadvantage on any saving throw it makes against the spell this turn.'--<Description, nvarchar(max),>
           ,'ArcaneTrickster_MagicalAmbush'--<Code, nvarchar(50),>
		   ),
           ('Versatile Trickster'--<Name, nvarchar(50),>
           ,'At 13th level, you gain the ability to distract targets with your mage hand. As a bonus action on your turn, you can designate a creature within 5 feet of the spectral hand created by the spell. Doing so gives you advantage on attack rolls against that creature until the end of the turn.'--<Description, nvarchar(max),>
           ,'ArcaneTrickster_VersatileTrickster'--<Code, nvarchar(50),>
		   ),
           ('Spell Thief'--<Name, nvarchar(50),>
           ,'At 17th level, you gain the ability to magically steal the knowledge of how to cast a spell from another spellcaster.
		   
		   Immediately after a creature casts a spell that targets you or includes you in its area of effect, you can use your reaction to force the creature to make a saving throw with its spellcasting ability modifier. The DC equals your spell save DC. On a failed save, you negate the spell''s effect against you, and you steal the knowledge of the spell if it is at least 1st leveI and of a level you can cast (it doesn''t need to be a wizard spell). For the next 8 hours, you know the spell and can cast it using your spell slolS. The crealure can''t cast that spell until the 8 hours have passed.
		   
		   Once you use this feature, you can''t use it again until you finish a long rest.'--<Description, nvarchar(max),>
           ,'ArcaneTrickster_SpellThief'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_Expertise')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_SneakAttack')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_ThievesCant')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_CunningAction')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_RoguishArchetype')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,4--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,8--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,12--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,16--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,19--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_UncannyDodge')--<FeatureId, int,>
		   ,5--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_Evasion')--<FeatureId, int,>
		   ,7--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_ReliableTalent')--<FeatureId, int,>
		   ,11--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_Blindsense')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_SlipperyMind')--<FeatureId, int,>
		   ,15--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_Elusive')--<FeatureId, int,>
		   ,18--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Rogue')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Rogue_StrokeOfLuck')--<FeatureId, int,>
		   ,20--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Thief--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Thief')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Thief_FastHands')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Thief')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Thief_SecondStoryWork')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Thief')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Thief_SupremeSneak')--<FeatureId, int,>
		   ,9--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Thief')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Thief_UseMagicDevice')--<FeatureId, int,>
		   ,13--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Thief')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Thief_Reflexes')--<FeatureId, int,>
		   ,17--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Assassin--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Assassin')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Assassin_BonusProficiencies')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Assassin')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Assassin_Assassinate')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Assassin')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Assassin_InfiltrationExpertise')--<FeatureId, int,>
		   ,9--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Assassin')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Assassin_Imposter')--<FeatureId, int,>
		   ,13--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Assassin')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Assassin_DeathStrike')--<FeatureId, int,>
		   ,17--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Arcane Trickster--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Arcane Trickster')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Spellcasting')--<FeatureId, int,>
		   ,3--<Level, int>
           ,'When you reach 3rd level, you gain the ability to cast spells.
		   
		   -Cantrips. You learn three cantrips: mage hand and two other cantrips of your choice fram the wizard spell list. You learn another wizard cantrip of your choice at 10th level.
		   
		   -Spell Slots. To cast a spell, you must expend a slot of the spell''s level or higher. You regain all expended spell slots when you finish a long rest.
		   
		   For example, if you know the 1st level spell charm person and have a 1st level and a 2nd level spell slot available, you can cast charm person using either slot.
		   
		   -Spells Known of 1st Level and Higher. You know three 1st level wizard spells of your choice, two of which you must choose from the enchantment and illusion spells on the wizard spell list. Spells learned later must be an enchantment or illusion spell of your choice, and must be of a level for which you have spell slots. For instance, when you reach 7th level in this c1ass, you can learn one new spell of 1st or 2nd level. The spells you learn at 8th. 14th, and 20th level can come fram any school of magic.
		   
		   Whenever you gain a level in this c1ass, you can replace one of the wizard spells you know with another spell of your choice from the wizard spell list. The new spell must be of a level for which you have spell slots. and it must be an enchantment or illusion spell, unless you''re replacing the spell you gained at 8th, 14th, ar 20th level.
		   
		   -Spellcasting Ability. Intelligence is your spellcasting ability for your wizard spells, since you learn your spells thraugh dedicated study and memorization.
		   
		   You use your Intelligence whenever a spell refers to your spellcasting ability. In addition, you use your Intelligence modifier when setting the saving throw DC for a wizard spell you cast and when making an attack roll with one.
		   
		   -Spell save DC = 8 + your proficiency bonus + your Intelligence modifier
		   
		   -Spell attack modifier = your proficiency bonus + your Intelligence modifier'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Arcane Trickster')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ArcaneTrickster_MageHandLegermain')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Arcane Trickster')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ArcaneTrickster_MagicalAmbush')--<FeatureId, int,>
		   ,9--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Arcane Trickster')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ArcaneTrickster_VersatileTrickster')--<FeatureId, int,>
		   ,13--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Arcane Trickster')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ArcaneTrickster_SpellThief')--<FeatureId, int,>
		   ,17--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )

GO