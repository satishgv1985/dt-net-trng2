CREATE TABLE [dbo].[tblBooking]
(
	BookingId int NOT NULL Identity(1,1), 
	UserID int NULL,
	ServiceID int Null,
	AmtPerTkt numeric(14,4) Null,
	NoofTkts int Null,
	TotalAmt numeric(14,4) Null,
	PaymentType varchar(50) Null, -- Cash, Credit Card, Debit Card, Cheque, Net Banking etc.
	ChequeNo varchar(50) Null,
	Chequedate DateTime Null,
	BankName varchar(50) Null,
	DateOfBooking DateTime Null,
	PlaceofBooking varchar(50) Null,
	BoardingPoint varchar(50) Null,
	ReservationUpto varchar(50) Null,
	Passenger1Name varchar(50) Null,
	Passenger1ContactNo varchar(10) Null,
)
