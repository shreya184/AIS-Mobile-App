using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MYACCOUNT : System.Web.UI.Page
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
            StudentInfor obj = Session["currentuser"] as StudentInfor;
            if (obj != null)
            {
                LUD.Text = obj.UpdateDate.ToString();
                FullName1.Text = obj.FullName;
                ACNumber1.Text = obj.ACNum.ToString();
                current.Text = obj.CurrentBalance.ToString();
                Label1.Text = obj.UpdateDate.ToString();
                Label2.Text = obj.RegularPayment.ToString();
                Label3.Text = obj.AmountSatisfied.ToString();
                Label4.Text = obj.PastDue.ToString();
                Label5.Text = obj.CurrentDue.ToString();
                CSDD.Text = obj.CurrentStatement;

            }

        }

        

    }
}