Total Customers

SELECT COUNT(*) AS total_customers
FROM customer_project;


Churn Rate

SELECT
    `Churn Label`,
    COUNT(*) AS total_customers
FROM customer_project
GROUP BY `Churn Label`;


Contract Type vs Churn

SELECT
    Contract,
    COUNT(*) AS churned_customers
FROM customer_project
WHERE `Churn Label` = 'Yes'
GROUP BY Contract
ORDER BY churned_customers DESC;


Payment Method vs Churn

SELECT
    `Payment Method`,
    COUNT(*) AS churn_count
FROM customer_project
WHERE `Churn Label` = 'Yes'
GROUP BY `Payment Method`
ORDER BY churn_count DESC;


Internet Service vs Churn

SELECT
    `Internet Service`,
    COUNT(*) AS churn_count
FROM customer_project
WHERE `Churn Label` = 'Yes'
GROUP BY `Internet Service`;


Tech Support Impact

SELECT
    `Tech Support`,
    COUNT(*) AS churned_customers
FROM customer_project
WHERE `Churn Label` = 'Yes'
GROUP BY `Tech Support`;


Monthly Charges Analysis

SELECT
    `Churn Label`,
    AVG(`Monthly Charges`) AS avg_monthly_charge
FROM customer_project
GROUP BY `Churn Label`;


Tenure Analysis

SELECT
CASE
    WHEN `Tenure Months` <= 12 THEN 'New'
    WHEN `Tenure Months` <= 36 THEN 'Medium'
    ELSE 'Loyal'
END AS customer_type,
COUNT(*) AS total_customers
FROM customer_project
WHERE `Churn Label` = 'Yes'
GROUP BY customer_type;


Churn Reasons

SELECT
    `Churn Reason`,
    COUNT(*) AS total_customers
FROM customer_project
WHERE `Churn Label` = 'Yes'
GROUP BY `Churn Reason`
ORDER BY total_customers DESC;

High Value Customer Churn

SELECT
    AVG(CLTV) AS avg_cltv
FROM customer_project
WHERE `Churn Label` = 'Yes';

