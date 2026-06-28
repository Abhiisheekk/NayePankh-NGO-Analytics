USE Nayepankh;
GO

CREATE OR ALTER VIEW feathers.vw_program_summary AS
SELECT
    Program,
    SUM(Donation_Amount_INR) AS Total_Donations,
    SUM(Beneficiaries) AS Total_Beneficiaries,
    SUM(Volunteers) AS Total_Volunteers,
    SUM(Expenses_INR) AS Total_Expenses,
    AVG(Satisfaction_Score) AS Avg_Satisfaction
FROM feathers.NGO_Analytics
GROUP BY Program;
GO
CREATE OR ALTER VIEW feathers.vw_program_summary AS
SELECT
    Program,
    SUM(Donation_Amount_INR) AS Total_Donations,
    SUM(Beneficiaries) AS Total_Beneficiaries,
    SUM(Volunteers) AS Total_Volunteers,
    SUM(Expenses_INR) AS Total_Expenses,
    AVG(Satisfaction_Score) AS Avg_Satisfaction
FROM feathers.NGO_Analytics
GROUP BY Program;
GO
CREATE OR ALTER VIEW feathers.vw_monthly_summary AS
SELECT
    YEAR(Date_column) AS Year,
    MONTH(Date_column) AS Month_No,
    DATENAME(MONTH,Date_column) AS Month_Name,
    SUM(Donation_Amount_INR) AS Total_Donations,
    SUM(Expenses_INR) AS Total_Expenses,
    SUM(Beneficiaries) AS Total_Beneficiaries,
    SUM(Volunteers) AS Total_Volunteers
FROM feathers.NGO_Analytics
GROUP BY
    YEAR(Date_column),
    MONTH(Date_column),
    DATENAME(MONTH,Date_column);

GO
CREATE OR ALTER VIEW feathers.vw_donor_summary AS
SELECT
    Donor_Type,
    COUNT(*) AS Total_Events,
    SUM(Donation_Amount_INR) AS Total_Donations,
    SUM(New_Donors) AS New_Donors,
    SUM(Returning_Donors) AS Returning_Donors
FROM feathers.NGO_Analytics
GROUP BY Donor_Type;

GO
CREATE OR ALTER VIEW feathers.vw_impact_summary AS
SELECT
    Program,
    SUM(Meals_Distributed) AS Meals_Distributed,
    SUM(Clothes_Distributed) AS Clothes_Distributed,
    SUM(Sanitary_Kits_Distributed) AS Sanitary_Kits_Distributed,
    SUM(Animals_Fed) AS Animals_Fed
FROM feathers.NGO_Analytics
GROUP BY Program;
