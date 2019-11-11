INSERT INTO [dbo].[Feature]
           ([Name]
           ,[Description]
           ,[Code])
     VALUES
           ('Ability Score Increase'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'AbilityScoreIncrease'--<Code, nvarchar(50),>
		   ),
           ('Ability Score Improvement'--<Name, nvarchar(50),>
           ,'You can increase one ability score of your choice by 2, or you can increase two Ability Scores of your choice by 1. As normal, you can’t increase an ability score above 20 using this feature.'--<Description, nvarchar(max),>
           ,'AbilityScoreImprovement'--<Code, nvarchar(50),>
		   ),
           ('Age'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Age'--<Code, nvarchar(50),>
		   ),
           ('Alignment'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Alignment'--<Code, nvarchar(50),>
		   ),
           ('Size'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Size'--<Code, nvarchar(50),>
		   ),
           ('Speed'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Speed'--<Code, nvarchar(50),>
		   ),
           ('Darkvision'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Darkvision'--<Code, nvarchar(50),>
		   ),
           ('Languages'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Languages'--<Code, nvarchar(50),>
		   ),
           ('Spellcasting'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Spellcasting'--<Code, nvarchar(50),>
		   ),
           ('Cantrips'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'Cantrips'--<Code, nvarchar(50),>
		   ),
           ('Preparing and Casting Spells'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'PreparingSpells'--<Code, nvarchar(50),>
		   ),
           ('Spellcasting Ability'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'SpellcastingAbility'--<Code, nvarchar(50),>
		   ),
           ('Ritual Casting'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'RitualCasting'--<Code, nvarchar(50),>
		   ),
           ('Spellcasting Focus'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'SpellcastingFocus'--<Code, nvarchar(50),>
		   ),
           ('Learning Spells of 1st Level and Higher'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'LearningSpells'--<Code, nvarchar(50),>
		   ),
           ('Spells Known of 1st Level and Higher'--<Name, nvarchar(50),>
           ,''--<Description, nvarchar(max),>
           ,'SpellsKnown'--<Code, nvarchar(50),>
		   )
GO