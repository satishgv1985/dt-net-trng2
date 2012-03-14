/*
Deployment script for TNSRTC
*/

GO
SET ANSI_NULLS, ANSI_PADDING, ANSI_WARNINGS, ARITHABORT, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER ON;

SET NUMERIC_ROUNDABORT OFF;


GO
:setvar DatabaseName "TNSRTC"
:setvar DefaultDataPath "C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\"
:setvar DefaultLogPath "C:\Program Files (x86)\Microsoft SQL Server\MSSQL.1\MSSQL\DATA\"

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
    RAISERROR(N'You cannot deploy this update script to target VARSHU-PC. The database for which this script was built, TNSRTC, does not exist on this server.', 16, 127) WITH NOWAIT
    RETURN
END

GO

IF (@@servername != 'VARSHU-PC')
BEGIN
    RAISERROR(N'The server name in the build script %s does not match the name of the target server %s. Verify whether your database project settings are correct and whether your build script is up to date.', 16, 127,N'VARSHU-PC',@@servername) WITH NOWAIT
    RETURN
END

GO

IF CAST(DATABASEPROPERTY(N'$(DatabaseName)','IsReadOnly') as bit) = 1
BEGIN
    RAISERROR(N'You cannot deploy this update script because the database for which it was built, %s , is set to READ_ONLY.', 16, 127, N'$(DatabaseName)') WITH NOWAIT
    RETURN
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
PRINT N'Creating [dbo].[spInsertBooking]...';


GO
CREATE PROCEDURE [dbo].[spInsertBooking]
	@UserID int ,
	@ServiceID int ,
	@AmtPerTkt numeric(14,4) ,
	@NoofTkts int ,
	@TotalAmt numeric(14,4) ,
	@PaymentType varchar(50) , 
	@ChequeNo varchar(50) ,
	@Chequedate DateTime ,
	@BankName varchar(50) ,
	@DateOfBooking DateTime ,
	@PlaceofBooking varchar(50) ,
	@BoardingPoint varchar(50) ,
	@ReservationUpto varchar(50) ,
	@Passenger1Name varchar(50) ,
	@Passenger1ContactNo varchar(10) 
AS
	INSERT INTO tblBooking(
	UserID ,
	ServiceID ,
	AmtPerTkt ,
	NoofTkts ,
	TotalAmt ,
	PaymentType ,
	ChequeNo ,
	Chequedate ,
	BankName ,
	DateOfBooking ,
	PlaceofBooking ,
	BoardingPoint ,
	ReservationUpto ,
	Passenger1Name ,
	Passenger1ContactNo)
	VALUES
	(
	@UserID ,
	@ServiceID,
	@AmtPerTkt,
	@NoofTkts,
	@TotalAmt,
	@PaymentType,
	@ChequeNo,
	@Chequedate,
	@BankName,
	@DateOfBooking,
	@PlaceofBooking,
	@BoardingPoint,
	@ReservationUpto,
	@Passenger1Name,
	@Passenger1ContactNo
    )
GO
PRINT N'Creating [dbo].[spInsertBus]...';


GO
--IF EXISTS(SELECT * FROM sys.objects WHERE type='p' and name='spInsertBus')
--DROP PROCEDURE spInsertBus
--GO
CREATE PROCEDURE spInsertBus
	@BusTypeID int, 
	@BusName varchar(50),
	@Capacity int

AS
BEGIN
	INSERT INTO tblBus(BusTypeId, BusName, SeatingCapacity)
		   VALUES(@BusTypeId,@BusName,@Capacity)
END
GO
PRINT N'Creating [dbo].[spInsertPlace]...';


GO
CREATE PROCEDURE [dbo].[spInsertPlace]
	@placeName varchar(50) 
AS
	INSERT INTO tblPlace(placeName, dateModified)
	Values (@placeName, getdate())
GO
PRINT N'Creating [dbo].[spUpdateBooking]...';


GO
CREATE PROCEDURE [dbo].[spUpdateBooking]
	@BookingId int,
	@UserID int ,
	@ServiceID int ,
	@AmtPerTkt numeric(14,4) ,
	@NoofTkts int ,
	@TotalAmt numeric(14,4) ,
	@PaymentType varchar(50) , 
	@ChequeNo varchar(50) ,
	@Chequedate DateTime ,
	@BankName varchar(50) ,
	@DateOfBooking DateTime ,
	@PlaceofBooking varchar(50) ,
	@BoardingPoint varchar(50) ,
	@ReservationUpto varchar(50) ,
	@Passenger1Name varchar(50) ,
	@Passenger1ContactNo varchar(10) 
AS
	UPDATE tblBooking Set 
	UserID = @UserID,
	ServiceID = @ServiceID,
	AmtPerTkt = @AmtPerTkt,
	NoofTkts = @NoofTkts,
	TotalAmt = @TotalAmt,
	PaymentType = @PaymentType,
	ChequeNo = @ChequeNo,
	Chequedate = @Chequedate,
	BankName = @BankName,
	DateOfBooking = @DateOfBooking,
	PlaceofBooking = @PlaceofBooking,
	BoardingPoint = @BoardingPoint,
	ReservationUpto = @ReservationUpto,
	Passenger1Name = @Passenger1Name,
	Passenger1ContactNo = @Passenger1ContactNo
	WHERE BookingId = @BookingId
GO
PRINT N'Creating [dbo].[spUpdateBus]...';


GO
CREATE PROCEDURE [dbo].[spUpdateBus]
	@BusId int, @BusTypeId int, @BusName varchar(50), @Capacity int
AS
	UPDATE tblBus SET BusTypeId = @BusTypeId, BusName = @BusName,
	SeatingCapacity = @Capacity
	Where BusId = @BusId
GO
PRINT N'Creating [dbo].[spUpdatePlace]...';


GO
CREATE PROCEDURE [dbo].[spUpdatePlace]
	@placeId int, 
	@PlaceName varchar(50)
AS
	UPDATE tblPlace SET placeName = @PlaceName, dateModified = GETDATE()
	WHERE placeId = @placeId
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

IF NOT EXISTS(SELECT * FROM tblUser WHERE roleId=0)
INSERT INTO tblUser([userName]
           ,[password]
           ,[firstName], roleId)
		   VALUES('admin','pass','Administrator',0)

GO
