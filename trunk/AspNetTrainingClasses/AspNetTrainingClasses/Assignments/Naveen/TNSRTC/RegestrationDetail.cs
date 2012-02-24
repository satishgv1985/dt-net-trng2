using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace AspNetTrainingClasses.Assignments.Naveen.TNSRTC
{
    public class RegestrationDetail
    {
        private string _username;
        private string _password;
        private string _confirmPassword;
        private string _securityQuestion;
        private string _yourAnswer;
        private string _firstName;
        private string _lastName;
        private string _emailId;
        private string _gender;
        private string _maritualStatus;
        private string _dateofBirth;
        private string _occupation;
        private string _mobileNo;
        private string _nationality;
        private string _address;
        private string _city;
        private string _state;
        private string _pinNo;
        private string _country;
        private string _phoneNo;

        public string Username
        {
            get 
            {
                return _username;
            }
            set 
            {
                _username = value;
            }
        }
        public string Password
        {
            get
            {
                return _password;
            }
            set
            {
                _password = value;
            }
        }
        public string ConfirmPassword
        {
            get
            {
                return _confirmPassword;
            }
            set
            {
                _confirmPassword = value;
            }
        }
        public string SecurityQuestion
        {
            get
            {
                return _securityQuestion;
            }
            set
            {
                _securityQuestion = value;
            }
        }
        public string YourAnswer
        {
            get
            {
                return _yourAnswer;
            }
            set
            {
                _yourAnswer= value;
            }
        }
        public string Firstname
        {
            get
            {
                return _firstName ;
            }
            set
            {
               _firstName = value;
            }
        }
        public string Lastname
        {
            get
            {
                return _lastName;
            }
            set
            {
                _lastName= value;
            }
        }
        public string Emailid
        {
            get
            {
                return _emailId;
            }
            set
            {
                _emailId= value;
            }
        }
        public string Gender
        {
            get
            {
                return _gender ;
            }
            set
            {
                _gender= value;
            }
        }
        public string Maritualstatus
        {
            get
            {
                return _maritualStatus;
            }
            set
            {
                _maritualStatus= value;
            }
        }
        public string DateofBirth
        {
            get
            {
                return _dateofBirth;
            }
            set
            {
                _dateofBirth= value;
            }
        }
        public string Occupation
        {
            get
            {
                return _occupation;
            }
            set
            {
                _occupation= value;
            }
        }
        public string Mobile
        {
            get
            {
                return _mobileNo;
            }
            set
            {
                _mobileNo= value;
            }
        }
        public string Nationality
        {
            get
            {
                return _nationality;
            }
            set
            {
               _nationality = value;
            }
        }
        public string Address
        {
            get
            {
                return _address;
            }
            set
            {
               _address = value;
            }
        }
        public string city
        {
            get
            {
                return _city;
            }
            set
            {
               _city = value;
            }
        }
        public string State
        {
            get
            {
                return _state;
            }
            set
            {
                _state= value;
            }
        }
        public string Pinno
        {
            get
            {
                return _pinNo;
            }
            set
            {
               _pinNo = value;
            }
        }
        public string Country
        {
            get
            {
                return _country;
            }
            set
            {
                _country= value;
            }
        }
        public string Phone
        {
            get
            {
                return _phoneNo;
            }
            set
            {
                _phoneNo= value;
            }
       }
    }
}