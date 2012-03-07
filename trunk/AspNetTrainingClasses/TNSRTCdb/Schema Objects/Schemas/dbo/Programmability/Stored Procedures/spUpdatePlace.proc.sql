CREATE PROCEDURE [dbo].[spUpdatePlace]
	@placeId int, 
	@PlaceName varchar(50)
AS
	UPDATE tblPlace SET placeName = @PlaceName, dateModified = GETDATE()
	WHERE placeId = @placeId
