﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default4 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["currentUser"] != null)
        {
            login.Text = "Logout";
        }
        else
        {
            login.Text = "Login";
        }
    }

    protected void login_Click(object sender, EventArgs e)
    {
        if (Session["currentUser"] != null)
        {
            Response.Redirect("LOGOUT.aspx");
        }
        else
        {
            Response.Redirect("LOGIN.aspx");
        }


    }
}