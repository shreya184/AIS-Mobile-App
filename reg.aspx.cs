using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Net.Mail;
using System.Net;

public partial class reg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void submit_Click(object sender, EventArgs e)
    {

        bool value = check.Checked;
        List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;
        if (Page.IsValid)
        {
            string fullname = TextBox1.Text;
            string ssn = TextBox3.Text;
            string month = dropList.SelectedValue;
            string day = DropDownList1.SelectedValue;
            string year = list1.SelectedValue;
            string dob = month + " / " + day + " / " + year;
            string add = TextBox5.Text;
            string username = TextBox6.Text;
            string pass = TextBox8.Text;
            string email = TextBox10.Text;
            string secuityQ = DropDownList3.SelectedValue;
            string ans = TextBox12.Text;
            Random rand = new Random();
            int r = rand.Next(100000, 999999);
            StudentInfor student = new StudentInfor(username, pass, ssn, fullname, dob, add, email, secuityQ, ans, r);

            if (!value)
            {

                Response.Write("<script>alert('Please accept certifying statement!')</script>");
            }
            else
            {

                allUsersList.Add(student);
                //Session["currentuser"] = student;
                Response.Write("<script>alert('You can now login by clikcing Login Button !')</script>");

            }
            int number_defalut_int = 1;
            float number_default = (float)number_defalut_int;

            //date
            string date_default = "1/1/1950";

            SqlConnection connectionToServer = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());
            connectionToServer.Open();
            string theStatement = "INSERT INTO NaikS_WADfl16_StudentInfo (socialSecurityNumber, userName, password, fullName, dateOfBirth, address, emailAddress,securityQuestion,securityQuestionAnswer,accountNumber,lastUpdatedDate,currentBalance,regularMonthlyPaymentAmount,amountSatisfiedByExtraPayment,pastDueAmount,currentAmountDue,currentStatementDueDate) VALUES(@socialSecurityNumber,@userName,@password,@fullName,@dateOfBirth,@address,@emailAddress,@securityQuestion,@securityQuestionAnswer,@accountNumber,@lastUpdatedDate,@currentBalance,@regularMonthlyPaymentAmount,@amountSatisfiedByExtraPayment,@pastDueAmount,@currentAmountDue,@currentStatementDueDate)";
            SqlCommand sqlCommand = new SqlCommand(theStatement, connectionToServer);

            
            try
            {
                
                sqlCommand.Parameters.AddWithValue("@socialSecurityNumber", student.Social);
                sqlCommand.Parameters.AddWithValue("@userName", student.UserName);
                sqlCommand.Parameters.AddWithValue("@password", student.Password);
               // sqlCommand.Parameters.AddWithValue("@certfiedchecked", certified);
                sqlCommand.Parameters.AddWithValue("@fullName", student.FullName);
                sqlCommand.Parameters.AddWithValue("@dateOfBirth", student.Date);
                sqlCommand.Parameters.AddWithValue("@address", student.Adress);
                sqlCommand.Parameters.AddWithValue("@emailAddress", student.Email);
                sqlCommand.Parameters.AddWithValue("@securityQuestion", student.Securityquestion);
                sqlCommand.Parameters.AddWithValue("@securityQuestionAnswer", student.Answer);
                sqlCommand.Parameters.AddWithValue("@accountNumber", student.ACNum);
                sqlCommand.Parameters.AddWithValue("@lastUpdatedDate", date_default );
                sqlCommand.Parameters.AddWithValue("@currentBalance",number_default);
                sqlCommand.Parameters.AddWithValue("@regularMonthlyPaymentAmount", number_default);
                sqlCommand.Parameters.AddWithValue("@amountSatisfiedByExtraPayment", number_default);
                sqlCommand.Parameters.AddWithValue("@pastDueAmount", number_default);
                sqlCommand.Parameters.AddWithValue("@currentAmountDue", number_default);
                sqlCommand.Parameters.AddWithValue("@currentStatementDueDate", date_default);

                sqlCommand.ExecuteNonQuery();
                allUsersList.Add(student);

            }

            finally
            {
                connectionToServer.Close();
            }

            Response.Write("<script>alert('Thank you! An email has been sent to address you provided')</script>");
            string body_part1 = "Dear" + "" + "<mark>" + username + ",</mark>";
            string body_part2 = "<br /> Thank you for registering with us. ";
            string body_part3 = "You can now access your loan account at <a href=\"http://dcm.uhcl.edu/c432016fa01naiks2/LOGIN.aspx\">login</a>";
            string body_part4 = "<br /><br />In the meantime, please share the word about <mark>IHelp Education Student Loan</mark> with your friends and neighbours!.<mark>Education Student Loan</mark> is open to all eligible college applications thoughout the United States";
            string body_part5 = "<br />Thank you again for your registration.If you have any questions, please contact us at <a href=\"http://dcm.uhcl.edu/c432016fa01naiks2/CONTACT.aspx\">here</a>";
            string body_part6 = "<br /><br />With Best Wishes,";
            string body_part7 = "<br /><mark>Education Student Loan</mark>";
            string body = body_part1 + body_part2 + body_part3 + body_part4 + body_part5 + body_part6 + body_part7;
            try
            {
                using (MailMessage mail = new MailMessage(ConfigurationManager.AppSettings["SMTPuser"], username))
                {
                    mail.Subject = "New Registration Notification";
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

                }
            }
            catch (Exception ex)
            {
                string str2;
                str2 = "Error --> " + ex.Message;
                string str3 = "Sorry! Some error occured during registration!";

                Response.Write("<script language=javascript>alert('" + str3 + "ERROR:" + str2 + "');</script>");
            }


        }
    }


    protected void LinkButton1_Click2(object sender, EventArgs e)
    {
        Response.Redirect("Default.aspx");
    }

    protected void login_Click(object sender, EventArgs e)
    {
        Response.Redirect("LOGIN.aspx");
    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {
        List<StudentInfor> list2 = Application["AllUsersList"] as List<StudentInfor>;
        string checkSocial = TextBox3.Text;
        if (list2 != null)
        {
            foreach (StudentInfor soc in list2)
            {
                if (soc.Social == checkSocial)
                {
                    //Response.Write("<script>alert('{0} already exists, checkSocial')</script>");
                    //checkSocial = checkSocial.ToString() + "already Exists. Please go to login page";
                    //Page.ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert(" + checkSocial.ToString() + ");", true);

                    Response.Write("<script>alert(' " + checkSocial + " already exists. Please go to Login Page. ')</script>");
                    break;
                }
            }
        }
    }
}

