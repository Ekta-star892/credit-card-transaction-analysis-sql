# credit-card-transaction-analysis-sql
SQL-based credit card transaction analysis to identify spending patterns, customer behavior, and city-level insights for business decision-making.
# Credit Card Transaction Analysis Using SQL

## Project Overview
This project focuses on analyzing credit card transaction data using SQL to
identify spending trends, customer behavior patterns, and operational insights
relevant to banking and financial services.

The analysis aims to support data-driven decision-making by answering key
business questions related to revenue contribution, customer segments,
transaction efficiency, and card usage patterns.

## Dataset
- Credit card transaction data containing:
  - City
  - Card Type
  - Transaction Date
  - Transaction Amount
  - Gender
  - Expense Type
  - Transaction ID

## Business Problems Addressed
- Which cities contribute the highest share of total credit card spend?
- What are the peak spending months for each card type?
- How quickly do different cities reach high transaction volumes?
- What is the gender-wise contribution across expense categories?
- Which cities generate higher transaction value during weekends?

## Key Analysis Performed
- Identified top 5 cities by total spend and calculated their percentage
  contribution to overall revenue.
- Analyzed monthly spending trends across card types to identify peak usage
  periods.
- Performed cumulative spend analysis to detect when total spending exceeded
  ₹10,00,000 for each card type.
- Evaluated gender-based spending contribution across different expense
  categories.
- Analyzed weekend transaction efficiency by comparing total spend to
  transaction count.
- Measured operational velocity by identifying cities that reached their
  500th transaction in the shortest time.

## SQL Concepts & Techniques Used
- Common Table Expressions (CTEs)
- Window Functions (RANK, ROW_NUMBER, SUM OVER)
- Date and Time Functions
- Conditional Aggregations
- Percentage Contribution Analysis

## Tools & Technologies
- SQL (Microsoft SQL Server)
- Data Analysis & Business Insights
