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
            //PwdEncrypt.passwordEnc(PasswordTB.Text);
            string password = PasswordTB.Text;
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
        }
    }
}