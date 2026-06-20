CREATE DATABASE telco_churn_analysis;

USE telco_churn_analysis;

DROP TABLE telco_customers;

SELECT *
FROM telco_customers;

SELECT COUNT(customerID) AS total_customers
FROM telco_customers;

SELECT COUNT(*) 
FROM telco_customers
WHERE Churn = 1;

SELECT 
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers;


SELECT Contract,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY Contract
ORDER BY churn_rate DESC;


SELECT 
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12 Months'
        WHEN tenure BETWEEN 13 AND 24 THEN '13-24 Months'
        WHEN tenure BETWEEN 25 AND 48 THEN '25-48 Months'
        ELSE '48+ Months'
    END AS tenure_group,

    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate

FROM telco_customers

GROUP BY 
    CASE 
        WHEN tenure BETWEEN 0 AND 12 THEN '0-12 Months'
        WHEN tenure BETWEEN 13 AND 24 THEN '13-24 Months'
        WHEN tenure BETWEEN 25 AND 48 THEN '25-48 Months'
        ELSE '48+ Months'
    END
ORDER BY churn_rate DESC;


SELECT PaymentMethod,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;


SELECT 
    CASE 
        WHEN MonthlyCharges BETWEEN 0 AND 30 THEN 'Low'
        WHEN MonthlyCharges BETWEEN 31 AND 60 THEN 'Medium'
        WHEN MonthlyCharges BETWEEN 61 AND 90 THEN 'High'
        ELSE 'Very High'
    END AS MonthlyCharges_groups,

	COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY CASE 
        WHEN MonthlyCharges BETWEEN 0 AND 30 THEN 'Low'
        WHEN MonthlyCharges BETWEEN 31 AND 60 THEN 'Medium'
        WHEN MonthlyCharges BETWEEN 61 AND 90 THEN 'High'
        ELSE 'Very High'
    END 
ORDER BY churn_rate DESC;


SELECT InternetService,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY InternetService
ORDER BY churn_rate DESC;


SELECT
    PaymentMethod,
        COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
WHERE Contract = 'Month-to-month'
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;


SELECT
       SUM(MonthlyCharges) AS monthly_revenue_at_risk
FROM telco_customers
WHERE Churn = 1;


SELECT
       Contract,
       SUM(MonthlyCharges) AS monthly_revenue_at_risk
FROM telco_customers
WHERE Churn = 1
GROUP BY Contract
ORDER BY monthly_revenue_at_risk DESC;


SELECT InternetService,Contract,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY InternetService, Contract
ORDER BY churn_rate DESC;

SELECT
       Contract,InternetService,
       SUM(MonthlyCharges) AS monthly_revenue_at_risk
FROM telco_customers
WHERE Churn = 1
GROUP BY Contract,InternetService
ORDER BY monthly_revenue_at_risk DESC;


SELECT
    Churn,
    AVG(MonthlyCharges) AS avg_monthly_charge
FROM telco_customers
GROUP BY Churn
ORDER BY Churn;


SELECT
    Contract,
    COUNT(*) AS churned_customers,
        COUNT(*) * 100.0 /
        (SELECT COUNT(*)
         FROM telco_customers
         WHERE Churn = 1) AS churn_percentage
FROM telco_customers
WHERE Churn = 1
GROUP BY Contract
ORDER BY churn_percentage DESC;


SELECT SeniorCitizen,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY SeniorCitizen
ORDER BY churn_rate DESC;


SELECT PaperlessBilling,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY PaperlessBilling
ORDER BY churn_rate DESC;



SELECT
    COUNT(*) AS total_customers,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) AS churned_customers,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate,
    SUM(CASE WHEN Churn = 1 THEN MonthlyCharges END) AS monthly_revenue_at_risk
FROM telco_customers;



SELECT
    TechSupport,
    COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY TechSupport
ORDER BY churn_rate DESC;


SELECT
    OnlineSecurity,
     COUNT(CASE WHEN Churn = 1 THEN 1 END) * 100.0 / COUNT(*) AS churn_rate
FROM telco_customers
GROUP BY OnlineSecurity
ORDER BY churn_rate DESC;
