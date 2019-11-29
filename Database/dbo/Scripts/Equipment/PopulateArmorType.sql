INSERT INTO [dbo].[ArmorType]
           ([Id]
           ,[Name]
           ,[Class]
           ,[BaseAC]
           ,[AddDexterityBonus]
           ,[DexterityBonusMax]
           ,[StrengthRequirement]
           ,[StealthDisadvantage])
     VALUES
           (1--<Id, int,>
           ,'Padded'--<Name, nvarchar(50),>
           ,'Light'--<Class, nvarchar(50),>
           ,11--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,null--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,1--<StealthDisadvantage, bit,>
		   ),
           (2--<Id, int,>
           ,'Leather'--<Name, nvarchar(50),>
           ,'Light'--<Class, nvarchar(50),>
           ,11--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,null--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,0--<StealthDisadvantage, bit,>
		   ),
           (3--<Id, int,>
           ,'Studded Leather'--<Name, nvarchar(50),>
           ,'Light'--<Class, nvarchar(50),>
           ,12--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,null--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,0--<StealthDisadvantage, bit,>
		   ),
           (4--<Id, int,>
           ,'Hide'--<Name, nvarchar(50),>
           ,'Medium'--<Class, nvarchar(50),>
           ,12--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,2--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,0--<StealthDisadvantage, bit,>
		   ),
           (5--<Id, int,>
           ,'Chain shirt'--<Name, nvarchar(50),>
           ,'Medium'--<Class, nvarchar(50),>
           ,13--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,2--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,0--<StealthDisadvantage, bit,>
		   ),
           (6--<Id, int,>
           ,'Scale mail'--<Name, nvarchar(50),>
           ,'Medium'--<Class, nvarchar(50),>
           ,14--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,2--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,1--<StealthDisadvantage, bit,>
		   ),
           (7--<Id, int,>
           ,'Breastplate'--<Name, nvarchar(50),>
           ,'Medium'--<Class, nvarchar(50),>
           ,14--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,2--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,0--<StealthDisadvantage, bit,>
		   ),
           (8--<Id, int,>
           ,'Half plate'--<Name, nvarchar(50),>
           ,'Medium'--<Class, nvarchar(50),>
           ,15--<BaseAC, int,>
           ,1--<AddDexterityBonus, bit,>
           ,2--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,1--<StealthDisadvantage, bit,>
		   ),
           (9--<Id, int,>
           ,'Ring mail'--<Name, nvarchar(50),>
           ,'Heavy'--<Class, nvarchar(50),>
           ,14--<BaseAC, int,>
           ,0--<AddDexterityBonus, bit,>
           ,null--<DexterityBonusMax, int,>
           ,null--<StrengthRequirement, int,>
           ,1--<StealthDisadvantage, bit,>
		   ),
           (10--<Id, int,>
           ,'Chain mail'--<Name, nvarchar(50),>
           ,'Heavy'--<Class, nvarchar(50),>
           ,16--<BaseAC, int,>
           ,0--<AddDexterityBonus, bit,>
           ,null--<DexterityBonusMax, int,>
           ,13--<StrengthRequirement, int,>
           ,1--<StealthDisadvantage, bit,>
		   ),
           (11--<Id, int,>
           ,'Splint'--<Name, nvarchar(50),>
           ,'Heavy'--<Class, nvarchar(50),>
           ,17--<BaseAC, int,>
           ,0--<AddDexterityBonus, bit,>
           ,null--<DexterityBonusMax, int,>
           ,15--<StrengthRequirement, int,>
           ,1--<StealthDisadvantage, bit,>
		   ),
           (12--<Id, int,>
           ,'Plate'--<Name, nvarchar(50),>
           ,'Heavy'--<Class, nvarchar(50),>
           ,18--<BaseAC, int,>
           ,0--<AddDexterityBonus, bit,>
           ,null--<DexterityBonusMax, int,>
           ,15--<StrengthRequirement, int,>
           ,1--<StealthDisadvantage, bit,>
		   )
GO
