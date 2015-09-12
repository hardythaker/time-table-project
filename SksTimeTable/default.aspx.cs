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
            //string username = UserNameTB.Text;
            //PwdEncrypt.passwordEnc(PasswordTB.Text);
            //string password = PasswordTB.Text;
            string hashval = HashGenerator.getHash(UserNameTB.Text,PasswordTB.Text);

            if(DataAccessLayer.isMemberExits(UserNameTB.Text, hashval))
            { 
                //if (dSet.Tables[0].Rows.Count > 0)
                //{
                    Session["username"] = UserNameTB.Text;
                    Response.Redirect("Admin.aspx");
                //}
                
            }
            else
            {

                msg.Text = "Wrong user id or Password";
                msg2.Text = " Not A member ? Click <a href=MemberReg.aspx>Here</a> To Register ";
            }
            //catch (Exception ex) {
            //    Response.Write(ex.Message);
            //}
        }
    }
}