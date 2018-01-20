<%@ Page Language="C#" AutoEventWireup="true" CodeFile="FORM.aspx.cs" Inherits="Default4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>


    
    <style>
        table, td {
    border: 1px solid black;
    border-collapse:collapse;
}
         

        ul.breadcrumb {
    padding: 8px 16px;
    list-style: none;
    background-color:orange;
}
ul.breadcrumb li {display: inline;}
ul.breadcrumb li+li:before {
    padding: 8px;
    color: black;
    content: "\00a0";
}
ul.breadcrumb li a {color: green;}
hr {
    display: block;
    margin-top: 0.5em;
    margin-bottom: 0.5em;
    margin-left: auto;
    margin-right: auto;
    border-style: inset;
    border-width: 1px;
}

    
    </style>

 

 </head>      
    <body> 
        <form id="form1" runat="server">
        

          <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width:1885px;height:250px"/>

        

         <div style="background-color: burlywood ; height: 30px; width: 1885px;">
<ul class="breadcrumb" >
  <li><a href="Default.aspx">Home</a></li>
    <li>|</li>
   <li>Form</li>
  
  <li id="in" style="float:right;list-style-type: none"><asp:LinkButton runat="server" ID="login" OnClick="login_Click">Login</asp:LinkButton></li>
    

    <!--
    a:link { text decoration : none; }
        -->
</ul>
            
 
         </div>
        <br />
        <table style="width:1885px;height:500px;border:1px">
            <tr>
            <td>
                SureCare Account Creation Authorization
            </td>
            <td>
      <a href="loan.pdf">       <img src="img\pdf image.png" style="width:150px;height:150px"/> </a>
               
                </td>

                </tr>

             <tr>
            <td>
                Federal Direct Consolidation Loan Application And Prmissory Note
            </td>
            <td>
                  <a href="https://static.studentloans.gov/images/ApplicationAndPromissoryNote.pdf" >  <img src="img\pdf image.png" style="width:150px;height:150px"/></a>
            </td>
                </tr>

             <tr>
            <td>
                Direct Consolidation Loan Applications
            </td>
            <td>
                    <a href="https://studentloans.gov/myDirectLoan/consolidationPaper.action" > <img src="img\pdf image.png" style="width:150px;height:150px"/></a>
                </td>
                </tr>

             <tr>
            <td>
                Public Service Loan Forgiveness(PSLF)
            </td>
            <td>
                 <a href="https://studentaid.ed.gov/sa/sites/default/files/public-service-employmentcertification-
form.pdf"> <img src="img\pdf image.png" style="width:150px;height:150px"/></a>

            </td>
                </tr>
        </table>
        </form>
    </body>

</html>
