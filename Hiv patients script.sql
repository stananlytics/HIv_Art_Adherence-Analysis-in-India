SELECT * FROM portfolio.hiv_patients_india;
use portfolio;

# Distribution of CD$ count level on Age group
SELECT 
    CASE 
        WHEN Age BETWEEN 0 AND 18 THEN '0-18'
        WHEN Age BETWEEN 19 AND 35 THEN '19-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+' 
    END AS Age_Group,
    AVG(CD4_Count) AS Avg_CD4_Count,
    MIN(CD4_Count) AS Min_CD4_Count,
    MAX(CD4_Count) AS Max_CD4_Count
FROM hiv_patients_india
GROUP BY Age_Group;

# What is the adherence percentage distribution by ART regimen type?
select ART_Regimen, avg(Adherence_percentage) from hiv_patients_india
group by ART_Regimen;



#  How does employment status affect adherence to ART treatment?
select employment_status, avg(Adherence_percentage) from hiv_patients_india
group by employment_status;


# . What is the relationship between viral load and treatment status?
SELECT Treatment_Status, AVG(Viral_Load) AS Avg_Viral_Load
FROM hiv_patients_india
GROUP BY Treatment_Status;


# Demographic informations

# Age distribution

select 
    CASE 
        WHEN Age BETWEEN 0 AND 18 THEN '0-18'
        WHEN Age BETWEEN 19 AND 35 THEN '19-35'
        WHEN Age BETWEEN 36 AND 50 THEN '36-50'
        ELSE '51+' 
    END AS Age_Group,
    count(*) from hiv_patients_india
GROUP BY Age_Group;


# distribution by religion
select region, count(*) from hiv_patients_india
group by region;




