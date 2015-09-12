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
            DataTable dddt = DataAccessLayer.fetchClass();
            listClass.DataSource = dddt;
            listClass.DataTextField = "b_name";
            listClass.DataValueField = "b_id";
            listClass.DataBind();
            listClass.Items.Insert(0, new ListItem("--Select Class--", "0"));
            dddt.Clear();

            dddt = DataAccessLayer.fetchDivision();
            listDivision.DataSource = dddt;
            listDivision.DataTextField = "division";
            listDivision.DataValueField = "id";
            listDivision.DataBind();
            listDivision.Items.Insert(0, new ListItem("--Select Division--", "0"));
            dddt.Clear();

        }
    }
}