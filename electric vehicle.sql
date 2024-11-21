-- viewing the data

SELECT * FROM [dbo].[Electric_Vehicle_Population_Data];

-- Electrical Vehicles

-- Total Number of electric vehicles
SELECT COUNT(*) AS Total_EVs 
FROM [dbo].[Electric_Vehicle_Population_Data];

-- Electric Vehicles Trends Over Time
SELECT 
    Model_Year,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY Model_Year
ORDER BY Model_Year;

--

-- Geographical Distribution

SELECT 
    State,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY State
ORDER BY Total_EVs DESC;

--Market Size and Growth Patterns

-- Distribution by Model

SELECT 
    Model,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY Model
ORDER BY Total_EVs DESC;




-- distribution by Make 

SELECT 
    Make,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY Make
ORDER BY Total_EVs DESC;

-- Electrical Range 

-- Calculate the average electric range of all electric vehicles

SELECT AVG(CAST(Electric_Range AS FLOAT)) AS Average_Electric_Range
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Range IS NOT NULL AND Electric_Range >= 0;

-- Calculating the average electric range by model year

SELECT 
    Model_Year,
    AVG(CAST(Electric_Range AS FLOAT)) AS Average_Electric_Range
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Range IS NOT NULL AND Electric_Range >= 0
GROUP BY Model_Year
ORDER BY Model_Year;


-- Calculating the average electric range by EV type (BEV and PHEV)

SELECT 
    Electric_Vehicle_Type,
    AVG(CAST(Electric_Range AS FLOAT)) AS Average_Electric_Range
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Range IS NOT NULL AND Electric_Range >= 0
GROUP BY Electric_Vehicle_Type
ORDER BY Electric_Vehicle_Type;


-- 3.Calculate the total number of BEVs and their percentage of the total electric vehicles

-- Define the CTE to calculate the total number of electric vehicles (EVs)
WITH Total_EVs_CTE AS (
    SELECT COUNT(*) AS Total_EVs
    FROM [dbo].[Electric_Vehicle_Population_Data]
    WHERE Electric_Vehicle_Type IN ('Battery Electric Vehicle (BEV)', 'Plug-in Hybrid Electric Vehicle (PHEV)')
)

-- Calculate the total number of BEVs and their percentage of the total electric vehicles
SELECT 
    COUNT(*) AS Total_BEVs,
    (COUNT(*) * 100.0 / (SELECT Total_EVs FROM Total_EVs_CTE)) AS Percent_BEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Battery Electric Vehicle (BEV)';


-- additional insights

-- Trend Analysis Over Time for Battery Electric Vehicle (BEV)
-- Number of BEVs by model year
SELECT 
    Model_Year,
    COUNT(*) AS Total_BEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Battery Electric Vehicle (BEV)'
GROUP BY Model_Year
ORDER BY Model_Year;

-- Total number of BEVs by country 
SELECT state,
	COUNT(*) AS Total_BEVs 
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type =  'Battery Electric Vehicle (BEV)'
GROUP BY state
ORDER BY Total_BEVs DESC;


-- Total number of BEVs by manufacturer
SELECT 
    Make,
    COUNT(*) AS Total_BEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Battery Electric Vehicle (BEV)'
GROUP BY Make
ORDER BY Total_BEVs DESC;


-- 4.Identify Total Number of PHEVs

-- Calculate the total number of PHEVs
SELECT COUNT(*) AS Total_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)';


-- Calculate the total number of PHEVs and their percentage of the total electric vehicles
-- Define the CTE to calculate the total number of electric vehicles (EVs)
WITH Total_EVs_CTE AS (
    SELECT COUNT(*) AS Total_EVs
    FROM [dbo].[Electric_Vehicle_Population_Data]
    WHERE Electric_Vehicle_Type IN ('Battery Electric Vehicle (BEV)', 'Plug-in Hybrid Electric Vehicle (PHEV)')
)

-- Calculate the total number of PHEVs and their percentage of the total electric vehicles
SELECT 
    COUNT(*) AS Total_PHEVs,
    (COUNT(*) * 100.0 / (SELECT Total_EVs FROM Total_EVs_CTE)) AS Percent_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)';

-- additional insights 

-- Total number of PHEVs by state
SELECT 
    state,
    COUNT(*) AS Total_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)'
GROUP BY state
ORDER BY Total_PHEVs DESC;

-- Number of PHEVs by model year
SELECT 
    Model_Year,
    COUNT(*) AS Total_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)'
GROUP BY Model_Year
ORDER BY Model_Year;

-- Total number of PHEVs by manufacturer
SELECT 
    Make,
    COUNT(*) AS Total_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)'
GROUP BY Make
ORDER BY Total_PHEVs DESC;


-- Comparative Analysis with Plug-in Hybrid Electric Vehicle (PHEV)
-- Number of BEVs and PHEVs by model year
SELECT 
    Model_Year,
    Electric_Vehicle_Type,
    COUNT(*) AS Total_Vehicles
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type IN ('Battery Electric Vehicle (BEV)', 'Plug-in Hybrid Electric Vehicle (PHEV)')
GROUP BY Model_Year, Electric_Vehicle_Type
ORDER BY Model_Year, Electric_Vehicle_Type;