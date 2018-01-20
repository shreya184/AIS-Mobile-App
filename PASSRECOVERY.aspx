<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PASSRECOVERY.aspx.cs" Inherits="PASSRECOVERY" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
     <script runat="server">
        void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
         </script>

<body>
    <form id="form1" runat="server">
    <div>
     <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width:1885px;height:250px"/>

        
        <table>
            <tr>
                <td style="color:blue;font-size:22px">
                    Password Recovery
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label style="color:royalblue;font-size:20px;padding-right:10px;font-family:Calibri" runat="server" ID="id" class="required">Email Adress</asp:Label>
                    <asp:TextBox id="TextBox2" style="width:270px;height:25px" runat="server" ReadOnly="false" ValidationGroup="grp2"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="TextBox2" ErrorMessage="Please Enter Email ID" ValidationGroup="grp2" ForeColor="Red" Display="Dynamic"/>
                   <asp:RegularExpressionValidator ID="regexpName" runat="server" ErrorMessage="Please Enter valid Email ID." ControlToValidate="TextBox2" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="grp2" ForeColor="Red" Display="Dynamic"/>
                        
                </td>
                
                <td>
                    <asp:Button id="login" style="width:140px;height:30px;color:black;font-size:14px" Text="Recover Password" runat="server" OnClick="login_Click" ValidationGroup="grp2"></asp:Button>
                </td>
            </tr>
            <tr>

                <td style="padding-left:180px;color:royalblue">
                    <asp:LinkButton id="main" runat="server" OnClick="reset_Click">Go Back to Main Page
                    </asp:LinkButton>
                </td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
