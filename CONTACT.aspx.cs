using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using System.Net;

public partial class CONTACT : System.Web.UI.Page
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
            sendmsg.Enabled = true;
            TextBox1.Enabled = true;


        }
    }

    protected void sendmsg_Click(object sender, EventArgs e)
    {
        Response.Write("<script>alert('Thank You. An email notification has been sent to your email address.')</script>");


        try
        {
            string email_id;
            StudentInfor obj = Session["currentUser"] as StudentInfor;
            email_id = obj.Email.ToString();

            /* Body of the email is:*/
            string body = "Dear Valued Student, <br /> You are receiving this email because you contacted us with a question and/or a concern. <br /> Our support staff will repond wthin the next 48 hours. <br /><br /> Thank You <br/> <mark> Education Student Loan </mark>";

            using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], email_id))
            {
                mail.Subject = "We have received your message!";
                mail.Body = body;
                mail.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = ConfigurationManager.AppSettings["Host"];
                smtp.EnableSsl = Convert.ToBoolean(ConfigurationManager.AppSettings["EnableSSL"]); ;
                NetworkCredential NetworkCred = new NetworkCredential(ConfigurationManager.AppSettings["SMTPuser"], ConfigurationManager.AppSettings["SMTPpassword"]);
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = int.Parse(ConfigurationManager.AppSettings["Port"]); ;
                smtp.Send(mail);
                ClientScript.RegisterStartupScript(GetType(), "alert", "alert('Thank You.An email notification has also been sent to the address we have in out file.');", true);
            }
        }
        catch (Exception)
        {

        }
    }
}