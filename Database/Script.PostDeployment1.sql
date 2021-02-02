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


IF EXISTS(SELECT 1 FROM dbo.Setting s
          WHERE s.[Key] = N'ShowCallForAssistanceBtn')
BEGIN
    INSERT INTO dbo.Setting VALUES('1','ShowCallForAssistanceBtn')
END
