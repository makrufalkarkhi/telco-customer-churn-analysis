-- Q1 Total Customers : How many active customers are in the dataset?
SELECT 
    COUNT(customerid) AS total_customers
FROM telco_churn;

-- Q2 Churned Customers : How many customers have actually churned?
SELECT 
    COUNT(customerid) AS churned_customers
FROM telco_churn
WHERE churn_value = 1;

-- Q3 Churn Rate : Out of all customers, what percentage have churned?
SELECT
    ROUND(
        100.0 * 
        SUM(CASE WHEN churn_value = 1 THEN 1 ELSE 0 END) 
        / COUNT(*),
    2) AS churn_rate
FROM telco_churn;

-- Q4 Average Monthly Charge : What is the average amount customers pay per month?
SELECT
    ROUND(AVG(monthly_charges)::numeric, 2) AS avg_monthly_charge
FROM telco_churn;

-- Q5 Churned Customers by Gender : Does churn occur more among men or women?
SELECT
    gender,
    COUNT(*) AS churned_customers
FROM telco_churn
WHERE churn_value = 1
GROUP BY gender
ORDER BY churned_customers DESC;

-- Q6 Churned Customers by Senior Citizen : Does churn occur more among senior citizens or non-senior customers?
SELECT
    senior_citizen,
    COUNT(*) AS churned_customers
FROM telco_churn
WHERE churn_value = 1
GROUP BY senior_citizen;

-- Q7 Top 5 Cities by Churned Customers : Which city has the highest number of churned customers?
SELECT
    city,
    COUNT(*) AS churned_customers
FROM telco_churn
WHERE churn_value = 1
GROUP BY city
ORDER BY churned_customers DESC
LIMIT 5;

-- Q8 Churned Customers by Internet Service : Which internet service type contributes the most to churn?
SELECT
    internet_service,
    COUNT(*) AS churned_customers
FROM telco_churn
WHERE churn_value = 1
GROUP BY internet_service
ORDER BY churned_customers DESC;

-- Q9 Churn Rate by Payment Method : Which payment method has the highest churn risk?
SELECT
    payment_method,
    ROUND(
        100.0 * 
        SUM(CASE WHEN churn_value = 1 THEN 1 ELSE 0 END) 
        / COUNT(*),
    2) AS churn_rate
FROM telco_churn
GROUP BY payment_method
ORDER BY churn_rate DESC;

-- Q10 Churn Rate by Contract : Which contract type has the highest churn risk?
SELECT
    contract,
    ROUND(
        100.0 * 
        SUM(CASE WHEN churn_value = 1 THEN 1 ELSE 0 END) 
        / COUNT(*),
    2) AS churn_rate
FROM telco_churn
GROUP BY contract
ORDER BY churn_rate DESC;

-- Q11 Churned Customers & Churn Rate by Tenure Group : How does churn change as customer tenure increases?
SELECT
    tenure_group,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN churn_value = 1 THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * 
        SUM(CASE WHEN churn_value = 1 THEN 1 ELSE 0 END) 
        / COUNT(*),
    2) AS churn_rate
FROM telco_churn
GROUP BY tenure_group
ORDER BY tenure_group;

-- Q12 Churned Customers by Churn Reason : Why do customers leave the company?
SELECT
    churn_reason,
    COUNT(*) AS churned_customers
FROM telco_churn
WHERE churn_value = 1
GROUP BY churn_reason
ORDER BY churned_customers DESC;
