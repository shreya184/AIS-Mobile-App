using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LOGIN : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void login_Click(object sender, EventArgs e)
    {
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        //Response.Write("<script>alert()</script>");
        //Console.WriteLine("t--------------------------------------------------->" + allUsersList);
        String username = TextBox2.Text;
        String pass = TextBox3.Text;
        bool val = false;
        bool notFound = false;
        int count = 0;

        if (allUsersList != null)
        {

            foreach (var u in allUsersList)
            {
                if (u.UserName == username)
                {
                    notFound = true;
                }
                if (u.UserName == username && u.Password == pass)
                {
                    val = true;
                    Response.Write("<script>alert('Suceessfully logged In')</script>");
                    //count++;
                    Session["currentUser"] = u;
                    Response.Redirect("MYACCOUNT.aspx");
                }

            }

            if (!val && notFound)
            {
                Response.Write("<script>alert('Credentials Do not Match!!!!')</script>");
            }

            if (!notFound)
            {
                Response.Write("<script>alert(' Please register first with our system.')</script>");
            }

        }
        else
        {
            Response.Write("<script>alert(' Please register first with our system.')</script>");
            //notFound = true;

        }

    }

    protected void reset_Click(object sender, EventArgs e)
    {
        Response.Redirect("PASSRECOVERY.aspx");
    }
}