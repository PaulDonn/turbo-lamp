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
:r .\"PopulateSource.sql"
:r .\Spells\"PopulateSpellSchool.sql"
:r .\Spells\"PopulateSpell_0.sql"
:r .\Spells\"PopulateSpell_1.sql"
:r .\Spells\"PopulateSpell_2.sql"
:r .\Spells\"PopulateSpell_3.sql"
:r .\Spells\"PopulateSpell_4.sql"
:r .\Spells\"PopulateSpell_5.sql"
:r .\Spells\"PopulateSpell_6.sql"
:r .\Spells\"PopulateSpell_7.sql"
:r .\Spells\"PopulateSpell_8.sql"
:r .\Spells\"PopulateSpell_9.sql"
:r .\Spells\"PopulateSpellList.sql"
:r .\Spells\"PopulateSpellList_Bard.sql"
:r .\Spells\"PopulateSpellList_Cleric.sql"
:r .\Spells\"PopulateSpellList_Druid.sql"
:r .\Spells\"PopulateSpellList_Paladin.sql"
:r .\Spells\"PopulateSpellList_Ranger.sql"
:r .\Spells\"PopulateSpellList_Sorceror.sql"
:r .\Spells\"PopulateSpellList_Warlock.sql"
:r .\Spells\"PopulateSpellList_Wizard.sql"

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

:r .\Equipment\"PopulateWeaponType.sql"
:r .\Equipment\"PopulateArmorType.sql"
:r .\Equipment\"PopulateEquipmentType.sql"
:r .\Equipment\"PopulateEquipment_Weapons.sql"
:r .\Equipment\"PopulateEquipment_WeaponsPlus1.sql"
:r .\Equipment\"PopulateEquipment_WeaponsPlus2.sql"
:r .\Equipment\"PopulateEquipment_WeaponsPlus3.sql"
:r .\Equipment\"PopulateEquipment_Armor.sql"
:r .\Equipment\"PopulateEquipment_ArmorPlus1.sql"
:r .\Equipment\"PopulateEquipment_ArmorPlus2.sql"
:r .\Equipment\"PopulateEquipment_ArmorPlus3.sql"
:r .\Equipment\"PopulateEquipment_Clothing.sql"
:r .\Equipment\"PopulateTreasure.sql"
:r .\"PopulateCharacterGenerationMethod.sql"

:r .\Features\"PopulateFeature.sql"

:r .\Features\Race\"PopulateFeature_Dragonborn.sql"
:r .\Features\Race\"PopulateFeature_Dwarf.sql"
:r .\Features\Race\"PopulateFeature_Elf.sql"
:r .\Features\Race\"PopulateFeature_Halfling.sql"
:r .\Features\Race\"PopulateFeature_HalfElf.sql"
:r .\Features\Race\"PopulateFeature_HalfOrc.sql"
:r .\Features\Race\"PopulateFeature_Human.sql"
:r .\Features\Race\"PopulateFeature_Gnome.sql"
:r .\Features\Race\"PopulateFeature_Tiefling.sql"

:r .\Features\Class\"PopulateFeature_Fighter.sql"
:r .\Features\Class\"PopulateFeature_Rogue.sql"
:r .\Features\Class\"PopulateFeature_Sorceror.sql"
:r .\Features\Class\"PopulateFeature_Wizard.sql"


--Test Data
:r .\"PopulateTestPCs.sql"

