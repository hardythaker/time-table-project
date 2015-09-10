using System;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace SksTimeTable
{
        public class ConnectionManager
        {
            private static MySqlConnection dbcon = new MySqlConnection(Convert.ToString(ConfigurationManager.ConnectionStrings["mysqlconnstring"]));


            public static MySqlConnection GetDatabaseConnection()
            {
                try {

                    dbcon.Open();
                }catch(Exception ex){
                    throw;
                }
                return dbcon;
            }


            public static void CloseDatabaseConnection()
            {
                dbcon.Close();   
            }
        }
}