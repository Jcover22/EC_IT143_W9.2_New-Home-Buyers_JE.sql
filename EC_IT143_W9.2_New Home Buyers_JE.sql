/*****************************************************************************************************************
NAME:  EC_IT143_W9.2_New Home Buyers_JE.sql
PURPOSE: My script purpose is to allow the community of New Home Buyers make some question 
regarding to the Loan dataset.

MODIFICATION LOG:
Ver     Date            Author               Description
----- ----------  ----------------          --------------------------------------------------------------------------
1.0   06/23/2022      JESCOBAR              1. Built this script for EC IT143

RUNTIME:
10 minutes


NOTES:
This script will contain four question in total. Three of them will be done by myself and the last one
will be asked by one of my classmates. These four questions are based on the New Home Buyers community and Loan dataset.
******************************************************************************************************************/

--Q1:As we continue analysing our data we want to know the loan amount term that our customers currently have, gender and the LoanID .
--Can you provide us this information? In this order LoanId, Gender, and Loan amount term.

-- A1: --A: Let's ask SQL server and find out...
SELECT L1.Loan_ID, L1.Gender, L2.Loan_Amount_Term
From [loan-train] AS L2
Full join dbo.[loan-test] AS L1
on L1.CoapplicantIncome = L2.CoapplicantIncome;

--Q2: Now we want to focus on the loan amount and the credit history of our clients to see how we can better help them. 
--Can you make a table showing this information? We need the credit history and the loan amount and the property area.

-- A1: --A: Let's ask SQL server and find out...
SELECT L1.Credit_History, L1.LoanAmount, L2.Property_Area
From [loan-train] AS L2
right join dbo.[loan-test] AS L1
on L1.CoapplicantIncome = L2.CoapplicantIncome;

--Q3: To continue our analysis we want to know all the information from both tables which are loan test and loan train. 
--Can you please provide both of this information together? We need it all of it in one table. 

-- A1: --A: Let's ask SQL server and find out...
SELECT L1.loan_id,
       L2.loan_id,
	   L1.Gender,
	   L2.Gender,
	   L1.Dependents,
	   L2.Dependents,
	   L1.Self_employed,
	   L2.Self_employed,
	   L1.LoanAmount,
	   L2.LoanAmount,
	   L1.Loan_Amount_Term,
	   L2.Loan_Amount_Term,
	   L1.Credit_History,
	   L2.Credit_History,
	   L1.Property_Area,
	   L2.Property_Area,
	   L2.Loan_Status
from [loan-train] L2
inner join dbo.[loan-test] L1
on L1.CoapplicantIncome  = L2.CoapplicantIncome

select * from dbo.[loan-test]
select * from dbo.[loan-train]

--Q4: We are looking to do a survey. 
--Could you provide a list of homebuyers who have not graduated, have taken out a loan of 300,and have 3 dependents?

--A4:Let's ask SQL server and find out...
--******Author:Dylan Swehosky******

SELECT Education,Dependents, LoanAmount
FROM dbo.[loan-train]
where Education = 'Not Graduate' AND Dependents = '3' OR LoanAmount = '300'
