
/* Batch run for checking if database table does not exist and if it doesn't 
it creates a new table and transfers data from another table into the newly created one */

IF OBJECT_ID ('[JobSatisfaction].[dbo].[ExtremeJobSatisfaction]') IS NULL
BEGIN
CREATE TABLE [JobSatisfaction].[dbo].[ExtremeJobSatisfaction] (Employment varchar(255), Employment1 int, JobSatisfaction varchar(255), JobSatisfaction1 int)
END
IF OBJECT_ID ('[JobSatisfaction].[dbo].[ExtremeJobSatisfaction]') IS NOT NULL
INSERT INTO [JobSatisfaction].[dbo].[ExtremeJobSatisfaction] SELECT * FROM [JobSatisfaction].[dbo].[Sheet1$]

SELECT MIN(JobSatisfaction1) AS MinJobSatisfaction, MAX(JobSatisfaction1) AS MaxJobSatisfaction, AVG(JobSatisfaction1) AS AVGJobSatisfaction FROM ExtremeJobSatisfaction