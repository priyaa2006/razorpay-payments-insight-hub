# Razorpay – Digital Payment & Transaction Analytics Dashboard

## 1. Project Information

- **Project Title:** Razorpay – Digital Payment & Transaction Analytics Dashboard
- **Industry Name:** FinTech – Digital Payments
- **Problem Statement:** Digital payment records include transaction amounts, payment methods, transaction statuses, fees, customer and merchant details, locations, and refund information. Reviewing these fields separately can make it difficult to understand overall transaction activity and payment performance. This project uses MySQL and Power BI to inspect, prepare, and visualize a transaction dataset.
- **Project Objectives:**
  - Store and inspect the transaction dataset using MySQL.
  - Prepare and transform data in Power Query.
  - Summarize transaction volume, transaction value, success rate, failed transactions, and fees.
  - Compare transaction status and payment-method performance.
  - Explore failure reasons, customer types, merchant types, locations, and refund activity.
  - Present the analysis through three Power BI report pages.
- **Proposed Solution / Business Questions:** Use MySQL for database setup and record inspection, then Power BI to explore transaction totals, success and failure patterns, payment-method comparisons, fees, customer and merchant categories, geographic distribution, and refunds.
- **Dataset Name:** Razorpay Digital Payment Analytics Dataset
- **Dataset Source:** Synthetic educational dataset used for this project. It is not represented as an official Razorpay dataset, and no public source URL was supplied.
- **Database Name:** `razorpay_analytics`
- **Table Name:** `razorpay_working_dataset`

## 2. Tools & Technologies

- **MySQL / SQL:** Database creation, table selection, record count, and record preview.
- **Power BI Desktop:** Dashboard development and data visualization.
- **Power Query:** Data cleaning and transformation.
- **DAX:** KPI measures and calculations in Power BI.
- **CSV:** Dataset format used for data import.

## 3. Project Overview

This project explores a synthetic digital-payment dataset with MySQL and Power BI. The dataset is stored in a MySQL database and inspected using SQL. Power Query is used for data preparation, and DAX measures support KPI reporting. The Power BI report contains three pages: Executive Transaction Overview, Payment Performance Analysis, and Customer Behaviour & Refund Analytics. The report is an educational analytics project, not a live Razorpay monitoring system and not a representation of actual Razorpay business performance.

## 4. Project Objectives

1. Summarize transaction count, transaction value, success rate, failed transactions, and transaction fees.
2. Review successful, failed, and pending transaction distribution.
3. Compare transaction status and fees across payment methods.
4. Explore monthly transaction and failed-transaction patterns.
5. Review recorded failure reasons.
6. Explore customer types, merchant types, and geographic distributions.
7. Analyze refund amounts, refund statuses, and monthly refund trends.

## 5. Dataset Information

- **Dataset Name:** Razorpay Digital Payment Analytics Dataset
- **Rows:** 1,500
- **Columns:** 28
- **Dataset Period:** January 1, 2026 – October 1, 2026
- **Currency:** INR
- **Source Type:** Synthetic educational dataset; not official Razorpay data.
- **Database:** `razorpay_analytics`
- **Table:** `razorpay_working_dataset`

### Important Dataset Columns

| Column | Description |
|---|---|
| `Transaction_ID` | Transaction reference |
| `Transaction_Date` | Transaction date |
| `Customer_ID` | Customer identifier |
| `Customer_Name` | Customer display name |
| `Customer_Age` | Customer age field |
| `Gender` | Recorded gender category |
| `City` | City associated with the record |
| `State` | State associated with the record |
| `Merchant_ID` | Merchant identifier |
| `Merchant_Name` | Merchant display name |
| `Business_Category` | Merchant business category |
| `Payment_Method` | Payment method |
| `Payment_Channel` | Channel used for payment |
| `Transaction_Type` | Transaction type |
| `Amount` | Transaction amount |
| `Transaction_Status` | Successful, Failed, or Pending status |
| `Failure_Reason` | Recorded failure reason, where present |
| `Processing_Time_ms` | Processing time in milliseconds |
| `Currency` | Currency code |
| `Refund_Status` | Refund status |
| `Refund_Amount` | Recorded refund amount |
| `Device_Type` | Device category |
| `Customer_Type` | New or Existing customer category |
| `Merchant_Type` | Merchant size/type category |
| `Transaction_Fee` | Transaction fee |
| `Month` | Month label |
| `Quarter` | Quarter label |
| `Year` | Year value |

The dataset has 1,500 transaction records. A distinct-customer count is a different measure from the number of transaction records, so the dashboard's customer card should be interpreted according to its Power BI measure.

## 6. Project Workflow

**Industry Selection → Problem Statement → Dataset Collection (CSV Dataset) → Raw Dataset Backup → Load into MySQL → SQL Storage → Connect MySQL with Power BI → Power BI ETL – Power Query → Data Cleaning & Transformation → DAX & KPI Creation → Dashboard Development → Business Insights → Publish to Power BI → GitHub Documentation**

This is the project workflow provided for the README. The SQL screenshot confirms database creation/selection, a transaction-count query, and a ten-row preview query. It does not show additional SQL analysis scripts.

## 7. SQL Analysis

The following statements are visible in the supplied MySQL Workbench screenshot.

### Database Setup

```sql
CREATE DATABASE razorpay_analytics;
```

### Select Database, Count Records, and Preview Rows

```sql
USE razorpay_analytics;

SELECT COUNT(*) AS total_transactions
FROM razorpay_working_dataset;

SELECT *
FROM razorpay_working_dataset
LIMIT 10;
```

- `CREATE DATABASE` creates the project database if it does not already exist.
- `USE` selects the database for subsequent statements.
- `COUNT(*)` returns the number of records in the table.
- `LIMIT 10` previews up to ten records.

These are the SQL statements confirmed by the supplied screenshot; no other SQL scripts are claimed here.

## 8. Power BI Dashboards

### Dashboard 1: Executive Transaction Overview

**Purpose:** Provide a high-level view of transaction activity and value.

**KPIs shown in the screenshot:**
- Total Transaction: approximately **1.5K**
- Total Transaction Value: approximately **18.98M**
- Transaction Success Rate: **66.9%**
- Failed Transaction: **255**
- Total Transaction Fees: approximately **189.82K**

**Visuals shown:**
- Monthly transaction-value trend (the chart title in the screenshot reads “Transaction Value by State”; verify the visual's assigned axis fields before describing it as a state breakdown)
- Payment Method Comparison
- Transaction Status
- Transaction Value by State
- Top Cities by Transaction Value
- Month slicer

### Dashboard 2: Payment Performance Analysis

**Purpose:** Review transaction outcomes, payment-method performance, fees, and recorded failure reasons.

**KPIs shown in the screenshot:**
- Successful Transactions: approximately **1.004K**
- Failed Transactions: **255**
- Success Rate: **66.9%**

**Visuals shown:**
- Transaction Status Distribution
- Monthly Failed Transaction Trend
- Transaction Status by Payment Method
- Transaction Fees by Payment Method
- Failure Reason Analysis
- Month slicer

### Dashboard 3: Customer Behaviour & Refund Analytics

**Purpose:** Explore customer categories, merchant distribution, transaction geography, and refund activity.

**KPIs shown in the screenshot:**
- Total Customers: approximately **1.5K**
- New Customers: **376**
- Total Refund Amount: approximately **2.05M**
- Refund Transactions: **189**

**Visuals shown:**
- Refund Amount by Refund Status
- New vs Existing Customer Analysis
- Monthly Refund Trend
- Merchant Distribution by Type
- Transaction Distribution by State
- Month slicer

Dashboard KPI values above are transcribed from the supplied screenshots and reflect the report's displayed measures and formatting. They should not automatically be treated as distinct-customer counts or as independently recalculated values. The dataset contains 1,500 rows, 433 distinct `Customer_ID` values, 1,004 successful transactions, 255 failed transactions, and 241 pending transactions. The dataset-level total amount is ₹18,981,860.13, transaction fees total ₹189,818.71, and refund amounts total ₹2,053,035.68. The dashboard's New Customers card displays 376; its exact measure definition is not visible in the screenshot.

## 9. Data Analysis & Visualization

The Power BI report covers:

- **KPI Analysis:** Transaction count, transaction value, success rate, failed transactions, fees, customer card values, and refunds.
- **Payment-Method Analysis:** Payment-method comparison and transaction fees by payment method.
- **Status Analysis:** Successful, failed, and pending transaction distribution.
- **Failure Analysis:** Recorded failure reasons and monthly failed-transaction trend.
- **Geographic Analysis:** Transaction values or distribution across states and cities.
- **Customer Analysis:** New and existing customer categories as displayed in the report.
- **Merchant Analysis:** Merchant distribution by type.
- **Refund Analysis:** Refund amount by status and monthly refund trend.

## 10. Key Business Insights

Based on the supplied dataset and dashboard screenshots:

- The dataset contains **1,500 transaction records**.
- The dataset-level total transaction amount is **₹18,981,860.13** (approximately **₹18.98M**).
- The dataset contains **1,004 successful**, **255 failed**, and **241 pending** transaction records.
- The successful-transaction share is approximately **66.9%** of all transaction records.
- Total transaction fees in the dataset are **₹189,818.71** (approximately **₹189.82K**).
- The total recorded refund amount is **₹2,053,035.68** (approximately **₹2.05M**), and **189 records** have a positive refund amount.
- The dashboards provide breakdowns by payment method, transaction status, failure reason, location, customer category, merchant type, and refund status.

These findings describe the supplied synthetic educational dataset only. They should not be generalized to Razorpay's actual business operations. Visuals can be explored further with the Month slicer.

## 11. Power BI Dashboard Screenshots

Save the three dashboard images in the repository's `Screenshot` folder using these filenames, or update the Markdown paths to match the actual filenames.

### Executive Transaction Overview

![Executive Transaction Overview](Screenshot/executive_transaction_overview.png)

### Payment Performance Analysis

![Payment Performance Analysis](Screenshot/payment_performance_analysis.png)

### Customer Behaviour & Refund Analytics

![Customer Behaviour & Refund Analytics](Screenshot/customer_behaviour_refund_analytics.png)

## 12. Project Folder Structure

Use the following structure as a documentation template and keep only files that actually exist in the project folder.

```text
PROJECT FINAL/
│
├── README.md
├── Dataset/
│   └── [actual CSV dataset filename]
├── Sql/
│   └── [actual SQL script filename, if saved]
├── PowerBI/
│   └── [actual Power BI report filename]
├── Screenshot/
│   ├── executive_transaction_overview.png
│   ├── payment_performance_analysis.png
│   └── customer_behaviour_refund_analytics.png
└── Documentation/
    ├── Project_Report.pdf
    └── Data_Dictionary.xlsx
```

Replace bracketed placeholders and screenshot filenames with the exact filenames present in the repository. The SQL screenshot confirms queries were run in MySQL Workbench, but does not by itself confirm that a separate `.sql` file has been saved.

## 13. Conclusion

This project demonstrates a digital-payment analytics workflow using MySQL and Power BI. MySQL supports database setup and transaction-table inspection, while Power Query, DAX, and Power BI visuals support data preparation, KPI reporting, and analysis across transaction performance, payment methods, customer and merchant categories, locations, and refunds. The project provides practical experience in SQL record inspection, data transformation, KPI creation, and interactive dashboard development using a synthetic educational dataset.

## 14. Author

- **Name:** Priya Dharshini S
- **Student ID:** AF05331699
- **Organization:** Anudip Foundation
- **Course:** DBA_AI
- **Batch Code:** ANP-D7635
