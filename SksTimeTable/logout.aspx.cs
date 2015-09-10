using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SksTimeTable
{
    public partial class logout1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(Session["username"] == null))
            {
                //Response.Redirect("~/Login/Login.aspx");
                Session["username"] = null;
                Session.Abandon();
                Session.Clear();
                Session.RemoveAll();
                System.Web.Security.FormsAuthentication.SignOut();
                Response.Redirect("default.aspx");
            }
            else
            {
                Response.Write("<h1>You Are Not Logged In <a href='default.aspx'>Click Here</a> To Login</h1>");
                //Response.
                //Response.Redirect("~/Login/Login.aspx");
            }
        }
    }
}