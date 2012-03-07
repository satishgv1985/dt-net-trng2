using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TNSRTC
{
    class Booking
    {
       public int BookingId {get; set;}
       public int UserID  {get; set;}
       public int ServiceID  {get; set;}
       public int AmtPerTkt  {get; set;}
       public int NoofTkts  {get; set;}
       public int TotalAmt  {get; set;}
       public bool PaymentType  {get; set;}
       public int ChequeNo  {get; set;}
       public DateTime Chequedate  {get; set;}
       public string BankName  {get; set;}
       public DateTime DateOfBooking  {get; set;}
       public string PlaceofBooking  {get; set;}
       public string BoardingPoint  {get; set;}
       public string ReservationUpto  {get; set;}
       public string Passenger1Name  {get; set;}
       public int Passenger1ContactNo { get; set; }
    }
}
