CREATE PROCEDURE [dbo].[spInsertPlace]
	@placeName varchar(50) 
AS
	INSERT INTO tblPlace(placeName, dateModified)
	Values (@placeName, getdate())
