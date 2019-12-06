INSERT INTO [dbo].[Treasure]
           ([Name]
           ,[Description]
           ,[Weight]
           ,[Value]
		   ,[ImagePath])
     VALUES
           ('Diamond'--<Name, nvarchar(150),>
           ,'A valuable gemstone'--<Description, nvarchar(max),>
           ,0--<Weight, int,>
           ,5000--<Value, int,>
		   ,NULL--<ImagePath, nvarchar(150),>
		   ),
           ('Ruby'--<Name, nvarchar(150),>
           ,'A valuable gemstone'--<Description, nvarchar(max),>
           ,0--<Weight, int,>
           ,3000--<Value, int,>
		   ,NULL--<ImagePath, nvarchar(150),>
		   ),
           ('Pearl'--<Name, nvarchar(150),>
           ,'A valuable gemstone'--<Description, nvarchar(max),>
           ,0--<Weight, int,>
           ,2000--<Value, int,>
		   ,NULL--<ImagePath, nvarchar(150),>
		   ),
           ('Topaz'--<Name, nvarchar(150),>
           ,'A valuable gemstone'--<Description, nvarchar(max),>
           ,0--<Weight, int,>
           ,2500--<Value, int,>
		   ,NULL--<ImagePath, nvarchar(150),>
		   ),
           ('Book'--<Name, nvarchar(150),>
           ,'A leather bound book'--<Description, nvarchar(max),>
           ,0--<Weight, int,>
           ,10--<Value, int,>
		   ,NULL--<ImagePath, nvarchar(150),>
		   )
GO