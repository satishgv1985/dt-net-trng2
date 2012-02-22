using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace TNSRTC
{
   public class UserDetail
    {
        private string _userName;
        private string _password;
        private string _userID;
        private string _firstName;
        public string FirstName
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

        private string _lastName;
        public string LastName
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
        
        public string userName
        {
            get
            { 
                return _userName;
            }

            set
            {
                _userName = value;
            }
        }

        public string password
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

        public string UserID
        {
            get
            {
                return _userID;
            }

            set
            {
                _userID = value;
            }

        }

    }
}
