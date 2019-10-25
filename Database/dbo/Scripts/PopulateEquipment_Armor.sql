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
           ('Padded armor'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,8--<Weight, int,>
           ,500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Padded')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Leather armor'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,10--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Leather')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Studded Leather armor'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,13--<Weight, int,>
           ,4500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Studded Leather')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Hide armor'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,12--<Weight, int,>
           ,1000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Hide')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Chain shirt'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,20--<Weight, int,>
           ,5000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Chain shirt')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Scale mail'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,45--<Weight, int,>
           ,5000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Scale mail')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Breastplate'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,20--<Weight, int,>
           ,40000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Breastplate')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Half plate armor'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,40--<Weight, int,>
           ,75000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Half plate')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Ring mail'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,40--<Weight, int,>
           ,3000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Ring mail')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Chain mail'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,55--<Weight, int,>
           ,7500--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Chain mail')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Splint armor'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,60--<Weight, int,>
           ,20000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Splint')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Plate armor'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Armor')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,65--<Weight, int,>
           ,150000--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,(SELECT Id FROM ArmorType WHERE [Name] = 'Plate')--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   )
GO