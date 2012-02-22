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
        public static bool ValidateUser(UserDetail ud,int i)
        {
            //pass the username, password to the db to validate the user

            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            string query = "SELECT [userId], [userName], [password], [firstName], [lastName] FROM [tblUser] WHERE (([userName] = {0}) AND ([password] = {1}) ";
            query = String.Format(query, ud.userName, ud.password);
            cmd.CommandText = query;
            con.Open();
            SqlDataReader sdr = cmd.ExecuteReader();

            if (sdr.Read())
            {
                con.Close();
                return true;
            }
            con.Close();
            return false;


        }

        public static UserDetail ValidateUser(UserDetail ud)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = ConfigurationManager.ConnectionStrings["TNSRTCConnectionString"].ConnectionString;
            SqlCommand cmd = new SqlCommand();
            cmd.Connection = con;
            string query = "SELECT [userId], [userName], [password], [firstName], [lastName] FROM [tblUser] WHERE (([userName] = '{0}') AND ([password] = '{1}')) ";
            query = String.Format(query, ud.userName, ud.password);
            cmd.CommandText = query;
            con.Open();

            SqlDataReader sdr = cmd.ExecuteReader();

            UserDetail tempUser = new UserDetail();
            if (sdr.Read())
            {
                tempUser.FirstName = Convert.ToString(sdr["firstName"]);
                tempUser.LastName = Convert.ToString(sdr["lastName"]);
            }
            return tempUser;
        }
    }
}
