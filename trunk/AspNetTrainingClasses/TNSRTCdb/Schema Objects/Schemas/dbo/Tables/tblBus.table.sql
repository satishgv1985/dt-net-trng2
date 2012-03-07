CREATE TABLE [dbo].[tblBus]
(
	BusId int NOT NULL Identity(1,1), 
	BusTypeId int NULL,
	BusName varchar(50),
	SeatingCapacity int Null

)
