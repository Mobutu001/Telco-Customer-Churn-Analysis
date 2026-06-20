# TELCO CUSTOMER CHURN ANALYSIS

## Project Overview

Customer churn is a critical challenge for subscription-based businesses because retaining existing customers is often more cost-effective than acquiring new ones.

This project analyses customer churn behaviour within a telecommunications company using SQL, Power BI and DAX. The objective was to identify key churn drivers, quantify revenue at risk and provide actionable recommendations to improve customer retention.

---

## Tools Used

- SQL Server
- Power BI
- DAX
- Excel

---

## Dataset Overview

The dataset contains 7,043 telecom customers and includes:

- Customer demographics
- Contract information
- Internet services
- Additional service subscriptions
- Billing and payment methods
- Monthly charges
- Customer churn status

---

## Business Questions

- What is the overall churn rate?
- Which customers are most likely to churn?
- Which services are associated with higher churn?
- How much revenue is at risk from churned customers?
- What actions can reduce churn and improve retention?

---

## Analysis Process

The analysis was completed in three stages:

### 1. Data Preparation (SQL)

- Explored and validated customer records.
- Calculated churn counts and churn rates across customer segments.
- Aggregated monthly revenue associated with churned customers.
- Identified high-risk combinations of contract type and internet service.

### 2. Data Modelling & DAX (Power BI)

Created measures including:

- Total Customers
- Churned Customers
- Churn Rate
- Revenue At Risk
- Revenue At Risk Distribution
- High-Risk Customer Segment Identification

### 3. Dashboard Development

Built a three-page interactive dashboard focused on:

- Executive Overview
- Customer & Service Drivers
- Revenue Impact & Recommendations

---

## Key Findings

- Overall churn rate was **26.54%**.
- 1,869 customers churned out of 7,043 total customers.
- Month-to-Month customers experienced the highest churn rate at **42.71%**.
- Customers using Fiber Optic internet churned at **41.89%**.
- Customers without Tech Support churned nearly **3x more often**.
- Customers without Online Security churned nearly **3x more often**.
- Customers within their first 12 months had the highest churn rate at **47.44%**.
- Electronic Check customers exhibited the highest churn rate at **45.29%**.
- 87% of total revenue at risk came from churned Month-to-Month customers.
- Month-to-Month Fiber Optic customers represented the largest concentration of revenue at risk.

---

## Dashboard Structure

### Page 1 – Executive Overview

Provides a high-level summary of customer churn, revenue at risk and key retention risks.

### Page 2 – Customer & Service Drivers

Identifies the customer characteristics and service-related factors associated with higher churn rates.

### Page 3 – Revenue Impact & Recommendations

Quantifies financial impact and outlines targeted retention strategies.

---

## Dashboard Preview

### Executive Overview
![Executive Overview](Dashboard%20Screenshots/Executive%20Overview.png)

### Customer & Service Drivers
![Customer & Service Drivers](Dashboard%20Screenshots/Customer%20%26%20Service%20Drivers.png)

### Revenue Impact & Recommendations
![Revenue Impact & Recommendations](Dashboard%20Screenshots/Revenue%20Impact%20%26%20Recommendations.png)

---

## Business Recommendations

1. Target Month-to-Month customers with annual contract incentives.
2. Bundle Tech Support with Fiber Optic plans.
3. Promote Online Security adoption among high-risk customers.
4. Create onboarding programmes for customers in their first year.
5. Launch retention campaigns targeting Electronic Check users.

---

## Conclusion

The analysis revealed that churn is concentrated within a small number of high-risk customer segments, particularly Month-to-Month Fiber Optic customers without support services.

By focusing retention efforts on these groups, the business can significantly reduce revenue loss and improve long-term customer retention.
