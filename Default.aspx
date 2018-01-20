<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style type="text/css">
        .dropdown {
            position: relative;
            display: inline-block;
        }

        .dropdown-content {
            display: none;
            position: relative;
            background-color: none;
            min-width: 100px;
            float: right;
            box-shadow: none;
        }

        .dropdown:hover .dropdown-content {
            display: block;
        }
    </style>
    <title></title>

</head>
<body>
</body>
</html>


<html>

<body>
    <form id="form4" runat="server">
        <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width: 1885px; height: 250px">

        </img>

        <table>

            <tr>
                <td>
                    <div style="background-color: #F2F2F2; height: 300px; width: 275px;">

                        <ul style="list-style: none; font-size: large">

                            <li>
                                <asp:LinkButton runat="server" ID="login" OnClick="login_Click">Login</asp:LinkButton></li>
                            <li class="dropdown">
                                <a href="#">Info Center ></a>
                                <ul class="dropdown-content">
                                    <li><a href="GLOSSARY.aspx">Glossary</a></li>
                                    <li><a href="FAQ.aspx">FAQ</a></li>
                                </ul>

                                <li><a href="MYACCOUNT.aspx">My Account</a></li>
                                <li><a href="FORM.aspx">Forms</a></li>
                                <li><a href="CONTACT.aspx">Contact Us</a></li>
                        </ul>

                    </div>
                </td>

                <td>

                    <div style="background-color: #FCF3CF; height: 300px; width: 1600px;">

                        <h2 style="color: blue">Who We Are..... </h2>
                        <h1 style="color: forestgreen">Student Education Loan service provides loan services for the one who look for financial help to get his/her education goals completed.We provide services for Campus Based Loans, Private Education Loans and Federal Family Education Loans. We work hard with you to get the Loan You Deserve, Maintain Loan Activities, Send Payment Reminders and Process Payments.

                        </h1>


                    </div>

                </td>
            </tr>
        </table>
        <table>
            <tr>
                <td>
                    <a href="https://ssl.comodo.com/">
                        <img src="https://www.instantssl.com/images/compare_page_sc5_logo.png" style="width: 275px; height: 180px">

                        </img>

                    </a>
                </td>

                <td>
                    <img src="http://blogs-images.forbes.com/halahtouryalai/files/2013/01/0416_student-loans_392x392.jpg" style="width: 600px; height: 550px">
                </td>
                <td>

                    <img src="http://cdn-media-2.lifehack.org/wp-content/files/2014/01/Student-loan.jpg" style="width: 1000px; height: 550px">
                </td>
            </tr>

        </table>


        <table style="height:100px; width: 1885px">

            <tr>
                <td style="padding-left:100px;align-content:center">
                    <asp:AdRotator ID="AdRotator1" AdvertisementFile="~/ads.xml" KeywordFilter="R1" runat="server" />
                    <asp:AdRotator ID="AdRotator2" AdvertisementFile="~/ads.xml" KeywordFilter="R2" runat="server" />
                    <asp:AdRotator ID="AdRotator3" AdvertisementFile="~/ads.xml" KeywordFilter="R3" runat="server" />
                    <asp:AdRotator ID="AdRotator4" AdvertisementFile="~/ads.xml" KeywordFilter="R4" runat="server" />
                    <asp:AdRotator ID="AdRotator5" AdvertisementFile="~/ads.xml" KeywordFilter="R5" runat="server" />
                </td>
            </tr>
        </table>


        <hr />
        <h4 style="text-align: center; color: forestgreen">@Student Education Loan Services, Inc All rights Reserved. 2012-2016</h4>
    </form>
</body>

</html>

