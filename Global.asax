<%@ Application Language="C#" %>
<%@ Import Namespace ="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>


<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {

        Application["AllUsersList"] = new List<StudentInfor>();
         List<StudentInfor> allUsersList = Application["AllUsersList"] as List<StudentInfor>;

        SqlConnection connectionToServer = new SqlConnection(ConfigurationManager.ConnectionStrings["Database"].ToString());

        string theStatement = "SELECT * from NaikS_WADfl16_StudentInfo";
        SqlCommand sqlCommand = new SqlCommand(theStatement, connectionToServer);

        try
        {
            connectionToServer.Open();
            SqlDataReader sqlReader = sqlCommand.ExecuteReader();
            while (sqlReader.Read())
            {
                StudentInfor info = new StudentInfor();
                info.UserName = ((string)sqlReader["userName"]);
                info.Password = ((string)sqlReader["password"]);
                info.Certify = true;
                info.Social = ((string)sqlReader["socialSecurityNumber"]);
                info.FullName = ((string)sqlReader["fullName"]);
                info.Date = ((string)sqlReader["dateOfBirth"]);
                info.Adress = ((string)sqlReader["address"]);
                info.Email = ((string)sqlReader["emailAddress"]);
                info.Securityquestion = ((string)sqlReader["securityQuestion"]);
                info.Answer = ((string)sqlReader["securityQuestionAnswer"]);
                info.ACNum = ((int)sqlReader["accountNumber"]);
                info.UpdateDate = ((string)sqlReader["lastUpdatedDate"]);
                info.CurrentBalance = (float)sqlReader.GetDouble(12);
                info.RegularPayment = (float)sqlReader.GetDouble(13);
                info.AmountSatisfied = (float)sqlReader.GetDouble(14);
                info.PastDue = (float)sqlReader.GetDouble(15);
                info.CurrentDue = (float)sqlReader.GetDouble(16);
                info.CurrentStatement = ((string)sqlReader["currentStatementDueDate"]);

                allUsersList.Add(info);
                
            }
        }
        finally { connectionToServer.Close(); }
    }

    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e)
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e)
    {
        Session.Abandon();
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }

</script>
