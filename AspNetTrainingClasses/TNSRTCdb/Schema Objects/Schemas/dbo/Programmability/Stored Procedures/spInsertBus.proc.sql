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
		   VALUES(@BusTypeId,@BusName,@Capcity)
END
