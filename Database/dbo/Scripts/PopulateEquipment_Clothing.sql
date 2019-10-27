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
           ('Robes'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Clothing')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,30--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ), 
           ('Ragged clothing'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Clothing')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,5--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),
           ('Modest Clothing'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Clothing')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,20--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ),           
           ('Expensive Clothing'--<Name, nvarchar(150),>
           ,(SELECT Id FROM EquipmentType WHERE [Name] = 'Clothing')--<EquipmentTypeId, int,>
           ,null--<Description, nvarchar(max),>
           ,0--<IsCursed, bit,>
           ,null--<CurseDescription, nvarchar(max),>
           ,2--<Weight, int,>
           ,100--<Value, int,>
           ,null--<PreRequisiteAbilityId, int,>
           ,null--<PreRequisiteAbilityScore, int,>
           ,null--<WeaponTypeId, int,>
           ,null--<ArmorTypeId, int,>
           ,0--<Bonus, int,>
           ,0--<IsMagical, bit,>
		   ) 
GO