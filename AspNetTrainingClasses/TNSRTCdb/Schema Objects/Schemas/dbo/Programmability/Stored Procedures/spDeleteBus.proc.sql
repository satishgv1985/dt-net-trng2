CREATE PROCEDURE [dbo].[spDeleteBus]
	@BusId int
AS
	DELETE From tblBus where BusId = @BusId
