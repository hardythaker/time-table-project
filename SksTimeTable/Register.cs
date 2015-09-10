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
                string hashedVal = HashGenerator.getHash(user, pass).ToString(); //calling the gethash method in hashgenerator class to get a ency pass+username as password
                                                                                 //MySqlConnection dbcon = ConnectionManager.GetDatabaseConnection();
                                                                                 //using (dbcon)
                                                                                 //{

                                                                                 //}
                if (DataAccessLayer.isMemRegSuccessful(user, hashedVal) == false)
                {
                    return false;
                }
                return true;
            }
            catch (Exception){
                return false;
            }
        }
    }
}