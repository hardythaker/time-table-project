﻿using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SksTimeTable
{
    public partial class addData : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["username"] == null)
            {
                Response.Redirect("default.aspx");
            }
            ScriptManager1.RegisterAsyncPostBackControl(listClass);

            DataTable dddt = DataAccessLayer.fetchClass();
            listClass.Items.Insert(0, new ListItem("--Select Class--", "0"));
            listClass.DataSource = dddt;
            listClass.DataBind();
            listClass.DataTextField = "b_name";
            listClass.DataValueField = "b_id";
            listClass.DataBind();
            dddt.Clear();

            dddt = DataAccessLayer.fetchDivision();
            listDivision.DataSource = dddt;
            listDivision.DataTextField = "division";
            listDivision.DataValueField = "id";
            listDivision.DataBind();
            listDivision.Items.Insert(0, new ListItem("--Select Division--", "0"));
            dddt.Clear();

            dddt = DataAccessLayer.fetchSemester();
            listSemester.DataSource = dddt;
            
            listSemester.DataTextField = "sem_name";
            listSemester.DataValueField = "sem_id";
            listSemester.DataBind();
            listSemester.Items.Insert(0, new ListItem("--Select Semester--", "0"));
            dddt.Clear();

        }

        protected void listClass_SelectedIndexChanged(object sender, EventArgs e)
        {
            lblAddTimeTableHeader.Text = listClass.SelectedIndex.ToString();
           // lblAddTimeTableHeader.Text = listClass.Text;
        }
    }
}