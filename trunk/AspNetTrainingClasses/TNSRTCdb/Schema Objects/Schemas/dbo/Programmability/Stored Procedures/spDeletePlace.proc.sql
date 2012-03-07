CREATE PROCEDURE [dbo].[spDeletePlace]
	@placeId int
AS
	DELETE from tblPlace where placeId = @placeId
