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

        public static bool isMemberExits(string un,string encPass)
        {
            DataSet dSet = new DataSet();
            using (MySqlConnection connection = ConnectionManager.GetDatabaseConnection())
            {
                try
                {
                    MySqlCommand command = new MySqlCommand("sp_isMemberExits", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@username", MySqlDbType.VarChar).Value = un;
                    command.Parameters.Add("@encPwd", MySqlDbType.VarChar).Value = encPass;
                    MySqlDataAdapter adapter = new MySqlDataAdapter();
                    adapter.SelectCommand = command;
                    connection.Close();
                    DataTable dt = new DataTable();
                    adapter.Fill(dt);
                    if (dt.Rows.Count == 1)
                    {
                        return true;
                    }
                    else {
                        return false;
                    }
                }
                catch (Exception)
                {
                    return false;
                }
                
            }
        }
        public static bool isMemRegSuccessful(string username, string encPass)
        {
            using (MySqlConnection connection = ConnectionManager.GetDatabaseConnection())
            {
                try
                {
                    MySqlCommand command = new MySqlCommand("sp_regMembers", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    //command.Parameters.Add("@username", MySqlDbType.VarChar).Value = username;
                    //command.Parameters.Add("@enyPass", MySqlDbType.VarChar).Value = encPass;

                    command.Parameters.AddWithValue("@username", username);
                    command.Parameters.AddWithValue("@encPass", encPass);

                    //MySqlDataAdapter adapter = new MySqlDataAdapter();
                    //adapter.InsertCommand = command;
                    int affectedrows = command.ExecuteNonQuery();
                    connection.Close();
                    if (affectedrows == 1)
                    {
                        return true;
                    }
                    else return false;
                }
                catch (Exception)
                {
                    return false;
                }
            }
        }

    }
}
