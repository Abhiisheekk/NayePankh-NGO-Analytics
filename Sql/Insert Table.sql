TRUNCATE TABLE feathers.NGO_Analytics
BULK INSERT feathers.NGO_Analytics
FROM 'C:\Users\hp\Downloads\NayePankh_NGO_Analytics_Dataset.csv'

with(
    FIRSTROW=2,
    FIELDTERMINATOR=',',
    ROWTERMINATOR='\n',
    TABLOCK
);