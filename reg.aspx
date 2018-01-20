<%@ Page Language="C#" AutoEventWireup="true" CodeFile="reg.aspx.cs" Inherits="reg" %>

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
       .ChangeWidth
{
    width:550px;    
}

    </style>



</head>
<body>
    <form id="form1" runat="server">
  
    <div>   
           <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width:1885px;height:250px"/>

     
         <div style="background-color: burlywood ; height: 30px; width: 1885px;">
             <asp:LinkButton ID="LinkButton1234" runat="server" onclick="LinkButton1_Click2">Home</asp:LinkButton>
              <asp:Label id="LinkButton2" runat="server" Text="| Register "></asp:Label>

              <li style="float:right;list-style-type: none"><a class="active" href="LOGIN.aspx">Login</a></li>
               

             </div>

            </div>

        <table>
            <tr>
                <td style="color:blue">
                    

              <asp:CheckBox runat="server" Text="By providing this infromation, I certify that I am the person indentified by these items, and that I agree to the site Terms of Use." ID ="check" />
                    <br />

                </td>
            </tr>
            <tr>
                <td>
 
                    <label class="required" style="padding-right:144px;color:blue"> Full Name </label> <asp:TextBox id="TextBox1" style="width:370px;height:25px" runat="server" ReadOnly="false"></asp:TextBox>
                    
                        <a href="#" style="background-color:yellow;text-decoration:none" title="Please Enter Full Name">?</a>
                     <asp:RequiredFieldValidator runat="server" ID="user" ControlToValidate="TextBox1" ErrorMessage="Please Enter Full Name" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                        
                </td>
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:58px"> Social Security Number </label> <asp:TextBox id="TextBox2" style="width:270px;height:25px" runat="server" ReadOnly="false"></asp:TextBox>
                    
                        <a href="#" style="background-color:yellow;text-decoration:none" title="Once you set up a User Name to access your account, you will no longer need to provide your complete social security 
number/account number, birthdate or zip code to log in. For security, you will need to provide your full 
social security number or account number if your forget your User Name or Password.">?</a>
                   <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator1" ControlToValidate="TextBox2" ErrorMessage="Please Enter Social Security Number" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="reg1" runat="server" ErrorMessage="Please check the Format" ControlToValidate="TextBox2" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic" />
                </td>
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required"> Confrim Social Security Number </label> <asp:TextBox id="TextBox3" style="width:270px;height:25px" runat="server" ReadOnly="false" AutoPostBack="true" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator2" ControlToValidate="TextBox3" ErrorMessage="Please Confirm Social Security Number" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Please check the Format" ControlToValidate="TextBox3" ValidationExpression="^\d{3}-?\d{2}-?\d{4}$" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic" />
                    <asp:CompareValidator runat="server" id="cmpSecurity" controltovalidate="TextBox2" controltocompare="TextBox3" Operator="Equal" type="Integer" errormessage="Does not match" ValidationGroup="grp1" Display="Dynamic"/> 
                        
                   
                </td>
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:132px"> Date of Birth</label> 
                    <asp:DropDownList ID="dropList" runat="server" AutoPostBack="true">
                        <asp:ListItem Value="0">January</asp:ListItem>
                         <asp:ListItem Value="0">February</asp:ListItem>
                         <asp:ListItem Value="1">March</asp:ListItem>
                         <asp:ListItem Value="2">April</asp:ListItem>
                         <asp:ListItem Value="3">May</asp:ListItem>
                         <asp:ListItem Value="4">June</asp:ListItem>
                         <asp:ListItem Value="5">July</asp:ListItem>
                         <asp:ListItem Value="6">August</asp:ListItem>
                         <asp:ListItem Value="7">September</asp:ListItem>
                         <asp:ListItem Value="8">October</asp:ListItem>
                         <asp:ListItem Value="9">November</asp:ListItem>
                         <asp:ListItem Value="10">December</asp:ListItem>

                    </asp:DropDownList>
                    <label>/</label>
                    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true">
                        <asp:ListItem Value="0">1</asp:ListItem>
                         <asp:ListItem Value="0">2</asp:ListItem>
                         <asp:ListItem Value="1">3</asp:ListItem>
                         <asp:ListItem Value="2">4</asp:ListItem>
                         <asp:ListItem Value="3">5</asp:ListItem>
                         <asp:ListItem Value="4">6</asp:ListItem>
                         <asp:ListItem Value="5">7</asp:ListItem>
                         <asp:ListItem Value="6">8</asp:ListItem>
                         <asp:ListItem Value="7">9</asp:ListItem>
                         <asp:ListItem Value="8">10</asp:ListItem>
                         <asp:ListItem Value="9">11</asp:ListItem>
                         <asp:ListItem Value="10">12</asp:ListItem>
                       
                        <asp:ListItem Value="0">13</asp:ListItem>
                         <asp:ListItem Value="0">14</asp:ListItem>
                         <asp:ListItem Value="1">15</asp:ListItem>
                         <asp:ListItem Value="2">16</asp:ListItem>
                         <asp:ListItem Value="3">17</asp:ListItem>
                         <asp:ListItem Value="4">18</asp:ListItem>
                         <asp:ListItem Value="5">19</asp:ListItem>
                         <asp:ListItem Value="6">20</asp:ListItem>
                         <asp:ListItem Value="7">21</asp:ListItem>
                         <asp:ListItem Value="8">22</asp:ListItem>
                         <asp:ListItem Value="9">23</asp:ListItem>
                         <asp:ListItem Value="10">24</asp:ListItem>
                        <asp:ListItem Value="5">25</asp:ListItem>
                         <asp:ListItem Value="6">26</asp:ListItem>
                         <asp:ListItem Value="7">27</asp:ListItem>
                         <asp:ListItem Value="8">28</asp:ListItem>
                         <asp:ListItem Value="9">29</asp:ListItem>
                         <asp:ListItem Value="10">30</asp:ListItem>
                        <asp:ListItem Value="11">31</asp:ListItem>                   

                    </asp:DropDownList>
                    <label>/</label>
                    
                    <asp:DropDownList ID="list1" runat="server" OnSelectedIndexChanged="Page_Load">

                       

                        
                         <asp:ListItem>2001</asp:ListItem>
                         <asp:ListItem>2000</asp:ListItem>
                         <asp:ListItem>1999</asp:ListItem> 
                        <asp:ListItem>1998</asp:ListItem>

                         <asp:ListItem>1997</asp:ListItem>
                         <asp:ListItem>1996</asp:ListItem>
                         <asp:ListItem>1995</asp:ListItem>
                         <asp:ListItem>1994</asp:ListItem> 
                        <asp:ListItem>1993</asp:ListItem>
                         <asp:ListItem>1992</asp:ListItem>

                         <asp:ListItem>1991</asp:ListItem>
                         <asp:ListItem>1990</asp:ListItem> 
                        <asp:ListItem>1989</asp:ListItem>

                         <asp:ListItem>1988</asp:ListItem>
                         <asp:ListItem>1987</asp:ListItem>
                         <asp:ListItem>1986</asp:ListItem> 
                        <asp:ListItem>1985</asp:ListItem>

                         <asp:ListItem>1984</asp:ListItem>
                         <asp:ListItem>1983</asp:ListItem>
                         <asp:ListItem>1982</asp:ListItem>
                         <asp:ListItem>1981</asp:ListItem>
                         <asp:ListItem>1980</asp:ListItem>
                        <asp:ListItem>1979</asp:ListItem>
                         <asp:ListItem>1978</asp:ListItem>
                         <asp:ListItem>1977</asp:ListItem> 
                        <asp:ListItem>1976</asp:ListItem>

                         <asp:ListItem>1975</asp:ListItem>
                         <asp:ListItem>1974</asp:ListItem>
                         <asp:ListItem>1973</asp:ListItem>
                         <asp:ListItem>1972</asp:ListItem>
                         <asp:ListItem>1971</asp:ListItem>
                        <asp:ListItem>1970</asp:ListItem>
                         <asp:ListItem>1969</asp:ListItem>
                        <asp:ListItem>1968</asp:ListItem>
                         <asp:ListItem>1967</asp:ListItem>
                         <asp:ListItem>1966</asp:ListItem> 
                        <asp:ListItem>1965</asp:ListItem>

                         <asp:ListItem>1964</asp:ListItem>
                         <asp:ListItem>1963</asp:ListItem>
                         <asp:ListItem>1962</asp:ListItem>
                         <asp:ListItem>1961</asp:ListItem>
                         <asp:ListItem>1960</asp:ListItem>
                        <asp:ListItem>1959</asp:ListItem>
                         <asp:ListItem>1958</asp:ListItem>
                        <asp:ListItem>1957</asp:ListItem>
                         <asp:ListItem>1956</asp:ListItem>
                         <asp:ListItem>1955</asp:ListItem> 
                        <asp:ListItem>1954</asp:ListItem>

                         <asp:ListItem>1953</asp:ListItem>
                         <asp:ListItem>1952</asp:ListItem>
                         <asp:ListItem>1951</asp:ListItem>
                         <asp:ListItem>1950</asp:ListItem>
                         
                    </asp:DropDownList>

                   
                </td>
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:168px"> Adress </label> <asp:TextBox id="TextBox5" style="width:550px;height:25px" runat="server" ReadOnly="false"></asp:TextBox>
                    
                        <a href="#" style="background-color:yellow;text-decoration:none" title="Many foreign countries do not have a zip code. If you are foreign, 
you can skip the zip code in the address.">?</a>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator3" ControlToValidate="TextBox5" ErrorMessage="Please Enter Adress" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                        
                   
                </td>
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:140px"> User Name </label> <asp:TextBox id="TextBox6" style="width:270px;height:25px" runat="server" ReadOnly="false"></asp:TextBox>
                    
                   <label style="background-color:yellow;color:red">6 to 64 Characters</label>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator4" ControlToValidate="TextBox6" ErrorMessage="Please Enter User Name" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Please Enter Valid User Name" ControlToValidate="TextBox6" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic" />
                   
                </td>
                
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:152px"> Password </label> <asp:TextBox TextMode="Password" id="TextBox7" style="width:270px;height:25px" runat="server" ReadOnly="false" ValidationGroup="grp1"></asp:TextBox>
                    
                   <a href="#" style="background-color:yellow;text-decoration:none;color:red" title="Password must be between 8 and 10 characters, contain at least 
one digit and one alphabetic character, and must not contain special characters">Password Rules</a>
                     <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator5" ControlToValidate="TextBox7" ErrorMessage="Please Enter Password" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                     <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Please Enter Valid Password" ControlToValidate="TextBox7" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic" />
                   
                   
                </td>
                
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:93px"> Confirm Password </label> <asp:TextBox TextMode="Password" id="TextBox8" style="width:270px;height:25px" runat="server" ReadOnly="false" ValidationGroup="grp1"></asp:TextBox>
                    <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator6" ControlToValidate="TextBox8" ErrorMessage="Please Re Enter Password" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Please Confirm Password" ControlToValidate="TextBox8" ValidationExpression="(?!^[0-9]*$)(?!^[a-zA-Z]*$)^([a-zA-Z0-9]{8,10})$" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic" />
                   <asp:CompareValidator runat="server" id="CompareValidator1" controltovalidate="TextBox8" controltocompare="TextBox7" Operator="Equal" type="String" errormessage="Password Does not match" ValidationGroup="grp1" Display="Dynamic"/> 
                        
                   
                </td>
                
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:119px">Email Address </label> <asp:TextBox id="TextBox9" style="width:370px;height:25px" runat="server" ReadOnly="false"></asp:TextBox>
                    
             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator7" ControlToValidate="TextBox9" ErrorMessage="Please Enter User ID" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                   <asp:RegularExpressionValidator ID="regexpName" runat="server" ErrorMessage="Please Enter valid Email ID." ControlToValidate="TextBox9" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                        
                   
                </td>
                
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:61px"> Confirm Email Address </label> <asp:TextBox id="TextBox10" style="width:370px;height:25px" runat="server" ReadOnly="false"></asp:TextBox>
                    
                   
                         <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator8" ControlToValidate="TextBox9" ErrorMessage="Please Re Enter Email ID" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                   <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="Please Enter valid Email ID." ControlToValidate="TextBox9" ValidationExpression="^([\w\.\-]+)@([\w\-]+)((\.(\w){2,3})+)$" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                        
                    <asp:CompareValidator runat="server" id="CompareValidator2" controltovalidate="TextBox10" controltocompare="TextBox9" Operator="Equal" type="String" errormessage="Email Does not match" ValidationGroup="grp1" Display="Dynamic"/> 
                        
                   
                </td>
                
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:99px"> Security Question </label> 
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="true" CssClass="ChangeWidth">
                        <asp:ListItem Value="0">What is your mother's maiden name?</asp:ListItem>
                         <asp:ListItem Value="0">What was your childhood nickname?</asp:ListItem>
                         <asp:ListItem Value="1">What is the name of your favorite childhood friend?</asp:ListItem>
                         <asp:ListItem Value="2">What is your favorite sport team?</asp:ListItem>
                         <asp:ListItem Value="3">What was the make and model of your first car?</asp:ListItem>
                         <asp:ListItem Value="4">What school did you attend for sixth grade?</asp:ListItem>
                         <asp:ListItem Value="5">What was the last name of your third grade teacher?</asp:ListItem>
                         <asp:ListItem Value="6">In what town was your first job?</asp:ListItem>
                         <asp:ListItem Value="7">What is your favorite movie?</asp:ListItem>
                         <asp:ListItem Value="8">Who is your childhood sports hero?</asp:ListItem>
                         <asp:ListItem Value="9">In what year was your father born?</asp:ListItem>
                         

                    </asp:DropDownList>
                    
                   <a href="#" style="background-color:yellow;text-decoration:none" title="Single word answers are best. John, red, green, drum, for example.">?</a>
                        
                        
                   
                </td>
                
            </tr>
             <tr>
                <td style="color:blue">

                   <label class="required" style="padding-right:164px"> Answer </label> <asp:TextBox id="TextBox12" style="width:270px;height:25px" runat="server" ReadOnly="false"></asp:TextBox>
             <asp:RequiredFieldValidator runat="server" ID="RequiredFieldValidator9" ControlToValidate="TextBox12" ErrorMessage="Please Enter Answer" ValidationGroup="grp1" ForeColor="Red" Display="Dynamic"/>
                </td>
                
            </tr>
            
        </table>
       
                <h2 style="text-transform:uppercase;color:red" class="require">Denotes Required Items</h2>
        <table>
            <tr>
                <td style="padding-left:200px">
                     <asp:Button id="submit123" style="width:80px;height:30px;color:black;font-size:18px" Text="Submit" runat="server" OnClick="submit_Click" ValidationGroup="grp1"></asp:Button>

                </td>
            </tr>
        </table>
  
    </form>
</body>
</html>
