<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MYACCOUNT.aspx.cs" Inherits="MYACCOUNT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>

    
         <script runat="server">
        void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    </script>
    <script>
        function hideLogin()
        {
            document.getElementById("in").style.visibility = "hidden";
           
        }

    </script>

    <script>
        
        function hidelogout()
        {
            document.getElementById("out").style.visibility = "hidden";
          
        }
        </script>

</head>
<body>
    <form id="form1" runat="server">
    <div>
    <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width:1885px;height:250px"/>

      

         <div style="background-color: burlywood ; height: 30px; width: 1885px;">

 <asp:LinkButton id="Button1" runat="server" onclick="Button1_Click2">Home</asp:LinkButton>
              <asp:Label id="LinkButton2" runat="server" Text="| My Account "></asp:Label>

              <li id="in" style="float:right;list-style-type: none"><a class="active" href="LOGIN.aspx">Login</a></li>
             <li id="out" style="float:right;list-style-type: none"><a class="active" href="LOGOUT.aspx">LogOut</a></li>


             </div>
    </div>
        <h1 style="color:darkred;text-align:center">Your Loan Account Detail</h1>
        <hr />
        <table>
            <tr>
                <td>
                  <h2 style="color:darkblue">  Account Number:  <asp:label runat="server" id ="ACNumber1" style="padding-left:108px;color:purple">NA</asp:label> </h2>
                   
                </td>
                
            </tr>
             <tr>
                <td>
                  <h2 style="color:darkblue">  Full Name:  <asp:label runat="server" id ="FullName1" style="padding-left:120px;color:purple">John Nathaniel Doe</asp:label> </h2>
                   
                </td>
                
            </tr>
             <tr>
                <td>
                  <h2 style="color:darkblue">  Last Updated Date:  <asp:label runat="server" ID="LUD" style="padding-left:78px;color:purple">NA</asp:label> </h2>
                   
                </td>
                
            </tr>
        </table>
        <hr />
        <table style="border:1px solid black;width:1500px;height:390px">
            <tr>
                <td style="background-color:lightskyblue;color:blue;font-size:x-large;width:1000px;height:65px">
           Current Balance
                </td>
                <td style="background-color:lightskyblue;color:purple;font-size:x-large;width:500px;height:65px;text-align:right">
                  <asp:Label ID="current" Text="currentBalance" runat="server" >
                    
                  </asp:Label>  
                </td>
            </tr>
            <tr>
                <td style="background-color: lightblue; color: blue; font-size:x-large; width: 1000px; height: 65px">
                    Last Updated Date
                </td>

                <td style="background-color:lightblue;color:purple;font-size:x-large;width:500px;height:65px;text-align:right">
                    <asp:Label ID="Label1" Text="LastUpdateDate" runat="server" ></asp:Label>
                </td>
            </tr>
            <tr>
                <td style="background-color:lightskyblue;color:blue;font-size:x-large;width:1000px;height:65px">
                    Regular Monthly Payment Amount
                </td>
                <td style="background-color:lightskyblue;color:purple;font-size:x-large;width:1000px;height:65px;text-align:right">
                   <asp:Label ID="Label2" Text="RegularMonthlyPayment" runat="server" ></asp:Label>
                </td>

            </tr>
            <tr>
                 <td style="background-color:lightblue;color:blue;font-size:x-large;width:1000px;height:65px">
                    Amount Satisfied By Extra Payment
                </td>
                <td style="background-color:lightblue;color:purple;font-size:x-large;width:1000px;height:65px;text-align:right">
                   <asp:Label ID="Label3" Text="AmountSati" runat="server" ></asp:Label>
                </td>

            </tr>
            <tr>
                <td style="background-color:lightskyblue;color:blue;font-size:x-large;width:1000px;height:65px">
                    Past Due Payment(if Applicable)
                </td>
                <td style="background-color:lightskyblue;color:purple;font-size:x-large;width:1000px;height:65px;text-align:right">
                    <asp:Label ID="Label4" Text="PastDue" runat="server" ></asp:Label>
                </td>

            </tr>

            <tr>
                <td style="background-color:lightblue;color:darkblue;font-size:x-large;width:1000px;height:65px;font-weight:bold">
                    Current Amount Due
                </td>
                <td style="background-color:lightblue;color:purple;font-size:x-large;width:1000px;height:65px;text-align:right">
                   <asp:Label ID="Label5" Text="CurrentAmountDue" runat="server" ></asp:Label>
                </td>
            </tr>
        </table>


        <h1 style="color:darkblue">
            Current Statement Due Date: <asp:label style="padding-left:78px;color:purple" runat="server" ID="CSDD" Text="CurrSDD"></asp:label> 
        </h1>

        <hr />
    </form>
</body>
</html>
