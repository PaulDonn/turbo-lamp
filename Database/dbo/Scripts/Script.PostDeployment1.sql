﻿/*
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
:r .\"PopulateSource.sql"
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
:r .\"PopulateEquipment_Weapons.sql"
:r .\"PopulateEquipment_WeaponsPlus1.sql"
:r .\"PopulateEquipment_WeaponsPlus2.sql"
:r .\"PopulateEquipment_WeaponsPlus3.sql"
:r .\"PopulateEquipment_Armor.sql"
:r .\"PopulateEquipment_ArmorPlus1.sql"
:r .\"PopulateEquipment_ArmorPlus2.sql"
:r .\"PopulateEquipment_ArmorPlus3.sql"
:r .\"PopulateEquipment_Clothing.sql"
:r .\"PopulateTreasure.sql"
:r .\Features\"PopulateFeature.sql"


:r .\Features\"PopulateFeature_Dragonborn.sql"
:r .\Features\"PopulateFeature_Dwarf.sql"
:r .\Features\"PopulateFeature_Tiefling.sql"


:r .\Features\"PopulateFeature_Fighter.sql"
:r .\Features\"PopulateFeature_Wizard.sql"


--Test Data
:r .\"PopulateTestPCs.sql"

