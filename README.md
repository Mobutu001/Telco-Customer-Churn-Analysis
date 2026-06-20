# TELCO CUSTOMER CHURN ANALYSIS

## Project Overview
Customer churn is a critical challenge for subscription-based businesses, because retaining existing customers is often more cost-effective than acquiring new ones.

This project analyses customer churn behaviour within a telecommunications company using SQL, Power BI and DAX. The objective was to identify the key drivers of churn, quantify the revenue at risk, and provide actionable recommendations to improve customer retention.

---

## Tools Used
- SQL Server (T-SQL)
- Power BI
- DAX
- Excel

---

## Data Source
IBM Telco Customer Churn dataset (publicly available via Kaggle). It contains **7,043** telecom customers with the following attributes:
- Customer demographics
- Contract information
- Internet services
- Additional service subscriptions (Tech Support, Online Security, etc.)
- Billing and payment methods
- Monthly charges
- Customer churn status

---

## Business Questions
- What is the overall churn rate?
- Which customers are most likely to churn?
- Which services are associated with higher churn?
- How much monthly revenue is at risk from churned customers?
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
Built a three-page interactive dashboard:
- Executive Overview
- Customer & Service Drivers
- Revenue Impact & Recommendations

---

## Methodology Notes
- **Revenue at risk** is defined as the **monthly recurring revenue** (sum of `MonthlyCharges`) attributable to churned customers — not annual or lifetime value.
- **Segment** refers to the combination of **Contract type x Internet Service** (e.g. "Month-to-month | Fiber optic").
- For the Tech Support and Online Security comparisons, customers recorded as **"No internet service"** were excluded, since they are structurally unable to subscribe to those add-ons. This keeps the Yes-vs-No churn comparison clean and avoids understating the true gap.

---

## Key Findings
- Overall churn rate was **26.54%** (1,869 of 7,043 customers).
- **Month-to-Month** customers had the highest contract churn at **42.71%**, versus just **2.83%** for two-year contracts.
- **Fiber Optic** internet customers churned at **41.89%**.
- Customers **without Tech Support** churned **~2.8x more often** than those with it (41.6% vs 15.2%).
- Customers **without Online Security** churned **~2.9x more often** than those with it (41.8% vs 14.6%).
- Customers in their **first 12 months** had the highest tenure-based churn at **47.44%**, falling to **9.51%** beyond 48 months.
- **Electronic Check** users had the highest payment-method churn at **45.29%**.
- Churned customers had a higher **average monthly charge** (GBP 74.44) than those who stayed (GBP 61.27).
- **~87%** of total monthly revenue at risk (GBP 139.1K/month) came from churned Month-to-Month customers.
- **Month-to-Month Fiber Optic** customers were the single largest concentration of revenue at risk (~GBP 100.5K/month).

---

## Dashboard Preview

### Executive Overview
![Executive Overview](Dashboard%20Screenshots/Executive%20Overview.png)

### Customer & Service Drivers
![Customer & Service Drivers](Dashboard%20Screenshots/Customer%20%26%20Service%20Drivers.png)

### Revenue Impact & Recommendations
![Revenue Impact & Recommendations](Dashboard%20Screenshots/Revenue%20Impact%20%26%20Recommendations.png)

---

## Dashboard Structure

### Page 1 - Executive Overview
High-level summary of customer churn, monthly revenue at risk and the headline retention risks.

### Page 2 - Customer & Service Drivers
Identifies the customer characteristics (tenure, payment method) and service factors (Tech Support, Online Security) associated with higher churn.

### Page 3 - Revenue Impact & Recommendations
Quantifies the financial impact of churn and outlines targeted retention strategies.

---

## Business Recommendations
1. **Target Month-to-Month customers with annual contract incentives** - they churn at 42.71% and drive ~87% of revenue at risk.
2. **Bundle Tech Support with Fiber Optic plans** - Fiber Optic combined with no Tech Support is the highest-risk service combination.
3. **Promote Online Security adoption among high-risk customers** - its absence nearly triples churn.
4. **Create a first-year onboarding programme** - churn peaks at 47.44% in the first 12 months and declines sharply with tenure.
5. **Launch retention campaigns targeting Electronic Check users** - the highest-churn payment method at 45.29%.

---

## Conclusion
Churn is concentrated within a small number of high-risk segments, particularly Month-to-Month Fiber Optic customers without support services. By focusing retention efforts on these groups - through contract incentives, support bundling and early-tenure onboarding - the business can materially reduce monthly revenue loss and improve long-term retention.
