using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EcHacks.App_Code
{
    public static class Global
    {
        static string id;

        public static string oid
        {
            get
            {
                return id;
            }
            set
            {
                id = value;
            }
        }

        

    }
}