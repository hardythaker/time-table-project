using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SksTimeTable
{
    public partial class MemberReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegMemBtn_Click(object sender, EventArgs e)
        {
            if (UserNameTB.Text !=" " && PasswordTB.Text !=" ")
            {
                if (Register.registerMember(UserNameTB.Text, PasswordTB.Text))
                {
                    //Response.Write("Successfully registered Login With Your Email And Password");

                    // Response.Write("<script> alert('Successfully Registered..! Click Ok To Login');</script>");
                    // UserNameTB.Text = "";
                    //regmsg.Text = "Successfully registered <a href=default.aspx>Click Here</a> To login";
                    //Response.Redirect("default.aspx");
                    
                    ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script language='javascript'>alert('Succesfully Registered...!\\n Click Ok to Login');window.location.replace('default.aspx');</script>");
                }
                else
                {
                    //Response.Write("Registration failed");
                    regmsg.Text = "Registration failed Try Again Later";
                }
            }
            else {
                RequiredFieldValidator1.Text = "*";
                RequiredFieldValidator2.Text = "*";
            }
             
        }

        protected void UserNameTB_TextChanged(object sender, EventArgs e)
        {

        }
    }
}