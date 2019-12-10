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

:r .\"PopulateSource.sql"
:r .\"PopulateCharacterGenerationMethod.sql"
:r .\"PopulateAbility.sql"
:r .\"PopulateSkill.sql"
:r .\"PopulateAlignment.sql"
:r .\"PopulateTraitType.sql"
:r .\"PopulateDamageType.sql"
:r .\Spells\"PopulateSpellSchool.sql"

--PHB
:r .\Spells\PHB\"PopulateSpell_0.sql"
:r .\Spells\PHB\"PopulateSpell_1.sql"
:r .\Spells\PHB\"PopulateSpell_2.sql"
:r .\Spells\PHB\"PopulateSpell_3.sql"
:r .\Spells\PHB\"PopulateSpell_4.sql"
:r .\Spells\PHB\"PopulateSpell_5.sql"
:r .\Spells\PHB\"PopulateSpell_6.sql"
:r .\Spells\PHB\"PopulateSpell_7.sql"
:r .\Spells\PHB\"PopulateSpell_8.sql"
:r .\Spells\PHB\"PopulateSpell_9.sql"
:r .\Spells\PHB\"PopulateSpellList.sql"
:r .\Spells\PHB\"PopulateSpellList_Bard.sql"
:r .\Spells\PHB\"PopulateSpellList_Cleric.sql"
:r .\Spells\PHB\"PopulateSpellList_Druid.sql"
:r .\Spells\PHB\"PopulateSpellList_Paladin.sql"
:r .\Spells\PHB\"PopulateSpellList_Ranger.sql"
:r .\Spells\PHB\"PopulateSpellList_Sorceror.sql"
:r .\Spells\PHB\"PopulateSpellList_Warlock.sql"
:r .\Spells\PHB\"PopulateSpellList_Wizard.sql"


:r .\Class\PHB\"PopulateClass.sql"
:r .\Class\PHB\"PopulateClassSkill.sql"
:r .\Class\PHB\"PopulateArchetype.sql"

:r .\Race\PHB\"PopulateRace.sql"
:r .\Race\PHB\"PopulateSubRace.sql"
:r .\Race\PHB\"PopulateLanguage.sql"
:r .\Race\PHB\"PopulateRaceLanguage.sql"

:r .\Background\PHB\"PopulateBackground.sql"
:r .\Background\PHB\"PopulateBgSkill.sql"

:r .\Features\PHB\"PopulateFeature.sql"

:r .\Features\PHB\Race\"PopulateFeature_Dragonborn.sql"
:r .\Features\PHB\Race\"PopulateFeature_Dwarf.sql"
:r .\Features\PHB\Race\"PopulateFeature_Elf.sql"
:r .\Features\PHB\Race\"PopulateFeature_Halfling.sql"
:r .\Features\PHB\Race\"PopulateFeature_HalfElf.sql"
:r .\Features\PHB\Race\"PopulateFeature_HalfOrc.sql"
:r .\Features\PHB\Race\"PopulateFeature_Human.sql"
:r .\Features\PHB\Race\"PopulateFeature_Gnome.sql"
:r .\Features\PHB\Race\"PopulateFeature_Tiefling.sql"

:r .\Features\PHB\Class\"PopulateFeature_Fighter.sql"
:r .\Features\PHB\Class\"PopulateFeature_Rogue.sql"
:r .\Features\PHB\Class\"PopulateFeature_Sorceror.sql"
:r .\Features\PHB\Class\"PopulateFeature_Wizard.sql"

:r .\Equipment\PHB\"PopulateWeaponType.sql"
:r .\Equipment\PHB\"PopulateArmorType.sql"
:r .\Equipment\PHB\"PopulateEquipmentType.sql"
:r .\Equipment\PHB\"PopulateEquipment_Weapons.sql"
:r .\Equipment\PHB\"PopulateEquipment_WeaponsPlus1.sql"
:r .\Equipment\PHB\"PopulateEquipment_WeaponsPlus2.sql"
:r .\Equipment\PHB\"PopulateEquipment_WeaponsPlus3.sql"
:r .\Equipment\PHB\"PopulateEquipment_Armor.sql"
:r .\Equipment\PHB\"PopulateEquipment_ArmorPlus1.sql"
:r .\Equipment\PHB\"PopulateEquipment_ArmorPlus2.sql"
:r .\Equipment\PHB\"PopulateEquipment_ArmorPlus3.sql"
:r .\Equipment\PHB\"PopulateEquipment_Clothing.sql"

:r .\Treasure\PHB\"PopulateTreasure.sql"

--XGtE--

:r .\Spells\XGtE\"PopulateSpell_0.sql"
:r .\Spells\XGtE\"PopulateSpell_1.sql"
:r .\Spells\XGtE\"PopulateSpell_2.sql"
:r .\Spells\XGtE\"PopulateSpell_3.sql"
:r .\Spells\XGtE\"PopulateSpell_4.sql"
:r .\Spells\XGtE\"PopulateSpell_5.sql"
:r .\Spells\XGtE\"PopulateSpell_6.sql"
:r .\Spells\XGtE\"PopulateSpell_7.sql"
:r .\Spells\XGtE\"PopulateSpell_8.sql"
:r .\Spells\XGtE\"PopulateSpell_9.sql"


--Test Data
:r .\"PopulateTestPCs.sql"

