use Nayepankh
IF OBJECT_ID('feathers.NGO_Analytics','U') IS NOT NULL
	DROP TABLE feathers.NGO_Analytics
create table feathers.NGO_Analytics(
Date_column DATE,
City VARCHAR(50),
Program VARCHAR(50),
Campaign VARCHAR(50),
Donor_Type VARCHAR(50),
Donation_Amount_INR INT,
Beneficiaries INT,
Volunteers INT,
Expenses_INR INT,
Event_Type VARCHAR(50),
Gender_Focus VARCHAR(50),
Age_Group VARCHAR(50),
New_Donors INT,
Returning_Donors INT,
Meals_Distributed INT,
Clothes_Distributed INT,
Sanitary_Kits_Distributed INT,
Animals_Fed INT,
Satisfaction_Score DECIMAL(10,2),
);

SELECT SUM(Donation_Amount_INR) AS Total_Donations
FROM feathers.NGO_Analytics;

SELECT SUM(Beneficiaries) AS Total_Beneficiaries
FROM feathers.NGO_Analytics;

SELECT SUM(Volunteers) AS Total_Volunteers
FROM feathers.NGO_Analytics;

SELECT
    Program,
    SUM(Donation_Amount_INR) AS Total_Donations
FROM feathers.NGO_Analytics
GROUP BY Program
ORDER BY Total_Donations DESC;

SELECT
    Program,
    SUM(Beneficiaries) AS Total_Beneficiaries
FROM feathers.NGO_Analytics
GROUP BY Program
ORDER BY Total_Beneficiaries DESC;

SELECT
    City,
    SUM(Donation_Amount_INR) AS Total_Donations
FROM feathers.NGO_Analytics
GROUP BY City
ORDER BY Total_Donations DESC;

SELECT
    DATENAME(MONTH, Date_column) AS Month_Name,
    MONTH(Date_column) AS Month_Number,
    SUM(Donation_Amount_INR) AS Total_Donations
FROM feathers.NGO_Analytics
GROUP BY
    DATENAME(MONTH, Date_column),
    MONTH(Date_column)
ORDER BY Month_Number;

SELECT
    Program,
    SUM(Donation_Amount_INR) AS Donations,
    SUM(Expenses_INR) AS Expenses
FROM feathers.NGO_Analytics
GROUP BY Program;


SELECT TOP 5
    Campaign,
    SUM(Donation_Amount_INR) AS Total_Donations
FROM feathers.NGO_Analytics
GROUP BY Campaign
ORDER BY Total_Donations DESC;

SELECT
    Program,
    AVG(Satisfaction_Score) AS Avg_Satisfaction
FROM feathers.NGO_Analytics
GROUP BY Program
ORDER BY Avg_Satisfaction DESC;


select*from feathers.NGO_Analytics