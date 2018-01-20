using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for StudentInfor
/// </summary>
public class StudentInfor
{
    String userName;
    String password;
    bool certifiedchecked;
    String socialSecurityNumber;
    String fullName;
    String dateOfBirth;
    String address;
    String emailAddress;
    String securityQuestion;
    String securityQuestionAnswer;
    int accountNumber;
    String lastUpdatedDate;
    float currentBalance;
    float regularMonthlyPaymentAmount;
    float amountSatisfiedByExtraPayment;
    float pastDueAmount;
    float currentAmountDue;
    String currentStatementDueDate;
    public StudentInfor()
    {

    }

    public StudentInfor(string userName, String password, String socialSecurityNumber, String fullName, String dateOfBirth, String address, String emailAddress, String securityQuestion, String securityQuestionAnswer, int Account) //constructor 
    {
        this.userName = userName;
        this.password = password;
        this.socialSecurityNumber = socialSecurityNumber;
        this.fullName = fullName;
        this.dateOfBirth = dateOfBirth;
        this.address = address;
        this.emailAddress = emailAddress;
        this.securityQuestion = securityQuestion;
        this.securityQuestionAnswer = securityQuestionAnswer;
        accountNumber = Account;
        lastUpdatedDate = "";
        currentBalance = 0.0f;
        regularMonthlyPaymentAmount = 0.0f;
        amountSatisfiedByExtraPayment = 0.0f;
        pastDueAmount = 0.0f;
        currentAmountDue = 0.0f;
        currentStatementDueDate = "";
    }

    public String UserName
    {
        get { return userName; }
        set { userName = value; }
    }
   public String Password
    {
        get { return password; }
        set { password = value; }
    }
   public bool Certify
    {
        get { return certifiedchecked; }
        set { certifiedchecked = value; }
    }
    public String Social
    {
        get { return socialSecurityNumber; }
        set { socialSecurityNumber = value; }
    }
    public String FullName
    {
        get { return fullName; }
        set { fullName = value; }
    }
    public String Date
    {
        get { return dateOfBirth; }
        set { dateOfBirth = value; }
    }
    public String Adress
    {
        get { return address; }
        set { address = value; }
    }
    public String Email
    {
        get { return emailAddress; }
        set { emailAddress = value; }
    }
    public String Securityquestion
    {
        get { return securityQuestion; }
        set { securityQuestion = value; }
    }
    public String Answer
    {
        get { return securityQuestionAnswer; }
        set { securityQuestionAnswer = value; }
    }
    public int ACNum
    {
        get { return accountNumber; }
        set { accountNumber = value; }
    }
    public String UpdateDate
    {
        get { return lastUpdatedDate; }
        set { lastUpdatedDate = value; }
    }
    public float CurrentBalance
    {
        get { return currentBalance; }
        set { currentBalance = value; }
    }
    public float RegularPayment
    {
        get { return regularMonthlyPaymentAmount; }
        set { regularMonthlyPaymentAmount = value; }
    }
    public float AmountSatisfied
    {
        get { return amountSatisfiedByExtraPayment; }
        set { amountSatisfiedByExtraPayment = value; }
    }
    public float PastDue
    {
        get { return pastDueAmount; }
        set { pastDueAmount = value; }
    }
    public float CurrentDue
    {
        get { return currentAmountDue; }
        set { currentAmountDue = value; }
    }
    public String CurrentStatement
    {
        get { return currentStatementDueDate; }
        set { currentStatementDueDate = value; }

    }
    
}