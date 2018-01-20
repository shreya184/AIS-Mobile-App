CREATE TABLE NaikS_WADfl16_StudentInfo
(
	 
    [userName] NVARCHAR(50) NULL, 
    [password] NVARCHAR(50) NULL, 
    [certifiedchecked] NVARCHAR(50) NULL, 
    [socialSecurityNumber] NVARCHAR(50) NULL, 
    [fullName] NVARCHAR(50) NULL, 
    [dateOfBirth] NVARCHAR(50) NULL, 
    [address] NVARCHAR(50) NULL, 
    [emailAddress] NVARCHAR(50) NOT NULL, 
    [securityQuestion] NVARCHAR(50) NULL, 
    [securityQuestionAnswer] NVARCHAR(50) NULL, 
    [accountNumber] INT NULL, 
    [lastUpdatedDate] NVARCHAR(50) NULL, 
    [currentBalance] FLOAT NULL, 
    [regularMonthlyPaymentAmount] FLOAT NULL, 
    [amountSatisfiedByExtraPayment] FLOAT NULL, 
    [pastDueAmount] FLOAT NULL, 
    [currentAmountDue] FLOAT NULL, 
    [currentStatementDueDate] NVARCHAR(50) NULL, 
    CONSTRAINT [PK_Table] PRIMARY KEY ([emailAddress]), 
    
)
