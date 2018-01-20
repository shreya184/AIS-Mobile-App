<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CONTACT.aspx.cs" Inherits="CONTACT" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <style>

         table, td {
    border: 2px solid red;
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
.button {
  display: block;
  height: 25px;
  background: #f1f1f1;
  padding: 10px;
  text-align: center;
  border-radius: 5px;
  border: 1px solid #e1e1e2;
  color: #000;
  font-weight: bold;
}

 #line1 {
              text-align:center;
              color:red;
          }
          #line2 {
              text-align:center;
              color:blue;
          }

 #messagetext {
              background-color:gray;
              width:100%;
             
          }
          #sendmsg {
              height:40px;
              width:auto;
              text-align:center;
              margin:auto;
              display:block;
              font-size:large;
          }
          
        
         
         }
</style>
    <script runat="server">
        void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Default.aspx");
        }
    </script>

     <script type="text/javascript">
        var xmlDoc;
        var xmlhttp;
        function loadXMLDoc()
        {
            xmlhttp = new XMLHttpRequest();
            xmlhttp.onreadystatechange = readData;
            xmlhttp.open("GET", "contactinfor.xml",true);
         xmlhttp.send();
        }
        function readData()
        {
            if (xmlhttp.readyState == 4)
            {
                xmlDoc = xmlhttp.responseXML;
                var items = xmlDoc.getElementsByTagName("info");
                var Email = items[0].getAttribute("email");
                document.getElementById("email").innerHTML = Email;
                var mailingAddress = items[0].getAttribute("mailing-address");
                document.getElementById("mailAdreess").innerHTML = mailingAddress;
                var tollFreePhone = items[0].getAttribute("toll-free-phone");
                document.getElementById("toll-free-phone").innerHTML = tollFreePhone;
                var directPhone = items[0].getAttribute("direct-phone");
                document.getElementById("direct-phone").innerHTML = directPhone;
                var Website = items[0].getAttribute("website");
                document.getElementById("website").innerHTML = Website;
               }
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
    <title></title>
</head>
<body onload="loadXMLDoc()">
    
    <div>
    
    </div>
    <form id="form2" runat="server">
    

          
         
         <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width:1885px;height:250px"/>

      

         <div style="background-color: burlywood ; height: 30px; width: 1885px;">

 <asp:LinkButton id="Button1" runat="server" onclick="Button1_Click">Home</asp:LinkButton>
    <asp:Label id="LinkButton2" runat="server" Text="| Contact Us "></asp:Label>
  <li id="in" style="float:right; list-style-type: none"><a class="active" href="LOGIN.aspx">Login</a></li>
             <li id="out" style="float:right;list-style-type: none"><a class="active" href="LOGOUT.aspx">LogOut</a></li>

   
            
         </div>
        
      
         <br />
 <table style="width:1885px;height:300px">
        <tr>
            <td style="width:300px">Mailing Address</td>
            <td id="mailAdreess"></td>
        </tr>
        <tr>
            <td style="width:300px"">Toll Free Phone Number</td>
            <td id="toll-free-phone" style="color:#337AFF;text-decoration:underline;"></td>
        </tr>
        <tr>
            <td style="width:300px">Direct Phone Number</td>
            <td id="direct-phone" style="color:#337AFF;text-decoration:underline;"></td>
        </tr>
        <tr>
            <td style="width:300px">Email Address</td>
            <td id="email" class="auto-style7"></td>
        </tr>
        <tr>
            <td style="width:300px">Website</td>
            <td id="website"></td>
        </tr>
    </table>
       
           

       <h2 id="line1"> You must be logged in to send us a message</h2>
        <h2 id="line2">Please type your message below and click the Send Message button</h2>

   <div style="text-align:center">
        <asp:TextBox id="TextBox1" style="width:400px;height:300px" runat="server" ReadOnly="false" TextMode="MultiLine" Enabled="false"></asp:TextBox>

    
       </div>
        <asp:Button id="sendmsg" Text="Send Message" runat="server" style="color:blue" OnClick="sendmsg_Click" Enabled="false"></asp:Button>
   
    </form>


    </body>

    
</html>
