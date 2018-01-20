using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["currentuser"] == null)
        {
            ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:hidelogout();", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(GetType(), "Javascript", "javascript:hideLogin();", true);

        }
     
    }
}