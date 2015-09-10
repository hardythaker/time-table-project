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
            if (Register.registerMember(UsernameTB.Text, PasswordTB.Text))
            {
                Response.Write("Successfully registered");
            }
            else
            {
                Response.Write("Registration failed");
            }
                
        }
    }
}