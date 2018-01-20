﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="GLOSSARY.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <style>
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

     <script runat="server">
        void Button1_Click(object sender, EventArgs e)
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

    <title></title>
    
</head>
<body>
    
    <div>
    
    </div>
    
</body>
</html>
<html>
    <body>
        <form id="form1" runat="server">
          <a name="top"></a>
         <img src="http://www.ableacademy.com/images/edu_banner.JPG" style="width:1885px;height:250px">

        </img>

         <div style="background-color:orangered ; height: 30px; width: 1885px;">

              <asp:LinkButton id="Button1" runat="server" onclick="Button1_Click">Home</asp:LinkButton>
    
  <asp:Label id="LinkButton2" runat="server" Text="| Glossary "></asp:Label>
            <li id="in" style ="float:right;list-style-type: none"><a class="active" href="LOGIN.aspx">Login</a></li>
              <li id="out" style="float:right;list-style-type: none"><a class="active" href="LOGOUT.aspx">LogOut</a></li>

    <!--
    a:link { text decoration : none; }
        -->

            
 
         </div>

        <h2 style="text-align:center;color:blue">
            General Glossary
        </h2>

            <table>
                <tr>
          <td><a href ="#a">A  </a></td>
         <td> <a href ="#c">C  </a></td>
      <td>    <a href ="#d">D  </a></td>
     <td>     <a href ="#e">E  </a></td>
         <td> <a href ="#f">F</a></td>
        <td>  <a href ="#g">G</a></td>
      <td>    <a href ="#l">L</a></td>
    <td>      <a href ="#n">N</a></td>
         <td> <a href ="#p">P</a></td>
     <td>     <a href ="#s">S</a></td>
        <td>  <a href ="#t">T</a>  </td>
     <td>     <a href ="#u">U</a> </td>
         <td> <a href ="#v">V</a> </td>
                    </tr>
                </table>
   <hr>
        <h2 id="a">-A-</h2>
        <hr>

      <b>  Account number</b> A sixteen digit number that is comprised of a six-digit institution or client number,one letter from A to Z following by eight numbers or institution assigned loan number, and a one-digit record or packet number. This account number must be included on all payments and correspondence. 
   
      
        <a href='#top'>[Back to Top]</a>
        <br /><br />

      <b>  Accrue/interest accrual</b> The process where interest accumulates on the unpaid principal balance of your loan.
        <a href='#top'>[Back to Top]</a>

        <br /><br />

        <b>ACH/Checkmate IITM</b>The system used to automatically transfer payments electronically from an individual borrower's checking or savings account for payment on FFELP or Private Loan accounts.
        <a href='#top'>[Back to Top]</a>

        <br />
        <b>Authorized Payer</b>A third party who is authorized by a student loan customer to make an online payment with ExpressPaySM on an account.
          <a href='#top'>[Back to Top]</a>

        <br />
        <b> Automatic Bill Payment (ABP)</b> The system used to automatically transfer payments from an individual borrower's checking or savings account for payment on a CPS account. CPS refers to the ACS division that services "Campus Based Student Loans". This includes Federal Perkins, NDSL, Health Professions, Nursing, and Institutional Loans.
         <a href='#top' > [Back to top] </a>
        <hr>

      <h2 id="c">  -C-</h2>
        <hr >
           
        <b>Capitalization</b> Capitalized interest is interest that is added to principal, creating a higher balance on which interest now accrues. Depending on your type of loan program, your account(s) may or may not be subject to interest capitalization. 
        <a href='#top' > [Back to top] </a>
        <br />

<b>Checkmate IITM </b>The system used to automatically transfer payments electronically from an individual borrower's checking or savings account for payment on FFELP or Private Loan accounts. Also listed under ACH/Checkmate IITM 
        <a href='#top' > [Back to top] </a>
        <br/>

<b>Co-Maker</b> A co-maker is one of two individuals who are joint borrowers on a PLUS, Consolidation or Alternative Loan/Private Loan that is jointly and severally liable for repayment of the loan. 
        <a href='#top' > [Back to top] </a>
        <br />

<b>Co-signer</b> An individual who signs a promissory note and agrees to repay the loan in the event that the borrower does not.
         <a href='#top' > [Back to top] </a>
        <br />

<b>Consolidation</b> Consolidation is the process of making loans to borrowers for the purpose of consolidating their repayment obligations(s) into a Consolidation Loan with new and more manageable repayment terms.
         <a href='#top'> [Back to top] </a>
        <br />

<b>CPS</b> This refers to the ACS division that services "Campus Based Student Loans". This includes Federal Perkins, NDSL, Health Professions, Nursing, and Institutional Loans. <a href="#top" > [Back to top] </a> </p>


<b>Credit Bureau</b> Credit Bureau is an agency that collects and distributes personal credit information about consumers. A credit report from a bureau might include payment history on loans and other credit accounts (such as credit cards), balances of accounts, and length and place of employment.
         <a href='#top' > [Back to top] </a>
        <br />
 
     
<hr>

   <h2 id="d"> -D-</h2>
        <hr>

       <b>Default</b> The failure to repay a loan in accordance with the terms of the promissory note. Consult your promissory note for additional information.
         <a href='#top' > [Back to top] </a>

<b>Deferment</b> Deferment is an approved postponement of payment for a specified period of time as allowed by certain education loan types. 
        <a href='#top' > [Back to top] </a>

<b>Delinquent </b> Delinquent means that your account has become past due for payment. This occurs when your payment is not received by the due date on your bill or coupon. Delinquency begins the day after the payment is due. An account remains delinquent until you bring the account current with a payment, deferment, or forbearance. If your account has become delinquent and you are unable to make payments at this time, you may want to consider a deferment or a forbearance 
        <a href='#top' > [Back to top] </a>
        <br />

        <b>Department</b> of Health and Human Services (DHHS) The governing body for the Health Professions and Nursing Student Loan programs. 
            <a href='#top' > [Back to top] </a>
        <br />

<b>Disclosure</b> Disclosure Statement is a form that provides relevant loan data, which usually includes the loan's interest rate, guarantee and origination fees, the projected maturity, and overall cost of the loan. 
        <a href='#top' > [Back to top] </a>
        <br />
<b>Due Diligence</b> Due Diligence is the procedure required for attempting to satisfactorily resolve a delinquency and prevent default. Loan servicers are required to use collection attempts that include telephone calls and past due letters. 
        <a href='#top' > [Back to top] </a>
        <br />

        

        <hr>
 <h2 id="e">- E -</h2>
    <hr>
    
        <b>Enrollment Status</b> The status of a student as reported by the student's school. The status is dependent upon the number of credit hours a student is carrying.
        <a href='#top' > [Back to top] </a>
        <br />
 
        

        <hr>
 <h2 id="f">- F -</h2> 
    <hr>
  <b>FAFSA</b> Free Application for Federal Student Aid. The form the student must complete to apply for Title IV financial assistance. 
        <a href='#top' > [Back to top] </a>
        <br />
<b>FFELP</b> Federal Family Education Loan Programs. The loan programs authorized by Title IV, part B of the Higher Education Act of 1965, as amended, including Federal Stafford, Federal Plus, Federal SLS, and Federal Consolidation Loan Programs.
         <a href='#top' > [Back to top] </a>
        <br />

<b>Fixed</b> Interest Rate A rate of interest which does not change during the life of the loan. 
        <a href='#top' > [Back to top] </a>
        <br />
<b>Forbearance</b> Forbearance is a special arrangement between the borrower and lender (at the lender's option) which may allow the borrower to temporarily postpone payments, obtain an extension for making payments, or make smaller payments than originally scheduled.The borrower is liable for the interest that accrues during the forbearance period. 
        <a href='#top' > [Back to top] </a>
        <br />

       

        <hr>
   <h2 id="g"> - G -</h2>
    <hr>
    
        <b>  Grace Period </b>A period of time (generally six or nine months) that begins immediately after the borrower ceases to be enrolled as at least a half-time student. Eligibility for a grace period depends on the type of loan that you received, therefore, please consult your promissory note.
         <a href='#top' > [Back to top] </a>
        <br />

<b>Graduate PLUS Loan</b> A graduate or professional student may apply for a Federal PLUS loan. The Grad PLUS loan is different from the PLUS loan (see PLUS loan in this table) in that it is made directly to the students who are enrolled as graduate or professional student status, while the PLUS loan is made to parents for their dependent students. Before applying for a Federal PLUS loan, a graduate or professional student must first complete the Free Application for Federal Student Aid (FAFSA) and must have been determined eligible for his or her maximum loan amount under the Federal Subsidized and Unsubsidized Stafford Loan Program.
     <a href='#top' > [Back to top] </a>

        <br />

<b>Guarantor</b> Guarantor is an agency that has entered into an agreement with the U.S. Secretary of Education to guarantee FFELP loans against death, disability, bankruptcy, or default of the borrower and other conditions prescribed by the Secretary. Certain Alternative/Private Loans may also have a guarantor that has entered into an agreement with individual lenders to provide similar assurance. 
        <a href='#top' > [Back to top] </a>
 <br />

       

        <hr>
  <h2 id="l">  - L -</h2>
    <hr>
    <b> Last Payment Amount </b>Last Payment Amount is the total amount of the borrower's most recent payment. 
        <a href='#top' > [Back to top] </a>
        <br />

        <b>Last Payment Date</b> Last Payment Date is the date a customer's most recent payment was received by ACS.
         <a href='#top' > [Back to top] </a>
        <br />

 
       

         <hr>
   <h2 id="m"> - M -</h2>
    <hr>
    <b> Mixed Rates</b> A mixed rate of interest means there are different rates associated with the different disbursements of the loan.
         <a href='#top' > [Back to top] </a>
        <br />

        <hr>
  <h2 id ="n"> - N -</h2>
    <hr>
   
        <b>Next Payment Amount</b> Next Payment Amount is the amount of the current monthly payment plus any past due amounts and late charges.
         <a href='#top' > [Back to top] </a>
        <br />
<b>Next Payment Date</b> Next Payment Date is the date of the next scheduled payment. 
        <a href='#top' > [Back to top] </a>
        <br />
<b>NSLDS</b> The National Student Loan Data System is a central depository of student loan information. With data provided by lenders, guarantors, schools, and servicers, institutions are able to review a borrower's lending and enrollment history.
         <a href='#top' > [Back to top] </a>
 
        <br />

        <hr >
  <h2 id="p"> - P -</h2>
    <hr>
    
        <b> PLUS Loan</b> PLUS loans (Parental Loan for Undergraduate Students) are loans that can be obtained by parents for their dependent students. 
        <a href='#top' > [Back to top] </a>
        <br />

    <b>Pre-Pay</b> Advance When a payment covers a monthly installment amount, the next payment due date may advance. This option depends on the loan type and at the lender's option.
         <a href='#top' > [Back to top] </a> 

    <br />
    <b>Prepayment</b> Prepayment is any amount paid in excess of the amount due on your loan. Prepayments are always applied to interest due first and then to principal. 
        <a href='#top' > [Back to top] </a>
        <br />
    
    <b>Principal Balance Outstanding</b> Principal Balance Outstanding is the total unpaid balance of a loan not including interest. It should be noted that the principal balance outstanding is not necessarily the amount required to pay off the debt.
         <a href='#top' > [Back to top] </a>

        <br />
<b>Promissory Note</b> Promissory Note is a legally binding agreement the borrower (and co-maker or endorser, if applicable) signs to obtain a loan, in which the borrower promises to repay the loan, with interest and other applicable fees, in periodic installments. The agreement also includes other conditions respective to the individual loan type. 
        <a href='#top' > [Back to top] </a>
        <br />
        

        <hr>
   <h2 id="s"> - S -</h2>
    <hr>

  <b> Servicemembers' Civil Relief Act (SCRA) FFEL and PRIVATE:</b> A benefit of a maximum annual interest rate of six percent mandated by the SCRA and the Higher Education Act of 1965, as amended, for federal student loans, and the SCRA for private education loans. To request the benefit, mail or fax the Request for Servicemember's Civil Relief Act Benefit with a copy of your military orders to us. For more information, visit our Servicemember's webpage. 
CBSL: A benefit of a maximum annual interest rate of six percent mandated by the SCRA and the Higher Education Act of 1965, as amended for campus based student loans. To request the benefit, send a written request (email or letter) with a copy of your military orders to us. For more information, visit our Servicemember's webpage. 
        <a href='#top' > [Back to top] </a>
        <br />

    
    <b>Status</b> Status describes the present state of the borrower's loan(s). An account will be either: in school, in grace, in repayment-current, in repayment-delinquent, in deferment, in forbearance, paid-in-full, in a suspended status, or in default.
         <a href='#top' > [Back to top] </a>
        <br />
 
     
        <hr >
  <h2 id="t">  - T -</h2>
    <hr >
   
        <b> Tax Relief Act (TRA97) </b>
The Tax Relief Act of 1997 provides for several tax benefits for parents and students. Previously, the Act allowed borrowers to deduct student loan interest paid within the first 60 months of repayment. For tax year 2002 any and all interest paid on the loan from January 1, 2002, through December 31, 2002, is tax deductible. Payments made beginning January 1, 1998 can be deducted on 1998 tax returns filed in 1999. The deduction is limited to $1,000 in 1998, $1,500 in 1999, $2,000 in 2000 and $2,500 thereafter. The interest deduction can not be claimed for any interest amount paid prior to January 1, 1998. The Hope Scholarship and Lifetime Learning Credit will be available as a credit against federal income taxes beginning with 1998 tax returns. We advise you to consult your tax advisor to determine your eligibility for the deduction and tax credits.
        
         <a href='#top' > [Back to top] </a>
 

        <hr>
  <h2 id="u"> - U - </h2>
    <hr >
    
        <b>US Department of Education</b> The governing body for the Federal Perkins/NDSL and FFEL programs. 
        <a href='#top' > [Back to top] </a>
        <br />
 
       
        <hr>
  <h2 id="v">- V -</h2>
    <hr>

  <b>Variable Interest</b> Many student loans have a variable interest rate. The rate of interest that is charged on a loan is tied to and fluctuates with a stated index. 
        <a href='#top' > [Back to top] </a>
        <br />

 
      

            </form>
         </body>
</html>
