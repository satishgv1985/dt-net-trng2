CREATE TABLE [dbo].[tblBooking]
(
	Booking_Id int NOT NULL Identity(1,1), 
	User_ID int NULL,
	Service_ID int Null,
	Amt_Per_Tkt numeric(14,4) Null,
	No_of_Tkts int Null,
	Total_Amt numeric(14,4) Null,
	Payment_Type varchar(50) Null, -- Cash, Credit Card, Debit Card, Cheque, Net Banking etc.
	Cheque_No varchar(50) Null,
	Cheque_date DateTime Null,
	Bank_Name varchar(50) Null,
	Date_Of_Booking DateTime Null,
	Place_of_Booking varchar(50) Null,
	Boarding_Point varchar(50) Null,
	Reservation_Upto varchar(50) Null,
	Passenger_1_Name varchar(50) Null,
	Passenger_1_ContactNo varchar(10) Null,
)
