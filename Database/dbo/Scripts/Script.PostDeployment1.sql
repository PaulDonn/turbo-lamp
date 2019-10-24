/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--Standing Data
:r .\"PopulateSpellSchool.sql"
:r .\"PopulateSpell_0.sql"
:r .\"PopulateSpell_1.sql"
:r .\"PopulateSpell_2.sql"
:r .\"PopulateSpell_3.sql"
:r .\"PopulateSpell_4.sql"
:r .\"PopulateAbility.sql"
:r .\"PopulateSkill.sql"
:r .\"PopulateAlignment.sql"
:r .\"PopulateClass.sql"
:r .\"PopulateClassSkill.sql"
:r .\"PopulateArchetype.sql"
:r .\"PopulateRace.sql"
:r .\"PopulateSubRace.sql"
:r .\"PopulateBackground.sql"
:r .\"PopulateBgSkill.sql"
:r .\"PopulateLanguage.sql"
:r .\"PopulateRaceLanguage.sql"
:r .\"PopulateTraitType.sql"
:r .\"PopulateDamageType.sql"
:r .\"PopulateWeaponType.sql"
:r .\"PopulateArmorType.sql"
:r .\"PopulateEquipmentType.sql"

--Test Data
:r .\"PopulateTestPCs.sql"

