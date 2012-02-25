/*
Deployment script for tnsrtcdb
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "tnsrtcdb"
:setvar DefaultDataPath "D:\Program Files\MSSQL.1\MSSQL\DATA\"
:setvar DefaultLogPath "D:\Program Files\MSSQL.1\MSSQL\DATA\"

GO
USE [master]

GO
:on error exit
GO
IF (DB_ID(N'$(DatabaseName)') IS NOT NULL
    AND DATABASEPROPERTYEX(N'$(DatabaseName)','Status') <> N'ONLINE')
BEGIN
    RAISERROR(N'The state of the target database, %s, is not set to ONLINE. To deploy to this database, its state must be set to ONLINE.', 16, 127,N'$(DatabaseName)') WITH NOWAIT
    RETURN
END

GO

IF NOT EXISTS (SELECT 1 FROM [master].[dbo].[sysdatabases] WHERE [name] = N'$(DatabaseName)')
BEGIN
    RAISERROR(N'You cannot deploy this update script to target P3NWGDSHSQL003. The database for which this script was built, tnsrtcdb, does not exist on this server.', 16, 127) WITH NOWAIT
    RETURN
END

GO

IF (@@servername != 'P3NWGDSHSQL003')
BEGIN
    RAISERROR(N'The server name in the build script %s does not match the name of the target server %s. Verify whether your database project settings are correct and whether your build script is up to date.', 16, 127,N'P3NWGDSHSQL003',@@servername) WITH NOWAIT
    RETURN
END

GO

IF CAST(DATABASEPROPERTY(N'$(DatabaseName)','IsReadOnly') as bit) = 1
BEGIN
    RAISERROR(N'You cannot deploy this update script because the database for which it was built, %s , is set to READ_ONLY.', 16, 127, N'$(DatabaseName)') WITH NOWAIT
    RETURN
END

GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET ANSI_NULLS ON,
                ANSI_PADDING ON,
                ANSI_WARNINGS ON,
                ARITHABORT ON,
                CONCAT_NULL_YIELDS_NULL ON,
                QUOTED_IDENTIFIER ON,
                ANSI_NULL_DEFAULT ON,
                CURSOR_DEFAULT LOCAL,
                RECOVERY FULL 
            WITH ROLLBACK IMMEDIATE;
    END


GO
IF EXISTS (SELECT 1
           FROM   [master].[dbo].[sysdatabases]
           WHERE  [name] = N'$(DatabaseName)')
    BEGIN
        ALTER DATABASE [$(DatabaseName)]
            SET AUTO_UPDATE_STATISTICS_ASYNC OFF,
                PAGE_VERIFY NONE,
                DISABLE_BROKER 
            WITH ROLLBACK IMMEDIATE;
    END


GO
USE [$(DatabaseName)]

GO
/*
 Pre-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be executed before the build script.	
 Use SQLCMD syntax to include a file in the pre-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the pre-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

GO
PRINT N'Creating [dbo].[tblPlace]...';


GO
CREATE TABLE [dbo].[tblPlace] (
    [placeId]      INT          IDENTITY (1, 1) NOT NULL,
    [placeName]    VARCHAR (50) NULL,
    [dateModified] DATETIME     NULL
);


GO
PRINT N'Creating [dbo].[tblUser]...';


GO
CREATE TABLE [dbo].[tblUser] (
    [userId]       INT            IDENTITY (1, 1) NOT NULL,
    [userName]     VARCHAR (50)   NULL,
    [password]     NVARCHAR (50)  NULL,
    [firstName]    VARCHAR (50)   NULL,
    [lastName]     VARCHAR (50)   NULL,
    [address]      NVARCHAR (100) NULL,
    [stateId]      INT            NULL,
    [emailId]      VARCHAR (50)   NULL,
    [dateModified] DATETIME       NULL
);


GO
PRINT N'Creating On column: dateModified...';


GO
ALTER TABLE [dbo].[tblUser]
    ADD DEFAULT (getutcdate()) FOR [dateModified];


GO
PRINT N'Creating [dbo].[_ProcedureName]...';


GO
--IF EXISTS(SELECT * FROM sys.objects WHERE type='p' and name='_ProcedureName')
--DROP PROCEDURE _ProcedureName
--GO

-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE _ProcedureName
	-- Add the parameters for the stored procedure here
	@param int
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	
END
GO
PRINT N'Creating [dbo].[spInsertUser]...';


GO
--IF EXISTS(SELECT * FROM sys.objects WHERE type='p' and name='spInsertUser')
--DROP PROCEDURE spInsertUser
--GO
CREATE PROCEDURE spInsertUser
	@userName varchar(50), 
	@password varchar(50),
	@firstName varchar(50)

AS
BEGIN
	INSERT INTO tblUser([userName]
           ,[password]
           ,[firstName])
		   VALUES(@userName,@password,@firstName)
END
GO
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

GO
