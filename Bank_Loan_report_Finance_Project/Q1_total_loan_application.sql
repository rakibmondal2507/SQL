-- Total Loan Applications: We need to calculate the total number of loan applications received during a specified period. Additionally, it is essential to monitor the Month-to-Date (MTD) Loan Applications and track changes Month-over-Month (MoM).

SELECT COUNT(id) AS total_loan_application
FROM bank_loan_data

-- result
-- total_loan_appliction
-- 38576
