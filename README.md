📊 Telco Customer Churn Analysis

This project analyzes customer churn in a telecommunications company using an end-to-end analytics pipeline built with Python (Jupyter Notebook), PostgreSQL, and Power BI. The goal is to understand who is leaving, from which segments, and why, and to provide data-driven insights to support customer retention strategies.

🔍 Business Problem

The company is experiencing increasing customer churn, which threatens its long-term growth. Although detailed customer data is available-including demographics, contracts, payment methods, services, and tenure—the company lacks a clear understanding of:

- Which customer segments are most likely to churn
- Which services, contracts, and payment methods are associated with higher churn
- Why customers are leaving
This project answers the business question:

“How can customer data be used to identify churn patterns, high-risk customer segments, and the key factors driving customer churn?”

🧩 Dataset

The dataset contains 7,043 customer records with 33 columns, including:

- Customer profile (gender, senior citizen, city, dependents, etc.)
- Account information (contract type, payment method, tenure)
- Service usage (internet service, phone service, streaming, security, tech support)
- Financials (monthly charges, total charges, CLTV)
- Churn indicators (churn value, churn reason, churn score)

🛠️ Project Workflow

This project follows a complete analytics pipeline:

1. Data Preparation (Python / Jupyter)
The raw Telco dataset was cleaned and prepared using Python. This included handling missing values, fixing data types, standardizing column names, validating churn labels, and creating analytical features such as tenure groups to enable customer lifecycle analysis.

2. Data Analysis (PostgreSQL / SQL)
The cleaned dataset was loaded into PostgreSQL and analyzed using SQL. A set of business-driven queries (Q1–Q12) was used to examine:
- Overall churn level
- Churn by gender and senior citizen
- Churn by city
- Churn by internet service
- Churn by payment method
- Churn by contract
- Churn by tenure group
- Churn by churn reason
Each Power BI visual is backed by an auditable SQL query.

3. Visualization (Power BI)
An interactive Churn Analysis Dashboard was built in Power BI to visualize:
- Total customers, churned customers, and churn rate
- Churn by demographic, geographic, and account attributes
- Churn by internet service and tenure
- Main reasons customers leave
The dashboard provides a clear, visual story of customer churn behavior.

📈 Key Insights

Some of the main insights from the analysis include:
- Month-to-month contracts have by far the highest churn rate compared to one-year and two-year contracts.
- Electronic check users are the most likely to churn among all payment methods.
- Fiber optic customers contribute the largest number of churned customers.
- New customers (0–1 year tenure) are at the highest risk of churn.
- The main churn reasons are related to better competitor offers, higher speeds, more data, and service dissatisfaction.

💡 Business Recommendations

Based on the analysis, the company should:
- Convert month-to-month customers to long-term contracts using incentives.
- Encourage electronic check users to switch to automatic payments.
- Prioritize retention efforts for fiber optic customers.
- Strengthen onboarding and early-stage support for new customers.
- Improve service quality and competitive positioning to reduce churn driven by competitors and poor customer experience.

📁 telco-customer-churn-analysis
│
├── 📄 README.md                         # Project overview and documentation
├── 📄 LICENSE                           # License file
│
├── 📄 Business Problem Document.pdf     # Business problem statement
├── 📄 Telco Customers Data Analysis.pdf # Full project report
├── 📄 Telco-Customer-Churn-Analysis.pptx# Presentation slides
│
├── 📄 customers_churn_analysis.ipynb    # Data preparation & feature engineering (Python)
├── 📄 customers_churn_sql_queries.sql   # PostgreSQL churn analysis queries (Q1–Q12)
│
├── 📄 telco_customers_churn.csv         # Original dataset
├── 📄 telco_customers_churn_cleaned.csv # Cleaned and prepared dataset
│
└── 📄 customers_churn.pbix              # Power BI churn analysis dashboard

🚀 Tools & Technologies

- Python (pandas, numpy)
- Jupyter Notebook
- PostgreSQL
- SQL
- Power BI

📌 Conclusion
This project demonstrates how customer data can be transformed into actionable insights through a structured analytics pipeline. By combining Python for data preparation, SQL for analysis, and Power BI for visualization, the company gains a clear, data-driven understanding of customer churn and the key drivers behind it.

This project demonstrates how customer data can be transformed into actionable insights through a structured analytics pipeline. By combining Python for data preparation, SQL for analysis, and Power BI for visualization, the company gains a clear, data-driven understanding of customer churn and the key drivers behind it.
