﻿using Resume.model;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Resume.model
{
    public class UserAccount
    {
        public String FirstName { get; set; }
        public String LastName { get; set; }
        public String Username { get; set; }
        public String Password { get; set; }
        public String Phone { get; set; }
        public String Email { get; set; }

        public String Introduction { get; set; }
    }
}