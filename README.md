# Comprehensive Analysis of Electric Vehicles (EVs) Using SQL Microsoft Server and Tableau
    
***



![dataset-cover](https://github.com/user-attachments/assets/9658f604-f1e1-4ac7-994b-1a60cc68257e)




## 🧾 Table of Contents
- [Project Overview](#project-overview)
- [Business Task](#business-task)
- [Methodology](#methodology)
- [Data Exploration](#data-exploration)
- [Visualization](#visualization)
- [Recommendations](#recommendations)
- [Limitations](#limitations)
- [References](#references)
***

## Project Overview:

The objective of this project is to analyze the electric vehicle market, uncover valuable insights, and provide actionable recommendations to promote the adoption and growth of EVs. This analysis encompasses various aspects, including trends over time, geographical distribution, model and make distribution, and technological advancements.

### Business Tasks:

1. Task: Gather and compile a comprehensive dataset of electric vehicles, including details such as model, make, vehicle type (BEV or PHEV), electric range, geographical location, and registration date. This will serve as the foundation for our analysis.

2. Task: Clean and transform the dataset to handle missing values, correct data entry errors, and ensure consistency and compatibility with analysis tools. This step is crucial for maintaining the accuracy and reliability of our analysis.

3. Task: Calculate and analyze the total number of electric vehicles (EVs) in the dataset. This will provide a high-level understanding of the overall EV market.

4. Task: Determine the geographical distribution of EVs, identifying regions with the highest and lowest adoption rates. Understanding regional disparities will help tailor our recommendations.

5. Task: Identify the distribution of EVs by model and make, highlighting the most and least popular options. This will reveal consumer preferences and market dynamics.

6. Task: Analyze trends in EV adoption over time, including the total number of EVs, BEVs, and PHEVs registered each year. This will help us understand how the market has evolved.

7. Task: Calculate the average electric range by model year to identify technological advancements and efficiency improvements. This analysis will provide insights into the progress made in battery technology and vehicle efficiency.

8. Task: Compare the average electric range of BEVs and PHEVs to understand the differences in performance and efficiency. This will highlight the strengths and weaknesses of each vehicle type.

9. Task: Calculate the total number of BEVs and PHEVs and their percentages relative to the total number of electric vehicles. This will give us a clear picture of the market share of each vehicle type.

10. Task: Identify key insights from the analysis, such as regional adoption patterns, popular models and makes, and trends in electric range. These insights will form the basis of our recommendations.

11. Task: Develop actionable recommendations based on the findings, including strategies to promote EV adoption, expand charging infrastructure, support technological advancements, and address regional disparities. the recommendations will aim to enhance the growth and adoption of EVs.

12. Task: Present the findings and insights to stakeholders, using visualizations and reports to support our conclusions. Effective communication will ensure that the recommendations are well understood and actionable.

13. Task: Collect feedback from stakeholders to refine the analysis and address any additional questions or concerns. This iterative process will help us continuously improve our analysis.

14. Task: Continuously update the dataset with new information to keep the analysis current and relevant. This will ensure that our insights remain accurate and timely.

15. Task: Monitor changes in policies, market dynamics, and technological advancements to adapt the analysis and recommendations accordingly. Staying abreast of industry developments will help us provide forward-looking insights.

By completing these business tasks, we should achieve a comprehensive analysis of the electric vehicle market, uncover valuable insights, and offer actionable recommendations to promote the adoption and growth of electric vehicles.

### Visualization and Reporting:

Task: Create visualizations to represent the analysis results, such as line charts, bar charts, heat maps, and pie charts. These visualizations will make the data more accessible and understandable.

- Visualization: Total Vehicles by Model Year (From 2010 Onwards):

Description: This chart will illustrate the distribution of electric vehicles over the years, starting from 2010, providing insights into the growth pattern and adoption trends.

Visualization: Total Vehicles by State:

Description: This chart will showcase the geographical distribution of electric vehicles across different states, allowing for the identification of regions with higher adoption rates.

- Visualization: Top 10 Total Vehicles by Make:

Description: Highlight the top 10 electric vehicle manufacturers based on the total number of vehicles, providing insights into the market dominance of specific brands.

- Visualization: Total Vehicles by CAFV Eligibility:

Description: Illustrate the proportion of electric vehicles that are eligible for Clean Alternative Fuel Vehicle (CAFV) incentives, aiding in understanding the impact of incentives on vehicle adoption.

- Visualization: Top 10 Total Vehicles by Model:

Description: Highlight the top 10 electric vehicle models based on the total number of vehicles, offering insights into consumer preferences and popular models in the market.

Task: Develop interactive dashboards to display key metrics, trends, and insights in an easily understandable format. This will facilitate data-driven decision-making.

Task: Generate detailed reports summarizing the analysis, insights, and recommendations, including explanations of key findings and their implications. These reports will provide comprehensive documentation of our work.

## Data Source
Electronic vehicle  data: The primary data used for this analysis is the "Electric-vehicle-population-data.csv" file, containing detailed information about each electronic vehicles made by the company
[Link to CSV file](https://github.com/grandady/electric-vehicle/blob/main/Electric_Vehicle_Population_Data.csv.zip)



## Methodology

-  Data Preparation:

      - Data Cleaning: Clean the dataset by handling missing values, correcting data entry errors, and removing duplicates.

      - Data Transformation: Transform the data to ensure consistency and compatibility with analysis tools. This may include formatting dates, converting data types, and normalizing values.

      - Data Loading: Load the cleaned and transformed data into a Microsoft SQL Server database for analysis.

- Data Analysis:

    - SQL Query Development: Develop SQL queries to extract key insights from the data, such as total EV counts, average electric ranges, geographical distribution, and trends over time.

    - Exploratory Data Analysis (EDA): Perform exploratory data analysis to uncover patterns, correlations, and anomalies in the dataset.

    - Advanced Analytics: Apply advanced analytical techniques, such as time-series analysis, to gain deeper insights into trends and patterns.

- Visualization:

    - Tool Selection: Choose a visualization tool, such as Tableau, to create visual representations of the analysis results.

    - Dashboard Development: Develop interactive dashboards to display key metrics, trends, and insights. This can include line charts, bar charts, heat maps, and pie charts.

    - Storytelling: Use visualizations to tell a compelling story about the electric vehicle market, highlighting key findings and insights.
 


  ## Data Exploration

  Upon careful examination, this dataset comprises 150,482 rows and 16 columns of records.
  
  ### Column Dictionary

1. VIN (1-10): Vehicle Identification Number (first 10 characters).

2.  County: The county where the vehicle is registered.

3. City: The city where the vehicle is registered.

4. State: The state where the vehicle is registered.

5. Postal Code: The postal code of the vehicle's registration location.

6. Model Year: The year the vehicle model was manufactured.

7. Make: The manufacturer or brand of the vehicle.

8. Electric Vehicle Type: The type of electric vehicle (e.g., BEV for Battery Electric Vehicle, PHEV for Plug-in Hybrid Electric Vehicle).

9. Clean Alternative Fuel Vehicle (CAFV) Eligibility: Whether the vehicle is eligible for clean alternative fuel vehicle programs.

10. Electric Range: The range the electric vehicle can travel on a full charge.

11. Base MSRP: The manufacturer's suggested retail price for the base model of the vehicle.

12. Legislative District: The legislative district where the vehicle is registered.

13. DOL Vehicle ID: The Department of Licensing vehicle identification number.

14. Vehicle Location: The location where the vehicle is currently situated.

15. Electric-Utility: The electric utility company that provides service to the vehicle's location.

16. 2020 Census Tract: The census tract was based on the 2020 census where the vehicle is registered.

### Exploratory Data Analysis (EDA)

**1.Total Number of Electric Vehicles**

objective: The objective of calculating the total number of electric vehicles (EVs) is to gain a comprehensive understanding of the market size, growth trends, policy impact, resource allocation needs, and to inform strategic business decisions.

````sql

-- Total Number of electric vehicles
SELECT COUNT(*) AS Total_EVs 
FROM [dbo].[Electric_Vehicle_Population_Data];
````

**Answer:** As of the latest count, the total number of electric vehicles (EVs) has reached 150,482, indicating significant progress in the adoption of sustainable transportation solutions.

**2. Electric Vehicles Trends Over Time**

objective: The objective of analyzing electric vehicle (EV) trends over time is to identify growth patterns, understand market evolution, evaluate policy effectiveness, and anticipate future market dynamics.

````sql

-- Electric Vehicles Trends Over Time
SELECT 
    Model_Year,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY Model_Year
ORDER BY Model_Year;

````


![trend over time](https://github.com/user-attachments/assets/023d7635-10da-49b6-a924-389f85126fc1)


**3. Geographical Distribution**

objective: The objective of analyzing the geographical distribution of electric vehicles (EVs) is to identify regional adoption patterns, assess infrastructure needs, and inform targeted policy and investment strategies.

````sql

-- Geographical Distribution
SELECT 
    State,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY State
ORDER BY Total_EVs DESC;

````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*


![geographic](https://github.com/user-attachments/assets/5cb4049c-40ba-4da7-ae83-8b0b6ac6491d)


**4. Market Size and Growth Patterns**

objective: The objective of analyzing market size and growth patterns is to understand the overall scale, historical development, and future potential of the electric vehicle (EV) market, guiding strategic planning and decision-making.


- Distribution by Make
  
````sql

-- distribution by Make 
SELECT 
    Make,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY Make
ORDER BY Total_EVs DESC;

````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![makee](https://github.com/user-attachments/assets/fd45fb21-029e-4c1b-bd41-a417b3e1f03e)

- Distribution by Model
  
````sql

-- Distribution by Model

SELECT 
    Model,
    COUNT(*) AS Total_EVs
FROM [dbo].[Electric_Vehicle_Population_Data]
GROUP BY Model
ORDER BY Total_EVs DESC;

````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![mode](https://github.com/user-attachments/assets/a25a39b6-4892-48c9-a3c3-641b9d7acd50)


**5. Electrical Range**

objective: The objective of analyzing the electrical range of electric vehicles (EVs) is to evaluate advancements in battery technology, understand vehicle performance, and inform consumer choices and infrastructure planning.

- Calculate the average electric range of all electric vehicles
  
````sql

-- Calculate the average electric range of all electric vehicles

SELECT AVG(CAST(Electric_Range AS FLOAT)) AS Average_Electric_Range
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Range IS NOT NULL AND Electric_Range >= 0;

````

**Answer:** The average electric range of all electric vehicles stands at approximately 67.88 miles, reflecting advancements in battery technology and vehicle performance.

- Calculating the average electric range by model year
  

````sql

-- Calculating the average electric range by model year

SELECT 
    Model_Year,
    AVG(CAST(Electric_Range AS FLOAT)) AS Average_Electric_Range
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Range IS NOT NULL AND Electric_Range >= 0
GROUP BY Model_Year
ORDER BY Model_Year;

````

![model year](https://github.com/user-attachments/assets/92312ce1-9398-4024-b38f-71a4b37fe6c6)


**Calculating the average electric range by EV type (BEV and PHEV)**

objective: The objective of calculating the average electric range by EV type (BEV and PHEV) is to compare the performance and efficiency of different electric vehicle types, informing consumer choices and technological advancements.

````sql

-- Calculating the average electric range by EV type (BEV and PHEV)

SELECT 
    Electric_Vehicle_Type,
    AVG(CAST(Electric_Range AS FLOAT)) AS Average_Electric_Range
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Range IS NOT NULL AND Electric_Range >= 0
GROUP BY Electric_Vehicle_Type
ORDER BY Electric_Vehicle_Type;

````

![avg rangeee](https://github.com/user-attachments/assets/6b840475-e9d1-4b45-b049-381c2da082a6)




**Answer:** The average electric range for Battery Electric Vehicles (BEVs) is approximately 78.61 miles, while Plug-in Hybrid Electric Vehicles (PHEVs) average around 30.66 miles. This data highlights the superior range capabilities of BEVs compared to PHEVs.


**3. Calculate the total number of BEVs and their percentage of the total electric vehicles**

objective: The objective of calculating the total number of BEVs and their percentage of the total electric vehicles is to understand the market share and prevalence of battery electric vehicles within the broader EV market.

````sql

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

````

**Answer:** The total number of Battery Electric Vehicles (BEVs) is 116,807, which constitutes approximately 77.62% of the overall electric vehicle population.

**Additional insights**

- Number of BEVs by Model Year:

objective: The objective is to identify trends in the adoption and introduction of new battery electric vehicle (BEV) models over time.

````sql

-- Number of BEVs by model year
SELECT 
    Model_Year,
    COUNT(*) AS Total_BEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Battery Electric Vehicle (BEV)'
GROUP BY Model_Year
ORDER BY Model_Year;

````

![bev year](https://github.com/user-attachments/assets/e09f089f-2b84-42fc-9916-8493533e91db)


- Total Number of BEVs by Country:
objective: The objective is to assess the geographical distribution and market penetration of battery electric vehicles across different countries.

````sql

-- Total number of BEVs by country 
SELECT state,
	COUNT(*) AS Total_BEVs 
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type =  'Battery Electric Vehicle (BEV)'
GROUP BY state
ORDER BY Total_BEVs DESC;

````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![bev country](https://github.com/user-attachments/assets/5fafc00f-366d-42d6-a35c-b05de63ec385)



- Total Number of BEVs by Manufacturer:

objective: The objective is to determine market share and identify leading manufacturers in the battery electric vehicle segment.

````sql

-- Total number of BEVs by manufacturer
SELECT 
    Make,
    COUNT(*) AS Total_BEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Battery Electric Vehicle (BEV)'
GROUP BY Make
ORDER BY Total_BEVs DESC;

````

![bev manufacturer](https://github.com/user-attachments/assets/242dccaf-2249-4846-9e27-8fc4f0477b14)


**4. Identify Total Number of PHEVs**

objective: The objective of identifying the total number of PHEVs is to assess the prevalence and market share of plug-in hybrid electric vehicles within the broader electric vehicle market.

````sql

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

````

**Answer:** The total number of Plug-in Hybrid Electric Vehicles (PHEVs) is 33,675, representing approximately 22.38% of the entire electric vehicle fleet.

**Additional insights**

- Total number of PHEVs by state
objective: The objective of identifying the total number of PHEVs by state is to understand regional adoption patterns of plug-in hybrid electric vehicles and to inform targeted policy, infrastructure, and marketing strategies.

````sql

-- Total number of PHEVs by state
SELECT 
    state,
    COUNT(*) AS Total_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)'
GROUP BY state
ORDER BY Total_PHEVs DESC;

````
*This screenshot is only for reference and doesn’t contain all entries due to the issue of space*

![phev state](https://github.com/user-attachments/assets/7f11efad-274c-4867-8467-198f80751c9a)



- Number of PHEVs by Model Year:

objective: The objective is to identify trends in the adoption and introduction of newplug-in Hybrid electric vehicle (BPH) models over time.

````sql

-- Number of PHEVs by model year
SELECT 
    Model_Year,
    COUNT(*) AS Total_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)'
GROUP BY Model_Year
ORDER BY Model_Year;

````

![phev year](https://github.com/user-attachments/assets/3842261d-5dd3-40f0-8d9b-63fbf060d6ce)


- Total Number of PHEVs by Manufacturer:

objective: The objective is to determine market share and identify leading manufacturers in the plug-in Hybrid electric vehicle segment.

````sql

-- Total number of PHEVs by manufacturer
SELECT 
    Make,
    COUNT(*) AS Total_PHEVs
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type = 'Plug-in Hybrid Electric Vehicle (PHEV)'
GROUP BY Make
ORDER BY Total_PHEVs DESC;

````

![phev manufacturer](https://github.com/user-attachments/assets/196937a9-4662-4017-8c14-4dc1e544d732)


**Comparative Analysis with Plug-in Hybrid Electric Vehicle (PHEV)**

objective: The objective of conducting a comparative analysis with Plug-in Hybrid Electric Vehicles (PHEVs) is to evaluate the differences in performance, efficiency, market adoption, and consumer preferences between PHEVs and other types of electric vehicles, such as Battery Electric Vehicles (BEVs).

````sql

-- Number of BEVs and PHEVs by model year
SELECT 
    Model_Year,
    Electric_Vehicle_Type,
    COUNT(*) AS Total_Vehicles
FROM [dbo].[Electric_Vehicle_Population_Data]
WHERE Electric_Vehicle_Type IN ('Battery Electric Vehicle (BEV)', 'Plug-in Hybrid Electric Vehicle (PHEV)')
GROUP BY Model_Year, Electric_Vehicle_Type
ORDER BY Model_Year, Electric_Vehicle_Type;

````

![compare](https://github.com/user-attachments/assets/99b892b6-f4c7-4694-8f34-8c24739ed039)


  ## Visualization


![electric vehicle](https://github.com/user-attachments/assets/64cc4128-27f1-48d1-93e3-49e1269e30c8)

This dashboard provides a comprehensive  Analysis of Electric Vehicle



## Recommendations

**Promote BEV Adoption:**

- Incentives and Policies: Based on the dominance of BEVs in the dataset (77.62% of total EVs), promoting further adoption through tax rebates, subsidies, and grants can encourage more consumers to choose BEVs.

- Public Awareness Campaigns: Given the strong presence of BEVs, educating consumers about their benefits can further boost adoption.

**Expand Charging Infrastructure:**

- Increase Charging Stations: With Washington (WA) having the majority of EVs, expanding charging infrastructure in other states can reduce range anxiety and improve convenience.

- Fast-Charging Technology: To support the growing number of EVs, investing in fast-charging technology can enhance the practicality of EVs for long-distance travel.

**Support PHEV Adoption:**

- Hybrid Incentives: PHEVs make up 22.38% of the total EVs. Offering targeted incentives, such as reduced registration fees and access to carpool lanes, can attract consumers who are not yet ready to fully transition to BEVs.

- Fleet Integration: Encouraging businesses and government fleets to integrate PHEVs can leverage their flexibility for both electric and traditional fuel use.

 **Invest in Technological Advancements:**

- Research and Development: With technological advancements reflected in the increasing average electric range, supporting R&D efforts focused on improving battery technology can further enhance performance and affordability.

- Collaborations: Fostering collaborations between automakers, technology companies, and research institutions can drive innovation in EV technology.

**Address Regional Disparities:**

- Targeted Programs: Implementing targeted programs to increase EV adoption in regions with low penetration (e.g., states with only 1 EV) can help balance regional disparities.

- Partnerships: Partnering with local governments, utilities, and businesses to create localized solutions can address specific regional challenges.

 **Monitor Market Trends:**

- Continuous Data Collection: Continuously collecting and analyzing data on EV adoption, consumer preferences, and technological advancements can help stay informed about market trends.

- Flexibility in Policies: Adapting policies and incentives based on data-driven insights can effectively address emerging trends and market needs.

 **Enhance Manufacturer Support:**

- Collaboration with Automakers: Working closely with automakers like Tesla (with the highest number of BEVs) and Nissan (with the second-highest number of BEVs) can provide support for manufacturing, marketing, and distribution of EVs.

- Brand-Specific Incentives: Offering incentives tailored to specific manufacturers and models, especially those leading in technological innovation and sustainability, can encourage further adoption.

**Promote Environmental Benefits:**

-Emphasize Sustainability: Highlighting the environmental benefits of EVs, such as reduced greenhouse gas emissions and decreased air pollution, can attract eco-conscious consumers.

- Green Certifications: Implementing green certifications and recognition programs for businesses and individuals who adopt and promote sustainable practices through EV use.


## Limitations

**Data Completeness:**

- Incomplete Data for 2024: The dataset for 2024 appears to be incomplete, which can skew the analysis and affect the accuracy of insights for this year.

- Missing Values in Key Columns: Some records may have missing or null values, particularly in critical columns like Electric_Range, Electric_Vehicle_Type, or Registration_Date.

**Data Quality:**

- Data Entry Errors: The dataset may contain data entry errors or inconsistencies, such as incorrect dates, duplicated records, or misclassified vehicle types.

- Negative or Unrealistic Values: Outliers in the data, such as negative electric ranges or implausibly high values, can impact the analysis and distort findings.

**Geographical Bias:**

- Washington State Dominance: The overwhelming number of EVs in Washington state compared to other regions may introduce a geographical bias, affecting the generalizability of insights.

- Limited Data from Certain States: Some states have very few EV records, which can limit the ability to draw meaningful conclusions for those regions.

**Temporal Limitations:**

- Limited Historical Data: The availability of historical data is limited, making it challenging to analyze long-term trends and changes in EV adoption.

- Recent Data Gaps: Recent years, such as 2024, may have incomplete data, impacting the ability to make accurate predictions or draw meaningful conclusions for these periods.

**Technological Changes:**

- Rapid Technological Advancements: The rapid pace of technological advancements in the EV industry means that the data may quickly become outdated. Analysis based on current data may not accurately reflect future trends.

- Model and Make Variability: Variability in models and makes over time can introduce inconsistencies in the analysis, especially when comparing older and newer vehicles.

 **Methodological Constraints:**

- Simplified Assumptions: The analysis involved simplified assumptions, such as treating all BEVs or PHEVs the same regardless of model or manufacturer-specific differences.

- Aggregate Analysis: The analysis focused on aggregate data, which may overlook individual variations and nuances within specific models or manufacturers.

**External Factors:**

- Policy Changes: Changes in government policies, incentives, and regulations can significantly impact EV adoption rates, but may not be fully captured in the dataset.

- Market Dynamics: Market dynamics, such as changes in consumer preferences, fuel prices, and availability of charging infrastructure, can influence EV adoption but may not be directly reflected in the data.

  ## References

 -  Kaggle:
Kaggle Datasets
- U.S. Department of Energy - Alternative Fuels Data Center:
- AFDC Data
- European Alternative Fuels Observatory (EAFO):

### Relevant Reports and Publications:
- International Energy Agency (IEA)
- BloombergNEF (BNEF):

###Relevant Academic Journals:
- IEEE Xplore:
- Journal of Cleaner Production:

###Relevant Online Resources:
- Plug In America:
- InsideEVs
