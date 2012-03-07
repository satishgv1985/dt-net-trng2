CREATE PROCEDURE [dbo].[spUpdateBus]
	@BusId int, @BusTypeId int, @BusName varchar(50), @Capacity int
AS
	UPDATE tblBus SET BusTypeId = @BusTypeId, BusName = @BusName,
	SeatingCapacity = @Capacity
	Where BusId = @BusId
