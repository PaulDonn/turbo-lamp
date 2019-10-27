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
           ,[IsMagical]
		   ,[ImagePath])
     VALUES
           ('Padded armor +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,8--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Padded')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Leather armor +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Leather')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Studded Leather armor +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,13--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Studded Leather')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Hide armor +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,12--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Hide')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Chain shirt +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,20--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Chain shirt')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Scale mail +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,45--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Scale mail')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Breastplate +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,20--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Breastplate')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Half plate armor +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,40--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Half plate')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Ring mail +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,40--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Ring mail')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Chain mail +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,55--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Chain mail')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Splint armor +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,60--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Splint')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   ),
           ('Plate armor +1'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,65--<Weight, int,>
           ,500000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Plate')--<ArmorTypeId, int,>
           ,1--<Bonus, int,>
           ,1--<IsMagical, bit,>
		   ,null--<ImagePath, nvarchar(150)>
		   )
GO