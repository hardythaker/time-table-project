using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using MySql.Data.MySqlClient;

namespace SksTimeTable
{
    public class Register
    {
        public static bool registerMember(string user, string pass)
        {
            try {
                byte[] hashedVal = HashGenerator.getHash(user, pass);
                MySqlConnection dbcon = ConnectionManager.GetDatabaseConnection();
                using (dbcon)
                {

                }
                return true;
            } catch(Exception ex){
                return false;
            }
        }
    }
}