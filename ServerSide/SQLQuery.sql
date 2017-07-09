﻿USE master
GO

IF  EXISTS (SELECT 1 FROM master.dbo.sysdatabases WHERE name = 'Wave')
BEGIN
ALTER DATABASE [Wave] SET SINGLE_USER WITH ROLLBACK IMMEDIATE
DROP DATABASE Wave
END
GO

CREATE DATABASE Wave
GO

USE Wave
GO

CREATE TABLE Reports (
Id INT PRIMARY KEY IDENTITY(1,1),
EmployeeId INT NOT NULL,
Date DATE NOT NULL,
JobGroup VARCHAR(3) NOT NULL,
HoursWorked DECIMAL NOT NULL,
ReportId INT NOT NULL
)

PRINT 'DB is created'