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
:r .\"PopulateAbility.sql"
:r .\"PopulateSkill.sql"
:r .\"PopulateAlignment.sql"
:r .\"PopulateClass.sql"
:r .\"PopulateArchetype.sql"
:r .\"PopulateRace.sql"
:r .\"PopulateSubRace.sql"
:r .\"PopulateBackground.sql"

