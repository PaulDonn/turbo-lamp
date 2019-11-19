INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Fighting Style'--<Name, nvarchar(50),>
           ,'You adopt a particular style of fighting as your specialty. You can''t take a Fighting Style option more than once, even if you later get to choose again.'--<Description, nvarchar(max),>
           ,'Fighter_FightingStyle'--<Code, nvarchar(50),>
		   ),
           ('Archery'--<Name, nvarchar(50),>
           ,'You gain a +2 bonus to attack rolls you make with ranged weapons.'--<Description, nvarchar(max),>
           ,'FightingStyle_Archery'--<Code, nvarchar(50),>
		   ),
           ('Defence'--<Name, nvarchar(50),>
           ,'While you are wearing armor, you gain a +1 bonus to AC.'--<Description, nvarchar(max),>
           ,'FightingStyle_Defence'--<Code, nvarchar(50),>
		   ),
           ('Dueling'--<Name, nvarchar(50),>
           ,'When you are wielding a melee weapon in one hand and no other weapons, you gain a +2 bonus to damage rolls with that weapon,'--<Description, nvarchar(max),>
           ,'FightingStyle_Dueling'--<Code, nvarchar(50),>
		   ),
           ('Great Weapon Fighting'--<Name, nvarchar(50),>
           ,'When you roll a 1 or 2 on a damage die for an attack you make with a melee weapon that you are wielding with two hands, you can reroll the die and must use the new roll, even if the new roll is a 1 or a 2. The weapon must have the two-handed or versatile property for you to gain this benefit.'--<Description, nvarchar(max),>
           ,'FightingStyle_GreatWeaponFighting'--<Code, nvarchar(50),>
		   ),
           ('Protection'--<Name, nvarchar(50),>
           ,'When a creature you can see attacks a target other than you that is within 5 feet of you, you can use your reaction to impose disadvantage on the attack roll. You must be wielding a shield.'--<Description, nvarchar(max),>
           ,'FightingStyle_Protection'--<Code, nvarchar(50),>
		   ),
           ('Two-Weapon Fighting'--<Name, nvarchar(50),>
           ,'When you engage in two-weapon fighting, you can add your ability modifier to the damage of the second attack.'--<Description, nvarchar(max),>
           ,'FightingStyle_TwoWeaponFighting'--<Code, nvarchar(50),>
		   ),
           ('Second Wind'--<Name, nvarchar(50),>
           ,'You have a limited well of stamina that you can draw on to protect yourself from harm. On your turn, you can use a bonus action to regain hit points equal to 1d10 + your fighter level. 
		   
		   Once you use this feature, you must finish a short or long rest before you can use it again.'--<Description, nvarchar(max),>
           ,'Fighter_SecondWind'--<Code, nvarchar(50),>
		   ),
           ('Action Surge'--<Name, nvarchar(50),>
           ,'Starting at 2nd level, you can push yourself beyond your normal limits for a moment. On your turn, you can take one additional action on top of your regular action and a possible bonus action.
		   
		   Once you use this feature, you must finish a short or long rest before you can use it again. Starting at 17th level, you can use it twice before a rest, but only once on the same turn.'--<Description, nvarchar(max),>
           ,'Fighter_ActionSurge'--<Code, nvarchar(50),>
		   ),
           ('Martial Archetype'--<Name, nvarchar(50),>
           ,'At 3rd level, you choose an archetype that you strive to emulate in your combat styles and techniques. The archetype you choose grants you features at 3rd level and again at 7th, 10th, 15th, and 18th level.'--<Description, nvarchar(max),>
           ,'Fighter_MartialArchetype'--<Code, nvarchar(50),>
		   ),
           ('Indomitable'--<Name, nvarchar(50),>
           ,'Beginning at 9th level, you can reroll a saving throw that you fail. If you do so, you must use the new roll, and you can''t use this feature again until you finish a long rest.
		   
		   You can use this feature twice between long rests starting at 13th level and three times between long rests starting at 17th level.'--<Description, nvarchar(max),>
           ,'Fighter_Indomitable'--<Code, nvarchar(50),>
		   ),
           
		   --Champion--
           ('Improved Critical'--<Name, nvarchar(50),>
           ,'Beginning when you choose this archetype at 3rd level, your weapon attacks score a critical hit on a roll of 19 or 20.'--<Description, nvarchar(max),>
           ,'Champion_ImprovedCritical'--<Code, nvarchar(50),>
		   ),
           ('Remarkable Athlete'--<Name, nvarchar(50),>
           ,'Starting at 7th level, you can add half your proficiency bonus (round up) to any Strength, Dexterity, or Constitutioo check you make that doesn''t already use your proficiency bonus. 
		   
		   In addition, when you make a running longjump, the distance you can cover increases by a number of feet equal to your Strength modifier.'--<Description, nvarchar(max),>
           ,'Champion_RemarkableAthlete'--<Code, nvarchar(50),>
		   ),
           ('Additional Fighting Style'--<Name, nvarchar(50),>
           ,'At 10th level, you can choose a second option from the Fighting Style class feature.'--<Description, nvarchar(max),>
           ,'Champion_AdditionalFightingStyle'--<Code, nvarchar(50),>
		   ),
           ('Superior Critical'--<Name, nvarchar(50),>
           ,'Starting at 15th level, your weapon attacks score a critical hit on a roll of 18-20.'--<Description, nvarchar(max),>
           ,'Champion_SuperiorCritical'--<Code, nvarchar(50),>
		   ),
           ('Survivor'--<Name, nvarchar(50),>
           ,'At 18th level, you attain the pinnacle of resilience in battle. At the start of each of your turns, you regain hit points equal to 5 + your Constitution modifier if you have no more than half of your hit points left. You don''t gain this benefit if you have O hit points.'--<Description, nvarchar(max),>
           ,'Champion_Survivor'--<Code, nvarchar(50),>
		   ),

		   --Battle Master--
           ('Combat Superiority'--<Name, nvarchar(50),>
           ,'When you choose this archetype at 3rd level, you learn maneuvers that are fueled by special dice called superiority dice.

		   -Maneuvers. You learn three maneuvers of your choice. Many maneuvers enhance an attack in some way. You can use only one maneuver per attack.
		   
		   You learn two additional maneuvers of your choice at 7th, 10th, and 15th level. Each time you learn new maneuvers, you can also replace one maneuver you know with a different one.
		   
		   -Superiority Dice. You have four superiority dice, which are d8s. A superiority die is expended when you use it. You regain all of your expended superiority dice when you finish a short or long rest.
		   
		   You gain another superiority die at 7th level and one more at 15th level.
		   
		   -Saving Throws. Some of your maneuvers require your target to make a saving throw to resist the maneuver''s effects. The saving throw DC is calculated as follows:
		   
		   Maneuver save DC = 8 + your profieieney bonus + your Strength or Dexterity modifier (your choice)'--<Description, nvarchar(max),>
           ,'BattleMaster_CombatSuperiority'--<Code, nvarchar(50),>
		   ),
           ('Student of War'--<Name, nvarchar(50),>
           ,'At 3rd level, you gain proficiency with one type of artisan''s tools of your choice.'--<Description, nvarchar(max),>
           ,'BattleMaster_StudentOfWar'--<Code, nvarchar(50),>
		   ),
           ('Know Your Enemy'--<Name, nvarchar(50),>
           ,'Starting at 7th level, if you spend at least 1 minute observing or interacting with another creature outside combat, you can learn certain information about its capabilities compared to your own. The DM tells you if the creature is your equal, superior, or inferior in regard to two of the following characteristics ofyour choice:
		   
		   -Strength score
		   
		   -Dexterity score
		   
		   -Constitution score
		   
		   -Armor Class
		   
		   -Current hit points
		   
		   -Total class leveIs (if any)
		   
		   -Fighter class leveIs (if any)'--<Description, nvarchar(max),>
           ,'BattleMaster_KnowYourEnemy'--<Code, nvarchar(50),>
		   ),
           ('Improved Combat Superiority'--<Name, nvarchar(50),>
           ,'At 10th level, your superiority dice turn into d1Os, At 18th level, they turn into d12s,'--<Description, nvarchar(max),>
           ,'BattleMaster_ImprovedCombatSuperiority'--<Code, nvarchar(50),>
		   ),
           ('Relentless'--<Name, nvarchar(50),>
           ,'Starting at 15th level, when you roll initiative and have no superiority dice remaining, you regain 1 superiority die.'--<Description, nvarchar(max),>
           ,'BattleMaster_Relentless'--<Code, nvarchar(50),>
		   ),
           ('Commanding Strike'--<Name, nvarchar(50),>
           ,'When you take the Attack action on your turn, you can forgo one of your attacks and use a bonus action to direct one of your companions to strike. When you do so, choose a friendly creature who can see or hear you and expend one superiority die. That creature can immediately use its reaction to make one weapon attack, adding the superiority die to the attack''s damage roll.'--<Description, nvarchar(max),>
           ,'Manuever_CommandingStrike'--<Code, nvarchar(50),>
		   ),
           ('Disarming Attack'--<Name, nvarchar(50),>
           ,'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to disarm the target, forcing it to drop one item of your choice that it''s holding. You add the superiority die to the attack''s damage roll, and the target must make a Strength saving throw. On a failed save, it drops the object you choose. The object lands at its fee!.'--<Description, nvarchar(max),>
           ,'Manuever_Disarming Attack'--<Code, nvarchar(50),>
		   ),
           ('Distracting Strike'--<Name, nvarchar(50),>
           ,'When you hit a creature with a weapon attack, you can expend one superiority die to distract the creature, giving your allies an opening. You add the superiority die to the attack''s damage roll. The next attack roll against the target by an attacker other than you has advantage if the attack is made before the start of your next turn,'--<Description, nvarchar(max),>
           ,'Manuever_DistractingStrike'--<Code, nvarchar(50),>
		   ),
           ('Evasive Footwork'--<Name, nvarchar(50),>
           ,'When you move, you can expend one superiority die, rolling the die and adding the number rolled to your AC until you stop moving.'--<Description, nvarchar(max),>
           ,'Manuever_EvasiveFootwork'--<Code, nvarchar(50),>
		   ),
           ('Feinting Attack'--<Name, nvarchar(50),>
           ,'Vou can expend one superiority die and use a bonus action on your turn to feint, choosing one creature within 5 feet of you as your target. You have advantage on your next attack roll against that creature. If that attack hits, add the superiority die to the attack''s damage roll.'--<Description, nvarchar(max),>
           ,'Manuever_FeintingAttack'--<Code, nvarchar(50),>
		   ),
           ('Goading Attack'--<Name, nvarchar(50),>
           ,'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to goad the target into attacking you. You add the superiority die to the attack''s damage roll, and the target must make a Wisdom saving throw. On a failed save, the target has disadvantage on all attack rolls against targets other than you until the end of your next turn.'--<Description, nvarchar(max),>
           ,'Manuever_GoadingAttack'--<Code, nvarchar(50),>
		   ),
           ('Lunging Attack'--<Name, nvarchar(50),>
           ,'When you make a melee weapon attack on your turn, you can expend one superiority die to increase your reach for that attack by 5 feet. If you hit, you add the superiority die to the attack''s damage roll.'--<Description, nvarchar(max),>
           ,'Manuever_LungingAttack'--<Code, nvarchar(50),>
		   ),
           ('Maneuvering Attack'--<Name, nvarchar(50),>
           ,'When you hit a creature with a weapon attack, you can expend one superiority die to maneuver one of your comrades into a more advantageous position. You add the superiority die to the attack''s damage roll, and you choose a friendly creature who can see or hear you. That creature can use its reaction to move up to half its speed without provoking opportunity attacks from the target of your attack.'--<Description, nvarchar(max),>
           ,'Manuever_ManeuveringAttack'--<Code, nvarchar(50),>
		   ),
           ('Menacing Attack'--<Name, nvarchar(50),>
           ,'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to frighten the target. You add the superiority die to the attack''s damage roll, and the target must make a Wisdom saving throw. On a failed save, it is frightened of you until the end of your next turn.'--<Description, nvarchar(max),>
           ,'Manuever_MenacingAttack'--<Code, nvarchar(50),>
		   ),
           ('Parry'--<Name, nvarchar(50),>
           ,'When another creature damages you with a melee attack, you can use your reaction and expend one superiority die to reduce the damage by the number you roll on your superiority die + your Dexterity modifier.'--<Description, nvarchar(max),>
           ,'Manuever_Parry'--<Code, nvarchar(50),>
		   ),
           ('Precision Attack'--<Name, nvarchar(50),>
           ,'When you make a weapon attack roll against a creature, you can expend one superiority die to add it to the roll. You can use this maneuver before or after making the attack roll, but before any effects of the attack are applied,'--<Description, nvarchar(max),>
           ,'Manuever_PrecisionAttack'--<Code, nvarchar(50),>
		   ),
           ('Pushing Attack'--<Name, nvarchar(50),>
           ,'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to drive the target back. You add the superiority die to the attack''s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. On a failed save, you push the target up to 15 feet away from you.'--<Description, nvarchar(max),>
           ,'Manuever_PushingAttack'--<Code, nvarchar(50),>
		   ),
           ('Rally'--<Name, nvarchar(50),>
           ,'On your turn, you can use a bonus action and expend one superiority die to bolster the resolve of one of your companions. When you do so, choose a friendly creature who can see or hear you. That creature gains temporary hit points equal to the superiority die roll + your Charisma modifier.'--<Description, nvarchar(max),>
           ,'Manuever_Rally'--<Code, nvarchar(50),>
		   ),
           ('Riposte'--<Name, nvarchar(50),>
           ,'When a creature misses you with a melee attack, you can use your reaction and expend one superiority die to make a melee weapon attack against the creature. If you hit, you add the superiority die to the attack''s damage roll.'--<Description, nvarchar(max),>
           ,'Manuever_Riposte'--<Code, nvarchar(50),>
		   ),
           ('Sweeping Attack'--<Name, nvarchar(50),>
           ,'When you hit a creature with a melee weapon attack, you can expend one superiority die to attempt to damage another creature with the same attack. Choose another creature within 5 feet of the original target and within your reach. If the original attack roll would hit the second creature, it takes damage equal to the number you roll on your superiority die. The damage is of the same type dealt by the original attack.'--<Description, nvarchar(max),>
           ,'Manuever_SweepingAttack'--<Code, nvarchar(50),>
		   ),
           ('Trip Attack'--<Name, nvarchar(50),>
           ,'When you hit a creature with a weapon attack, you can expend one superiority die to attempt to knock the target down. You add the superiority die to the attack''s damage roll, and if the target is Large or smaller, it must make a Strength saving throw. On a failed save, you knock the target prone,'--<Description, nvarchar(max),>
           ,'Manuever_TripAttack'--<Code, nvarchar(50),>
		   ),

		   --Eldritch Knight--
           ('Weapon Bond'--<Name, nvarchar(50),>
           ,'At 3rd level, you learn a ritual that creates a magical bond between yourself and one weapon. You perform the ritual over the course of 1 hour, which can be done during a short rest. The weapon must be within your reach throughout the ritual, at the conc1usion of which you touch the weapon and forge the bond. 
		   
		   Once you have bonded a weapon to yourself, you can''t be disarmed of that weapon unless you are incapacitated. If It is on the same plane of existence, you can summon that weapon as a bonus action on your turn, causing it to teleport instantiy to your hand.
		   
		   You can have up to two bonded weapons, but can summon only one at a time with your bonus action. 1f you attempt to bond with a third weapon, you must break the bond with one of the other two.'--<Description, nvarchar(max),>
           ,'EldritchKnight_WeaponBond'--<Code, nvarchar(50),>
		   ),
           ('War Magic'--<Name, nvarchar(50),>
           ,'Beginning at 7th level, when you use your action to cast a cantrip, you can make one weapon attack as a bonus action.'--<Description, nvarchar(max),>
           ,'EldritchKnight_WarMagic'--<Code, nvarchar(50),>
		   ),
           ('Eldritch Strike'--<Name, nvarchar(50),>
           ,'At 10th level, you learn how to make your weapon strikes undercut a creature''s resistance to your spells. When you hit a creature with a weapon attack, that creature has disadvantage on the next saving throw it makes against a spell you cast before the end of your next turn'--<Description, nvarchar(max),>
           ,'EldritchKnight_EldritchStrike'--<Code, nvarchar(50),>
		   ),
           ('Arcan Charge'--<Name, nvarchar(50),>
           ,'At 15th level, you gain the ability to teleport up to 30 feet to an unoccupied space you can see when you use your Action Surge. You can teleport before or after the additional action.'--<Description, nvarchar(max),>
           ,'EldritchKnight_ArcaneCharge'--<Code, nvarchar(50),>
		   ),
           ('Improved War Magic'--<Name, nvarchar(50),>
           ,'Starting at 18th level, when you use your action to cast a spell, you can make one weapon attack as a bonus action.'--<Description, nvarchar(max),>
           ,'EldritchKnight_ImprovedWarMagic'--<Code, nvarchar(50),>
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
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Fighter_FightingStyle')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Fighter_SecondWind')--<FeatureId, int,>
		   ,1--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Fighter_ActionSurge')--<FeatureId, int,>
		   ,2--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Fighter_MartialArchetype')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,4--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'ExtraAttack')--<FeatureId, int,>
		   ,5--<Level, int>
           ,'Beginning at 5th level, you can attack twice, instead of once, whenever you take the Attack action on your turn.
		   
		   The number of attacks increases to three when you reach 11th level in this c1ass and to four when you reach 20th level in this c1ass.'--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,6--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,8--<Level, int>
           ,null--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Fighter_Indomitable')--<FeatureId, int,>
		   ,9--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,12--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,14--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,16--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           ((SELECT TOP(1) Id FROM Class WHERE [Name] = 'Fighter')--<ClassId, int,>
           ,null--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'AbilityScoreImprovement')--<FeatureId, int,>
		   ,19--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Champion--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Champion')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Champion_ImprovedCritical')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Champion')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Champion_RemarkableAthlete')--<FeatureId, int,>
		   ,7--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Champion')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Champion_AdditionalFightingStyle')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Champion')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Champion_SuperiorCritical')--<FeatureId, int,>
		   ,15--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Champion')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Champion_Survivor')--<FeatureId, int,>
		   ,18--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Battle Master--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Battle Master')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BattleMaster_CombatSuperiority')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Battle Master')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BattleMaster_StudentOfWar')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Battle Master')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BattleMaster_KnowYourEnemy')--<FeatureId, int,>
		   ,7--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Battle Master')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BattleMaster_ImprovedCombatSuperiority')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Battle Master')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'BattleMaster_Relentless')--<FeatureId, int,>
		   ,15--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),

		   --Eldritch Knight--
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Eldritch Knight')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'Spellcasting')--<FeatureId, int,>
		   ,3--<Level, int>
           ,'When you reach 3rd level, you augment your martial prowess with the ability to cast spells.
		   
		   -Cantrips. You learn two cantrips of your choice from the wizard spell list. You learn an additional wizard cantrip of your choice at 10th level. 
		   
		   -Spell Slots. To cast spells, you must expend a slot of the spell''s levei or higher. You regain all expended spell slots when you finish a long rest. For example, if you know the 1st.level spell shield and have a 1st level and a 2nd level spell slot available, you can cast shieId using either slot.
		   
		   -Spells Known of 1st-LeveI and Higher. You know three 1st level wizard spells of your choice, two of which you must choose from the abjuration and evocation spells on the wizard spelllist. Spells learned later must be abjuration or evocation spells of your choice, and must be of a leveI for which you have spell slots. For instance, when you reach 7th levei in this c1ass, you can learn one new spell of 1st or 2nd level. 
		   
		   The spells you learn at 8th, 14th, and 20th leveI can come from any school of magic.
		   
		   Whenever you gain a level in this c1ass, you can replace one of the wizard spells you know with another spell of your choice from lhe wizard spelllist. The new spell must be of a level for which you have spell slots, and it must be an abjuration or evocation spell, unless you''re replacing the spell you gained at 8th, 14th, or 20th level.
		   
		   -Spellcasting Ability. Intelligence is your spellcasting ability for your wizard spells, since you learn your spells through study and memorization. You use your Intelligence whenever a spell refers to your spellcasting ability. In addition, you use your Intelligence modifier when setting the saving throw DC for a wizard spell you cast and when making an attack roll with one.
		   
		   -Spell save DC = 8 + your proficiency bonus + your Intelligence modifier.
		   
		   -Spell attack modifier = your proficiency bonus + your Intelligence modifier'--<Description, int,>
           ,1--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Eldritch Knight')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'EldritchKnight_WeaponBond')--<FeatureId, int,>
		   ,3--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Eldritch Knight')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'EldritchKnight_WarMagic')--<FeatureId, int,>
		   ,7--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Eldritch Knight')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'EldritchKnight_EldritchStrike')--<FeatureId, int,>
		   ,10--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Eldritch Knight')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'EldritchKnight_ArcaneCharge')--<FeatureId, int,>
		   ,15--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   ),
           (null--<ClassId, int,>
           ,(SELECT TOP(1) Id FROM Archetype WHERE [ShortName] = 'Eldritch Knight')--<ArchetypeId, int,>
           ,(SELECT TOP(1) Id FROM Feature WHERE [Code] = 'EldritchKnight_ImprovedWarMagic')--<FeatureId, int,>
		   ,18--<Level, int>
           ,null--<Description, int,>
           ,0--<Hidden, bit,>
		   )

GO