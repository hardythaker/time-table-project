using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SksTimeTable
{
    public class DataAccessLayer
    {
        public static DataSet DisplayAllUsers()
        {
            DataSet dSet = new DataSet();
            using (MySqlConnection connection = ConnectionManager.GetDatabaseConnection())
            {
                try
                {
                    MySqlCommand command = new MySqlCommand("spDisplayAll", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    MySqlDataAdapter adapter = new MySqlDataAdapter();
                    adapter.SelectCommand = command;
                    adapter.Fill(dSet);
                }
                catch (Exception)
                {
                    throw;
                }
                return dSet;
            }
        }

        public static DataSet isMemberExits(string un,string encPass)
        {
            DataSet dSet = new DataSet();
            using (MySqlConnection connection = ConnectionManager.GetDatabaseConnection())
            {
                try
                {
                    MySqlCommand command = new MySqlCommand("sp_isMemberExits", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@username", MySqlDbType.VarChar).Value = un;
                    command.Parameters.Add("@pwd", MySqlDbType.VarChar).Value = encPass;
                    MySqlDataAdapter adapter = new MySqlDataAdapter();
                    adapter.SelectCommand = command;
                    adapter.Fill(dSet);
                }
                catch (Exception)
                {
                    throw;
                }
                return dSet;
            }
        }

    }
}
