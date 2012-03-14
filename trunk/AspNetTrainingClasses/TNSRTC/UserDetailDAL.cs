using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace TNSRTC
{
    public class UserDetailDAL
    {
        //public static bool ValidateUser(UserDetail ud, int i)
        //{
        //    //pass the username, password to the db to validate the user

        //    SqlConnection con = new SqlConnection();
        //    con.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;
        //    SqlCommand cmd = new SqlCommand();
        //    cmd.Connection = con;
        //    string query = "SELECT [userId], [userName], [password], [firstName], [lastName] FROM [tblUser] WHERE (([userName] = {0}) AND ([password] = {1}) ";
        //    query = String.Format(query, ud.Username, ud.Password);
        //    cmd.CommandText = query;
        //    con.Open();
        //    SqlDataReader sdr = cmd.ExecuteReader();

        //    if (sdr.Read())
        //    {
        //        con.Close();
        //        return true;
        //    }
        //    con.Close();
        //    return false;


        //}

        public static UserDetail ValidateUser(UserDetail ud)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            string query = "SELECT [userId], [userName], [password], [firstName], [lastName], roleId FROM [tblUser] WHERE (([userName] = '{0}') AND ([password] = '{1}')) ";
            query = String.Format(query, ud.Username, ud.Password);
            cmd.CommandText = query;
            con.Open();
            //System.Diagnostics.Debugger.Launch();
            SqlDataReader sdr = cmd.ExecuteReader();

            UserDetail tempUser = new UserDetail();
            if (sdr.Read())
            {
                tempUser.Firstname = Convert.ToString(sdr["firstName"]);
                tempUser.Lastname = Convert.ToString(sdr["lastName"]);
                tempUser.Username = Convert.ToString(sdr["userName"]);
                tempUser.RoleId = Convert.ToInt32(sdr["roleId"]);
            }
            return tempUser;
        }

        public static int InsertUser(UserDetail ud)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "spInsertUser";
            cmd.Parameters.Add(new SqlParameter("username", ud.Username));
            cmd.Parameters.Add(new SqlParameter("password", ud.Password));
            cmd.Parameters.Add(new SqlParameter("firstName", ud.Firstname));

            con.Open();
            int rowsAffected = cmd.ExecuteNonQuery();
            con.Close();

            return rowsAffected;


        }

        public static List<Booking> BookingHistory(string userName)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            con.Open();
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.CommandText = "spBookingHistoryByUserName";
            cmd.Parameters.Add(new SqlParameter("username", userName));
           

            SqlDataReader sdr = cmd.ExecuteReader();

            List<Booking> listBookings = new List<Booking>();
            Booking bk;
            while (sdr.Read())
            {
                bk = new Booking();
                bk.DateOfBooking = Convert.ToDateTime(sdr["DateOfBooking"]);
                bk.ServiceID = Convert.ToInt32(sdr["ServiceID"]);
                listBookings.Add(bk);
            }
            //bk.DateOfBooking=
            con.Close();
            return listBookings;
        }
    }
}
