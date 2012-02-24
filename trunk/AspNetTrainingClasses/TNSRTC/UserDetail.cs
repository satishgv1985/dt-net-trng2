using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TNSRTC
{
    public class UserDetail
    {
        //private string _userName;
        //private string _password;
        //private string _userID;
        //private string _firstName;
        //public string FirstName
        //{
        //    get
        //    {
        //        return _firstName;
        //    }

        //    set
        //    {
        //        _firstName = value;
        //    }
        //}

        //private string _lastName;
        //public string LastName
        //{
        //    get
        //    {
        //        return _lastName;
        //    }

        //    set
        //    {
        //        _lastName = value;
        //    }
        //}

        //public string userName
        //{
        //    get
        //    { 
        //        return _userName;
        //    }

        //    set
        //    {
        //        _userName = value;
        //    }
        //}

        //public string password
        //{
        //    get
        //    {
        //        return _password;
        //    }

        //    set
        //    {
        //        _password = value;
        //    }

        //}

        //public string UserID
        //{
        //    get
        //    {
        //        return _userID;
        //    }

        //    set
        //    {
        //        _userID = value;
        //    }

        //}

        private int _userId;
        private string _username;
        private string _password;
        private int _securityQuestionId;
        private string _yourAnswer;
        private string _firstName;
        private string _lastName;
        private string _emailId;
        /* True - Male, False - Female */
        private bool _gender;
        /* True - Single, False - Married */
        private bool _maritualStatus;
        private DateTime _dateofBirth;
        private string _occupation;
        private string _mobileNo;
        private string _nationality;
        private string _address;
        private string _city;
        private int _stateId;
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
       
        public int SecurityQuestion
        {
            get
            {
                return _securityQuestionId;
            }
            set
            {
                _securityQuestionId = value;
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
                _yourAnswer = value;
            }
        }
        public string Firstname
        {
            get
            {
                return _firstName;
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
                _lastName = value;
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
                _emailId = value;
            }
        }
        public bool Gender
        {
            get
            {
                return _gender;
            }
            set
            {
                _gender = value;
            }
        }
        public bool Maritualstatus
        {
            get
            {
                return _maritualStatus;
            }
            set
            {
                _maritualStatus = value;
            }
        }
        public DateTime DateofBirth
        {
            get
            {
                return _dateofBirth;
            }
            set
            {
                _dateofBirth = value;
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
                _occupation = value;
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
                _mobileNo = value;
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
        public int State
        {
            get
            {
                return _stateId;
            }
            set
            {
                _stateId = value;
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
                _country = value;
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
                _phoneNo = value;
            }
        }
    }
}
