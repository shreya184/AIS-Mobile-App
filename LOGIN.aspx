<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LOGIN.aspx.cs" Inherits="LOGIN" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
         
       .required:after {
    color: red;
    content: '*';
}
       .require:before {
    color: red;
    content: '*';
}
        .padl{padding-left:10px}

    </style>
     <script runat="server">
        void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
          void Button1_Click2(object sender, EventArgs e)
        {
            Response.Redirect("reg.aspx");
        }
      
    </script>

    <script type="text/javascript">

</script>
</head>
<body>
    <form id="form1" runat="server">
    
    
             <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width:1885px;height:250px"/>

      

         <div style="background-color: burlywood ; height: 30px; width: 1885px;">

 <asp:LinkButton id="Button1" runat="server" onclick="Button1_Click">Home</asp:LinkButton>
              <asp:Label id="LinkButton2" runat="server" Text="| Login "></asp:Label>

            

             </div>
       <table>
           <tr>
               <td style="text-align:center;color:darkred;padding-left:255px;font-size:35px"> User Login

               </td>
           </tr>
           
           <tr>
               <td style="color:red;font-size:25px">If you are not registered user please click here:  <asp:LinkButton id="LinkButton1" runat="server" OnClick="Button1_Click2">Register Now</asp:LinkButton>
                   <br />

               </td>
              

           </tr>
           
           <tr>
             
              <td style="color:blue;font-size:22px">  If you are registered user, please enter your login credential below
                  </td>
           </tr>
           <tr>
               <td style="color:blue;font-size:15px">If you forgot your password please click here <asp:LinkButton id="reset" runat="server" OnClick="reset_Click">Recover my Password</asp:LinkButton>

               </td>
           </tr>
         
       </table>
       
        <table>
            <br />
            <tr>
                <td><asp:Label style="color:blue;font-size:20px" runat="server" ID="id" class="required">User Id(Email Adress): </asp:Label><asp:TextBox id="TextBox2" style="width:325px;height:25px" runat="server" ReadOnly="false" ValidationGroup="group1"></asp:TextBox>
                  <asp:RequiredFieldValidator runat="server" ID="user" ControlToValidate="TextBox2" ErrorMessage="Please Enter User ID" ValidationGroup="group1" ForeColor="Red" Display="Dynamic"/>
                   <asp:RegularExpressionValidator ID="regexpName" runat="server" ErrorMessage="Please Enter valid Email ID." ControlToValidate="TextBox2" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="group1" ForeColor="Red" Display="Dynamic"/>
               </td>
             
            </tr>
            <tr>
                <td> <asp:Label class="required" style="color:blue;font-size:20px;padding-right:106px" runat="server">Password:</asp:Label>

               <asp:TextBox id="TextBox3" style="width:325px;height:25px" runat="server" ReadOnly="false" ValidationGroup="group1" TextMode="Password"></asp:TextBox>

                <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TextBox3" ErrorMessage="Please Enter Password" ValidationGroup="group1" ForeColor="Red" Display="Dynamic"/>
               
               </td>

            </tr>
            <tr>
                <td>
                  <asp:Label style="color:red;font-size:20px;font-weight:bold;padding-right:80px" runat="server">* DENOTES REQUIRED ITEMS</asp:Label>
               
                     <asp:Button id="login" style="width:100px;height:30px;color:blue;font-size:18px" Text="Log In" runat="server" OnClick="login_Click" ValidationGroup="group1"></asp:Button>
                    
                </td>
            </tr>
        </table>
          
    
    </form>
</body>
</html>
