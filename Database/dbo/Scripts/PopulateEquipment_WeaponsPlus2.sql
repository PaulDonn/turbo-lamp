﻿INSERT INTO [dbo].[Equipment]
           ([Name]
           ,[EquipmentTypeId]
           ,[Description]
           ,[IsCursed]
           ,[CurseDescription]
           ,[Weight]
           ,[Value]
           ,[PreRequisiteAbilityId]
           ,[PreRequisiteAbilityScore]
           ,[WeaponTypeId]
           ,[ArmorTypeId]
           ,[Bonus]
           ,[IsMagical])
     VALUES
           ('Club +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Club')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Dagger +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,1--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Dagger')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Greatclub +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greatclub')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Handaxe +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Handaxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Javelin +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Javelin')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Light hammer +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Light hammer')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Mace +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Mace')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Quarterstaff +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Quarterstaff')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Sickle +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Sickle')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Spear +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Spear')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Light crossbow +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,5--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Light crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Dart +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,0--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Dart')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Shortbow +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Shortbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Sling +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,0--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Sling')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Battleaxe +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Battleaxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Flail +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Flail')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Glaive +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Glaive')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Greataxe +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,7--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greataxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Greatsword +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greatsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Halberd +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Halberd')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Lance +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Lance')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Longsword +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Longsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Maul +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Maul')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Morningstar +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Morningstar')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Pike +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,18--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Pike')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Rapier +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Rapier')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Scimitar +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Scimitar')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Shortsword +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Shortsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Trident +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Trident')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('War pick +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'War pick')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Warhammer +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Warhammer')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Whip +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Whip')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Blowgun +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,1--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Blowgun')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Hand crossbow +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Hand crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Heavy crossbow +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,18--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Heavy crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Longbow +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Longbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ),
           ('Net +2'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,400000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Net')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,2--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   )
GO