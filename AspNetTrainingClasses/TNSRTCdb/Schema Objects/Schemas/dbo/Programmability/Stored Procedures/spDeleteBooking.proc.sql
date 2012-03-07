CREATE PROCEDURE [dbo].[spDeleteBooking]
	@BookingId int 
AS
	DELETE FROM tblBooking where BookingId = @BookingId
