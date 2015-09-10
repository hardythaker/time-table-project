using System;
using System.Data;
using MySql.Data.MySqlClient;
using System.Configuration;

namespace SksTimeTable
{

    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["username"] == null))
            {
                Response.Redirect("admin.aspx");
            }
        }
        protected void loginSubmitBtn_Click(object sender, EventArgs e)
        {
            string username = UserNameTB.Text;
            PwdEncrypt.passwordEnc(PasswordTB.Text);
            try
            {
                DataSet dSet = DataAccessLayer.isMemberExits(username, password);

                if (dSet.Tables[0].Rows.Count > 0)
                {
                    Session["username"] = UserNameTB.Text;
                    Response.Redirect("Admin.aspx");
                }
                else
                {
                    msg.Text = "Wrong user id or Password";
                }
            }
            catch(Exception ex) {
                Response.Write(ex.Message);
            }








                ////connectionString
                //string conStr = ConfigurationManager.ConnectionStrings["mySQLConnString"].ConnectionString;
                //try
                //{
                //    //this type of connection can prevent SQL Injection
                //    using (MySqlConnection con = new MySqlConnection(conStr))
                //    {
                //        con.Open();//open the SQL connection
                //        //this type of connection can prevent SQL Injection
                //        using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM users WHERE users='" + UserNameTB.Text + "' and password='" + PasswordTB.Text + "'", con))
                //        {

                //            //int sdr = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                //            MySqlDataReader sdr = cmd.ExecuteReader();
                //            // msg.Text = sdr.ToString();

                //            if (sdr.Read())
                //            {
                //                sdr.Close();
                //                con.Close();
                //                Session["username"] = UserNameTB.Text;
                //                Response.Redirect("Admin.aspx");
                //            }
                //            else
                //            {
                //                msg.Text = "Wrong user id or Password";
                //            }
                //        }
                //    }
                //}
                //catch (Exception ex)
                //{
                //    Response.Write(ex.Message);
                //}
        }
    }
}