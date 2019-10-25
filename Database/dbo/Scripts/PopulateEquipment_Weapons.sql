INSERT INTO [dbo].[Equipment]
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
           ('Club'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,10--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Club')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Dagger'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,1--<Weight, int,>
           ,200--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Dagger')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Greatclub'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,20--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greatclub')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Handaxe'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Handaxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Javelin'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Javelin')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Light hammer'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,200--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Light hammer')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Mace'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Mace')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Quarterstaff'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,20--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Quarterstaff')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Sickle'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,100--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Sickle')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Spear'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,100--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Spear')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Light crossbow'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,5--<Weight, int,>
           ,2500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Light crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Dart'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,0--<Weight, int,>
           ,5--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Dart')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Shortbow'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,2500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Shortbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Sling'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,0--<Weight, int,>
           ,10--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Sling')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Battleaxe'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Battleaxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Flail'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Flail')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Glaive'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,2000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Glaive')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Greataxe'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,7--<Weight, int,>
           ,3000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greataxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Greatsword'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,5000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greatsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Halberd'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,2000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Halberd')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Lance'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Lance')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Longsword'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,1500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Longsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Maul'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Maul')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Morningstar'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,1500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Morningstar')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Pike'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,18--<Weight, int,>
           ,500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Pike')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Rapier'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,2500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Rapier')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Scimitar'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,2500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Scimitar')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Shortsword'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Shortsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Trident'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Trident')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('War pick'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'War pick')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Warhammer'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Warhammer')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Whip'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,200--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Whip')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Blowgun'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,1--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Blowgun')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Hand crossbow'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,7500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Hand crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Heavy crossbow'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,18--<Weight, int,>
           ,5000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Heavy crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Longbow'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,5000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Longbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   ),
           ('Net'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,100--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Net')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<ToHitBonus, int,>
           
           ,0--<IsMagical, bit,>
		   )
GO