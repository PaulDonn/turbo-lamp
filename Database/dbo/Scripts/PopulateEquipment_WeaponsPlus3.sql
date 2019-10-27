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
           ,[IsMagical]
		   ,[ImagePath])
     VALUES
           ('Club +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Club')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Dagger +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,1--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Dagger')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Greatclub +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greatclub')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Handaxe +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Handaxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Javelin +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Javelin')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Light hammer +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Light hammer')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Mace +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Mace')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Quarterstaff +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Quarterstaff')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,'quarterstaff'--<ImagePath, nvarchar(150)>
		   ),
           ('Sickle +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Sickle')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Spear +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Spear')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Light crossbow +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,5--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Light crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Dart +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,0--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Dart')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Shortbow +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Shortbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Sling +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,0--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Sling')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Battleaxe +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Battleaxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Flail +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Flail')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Glaive +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Glaive')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Greataxe +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,7--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greataxe')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Greatsword +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Greatsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Halberd +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Halberd')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Lance +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,6--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Lance')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Longsword +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Longsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Maul +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Maul')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Morningstar +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Morningstar')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Pike +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,18--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Pike')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Rapier +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Rapier')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Scimitar +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Scimitar')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Shortsword +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Shortsword')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Trident +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,4--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Trident')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('War pick +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'War pick')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Warhammer +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Warhammer')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Whip +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Whip')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Blowgun +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,1--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Blowgun')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Hand crossbow +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Hand crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Heavy crossbow +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,18--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Heavy crossbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Longbow +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Longbow')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Net +3'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Weapon')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,3--<Weight, int,>
           ,1600000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,(SELECT Id FROM WeaponType WHERE [Name] = 'Net')--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,3--<ToHitBonus, int,>
           
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   )
GO