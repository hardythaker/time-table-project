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
                    connection.Close();
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
                    connection.Close();
                    return false;
                }
                
            }
        }

        public static bool isMemRegSuccessful(string un, string encPwd)
        {
            using (MySqlConnection connection = ConnectionManager.GetDatabaseConnection())
            {
                try
                {
                    MySqlCommand command = new MySqlCommand("sp_regMembers", connection);
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.Add("@username", MySqlDbType.VarChar).Value = un;
                    command.Parameters.Add("@encPass", MySqlDbType.VarChar).Value = encPwd;

                    //command.Parameters.AddWithValue("@username", username);
                    //command.Parameters.AddWithValue("@encPass", encPass);

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
                    connection.Close();
                    return false;
                }
            }
        }

        public static DataTable fetchClass() {
            using (MySqlConnection con = ConnectionManager.GetDatabaseConnection()) {
                using (MySqlCommand cmd = new MySqlCommand("sp_fetchClassName",con)) {
                    cmd.CommandType = CommandType.StoredProcedure;
                    MySqlDataAdapter adapter = new MySqlDataAdapter();
                    adapter.SelectCommand = cmd;
                    con.Close();
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    DataTable dt = ds.Tables[0];
                    return dt;
                }
            }
        }

        public static DataTable fetchDivision()
        {
            using (MySqlConnection con = ConnectionManager.GetDatabaseConnection())
            {
                using (MySqlCommand cmd = new MySqlCommand("sp_fetchDivision", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    MySqlDataAdapter adapter = new MySqlDataAdapter();
                    adapter.SelectCommand = cmd;
                    con.Close();
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    DataTable dt = ds.Tables[0];
                    return dt;
                }
            }
        }

        public static DataTable fetchSemester()
        {
            using (MySqlConnection con = ConnectionManager.GetDatabaseConnection())
            {
                using (MySqlCommand cmd = new MySqlCommand("sp_fetchSemester", con))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    MySqlDataAdapter adapter = new MySqlDataAdapter();
                    adapter.SelectCommand = cmd;
                    con.Close();
                    DataSet ds = new DataSet();
                    adapter.Fill(ds);
                    DataTable dt = ds.Tables[0];
                    return dt;
                }
            }
        }

    }
}
