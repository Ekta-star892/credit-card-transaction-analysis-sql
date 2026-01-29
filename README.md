# credit-card-transaction-analysis-sql
SQL-based credit card transaction analysis to identify spending patterns, customer behavior, and city-level insights for business decision-making.
# Credit Card Transaction Analysis Using SQL

## Objective
The objective of this project is to analyze credit card transaction data using SQL
to identify spending patterns, customer behavior, and operational insights
that support data-driven decision-making in the banking domain.

## Dataset
The dataset contains credit card transaction details including:
- City
- Card Type
- Transaction Date
- Transaction Amount
- Gender
- Expense Type
- Transaction ID

## Business Questions Addressed
- Which cities contribute the highest share of total credit card spend?
- What are the peak spending months for each card type?
- How quickly do different cities reach high transaction volumes?
- What is the contribution of female customers across expense categories?
- Which cities generate higher transaction value during weekends?

## Analysis Performed
- Identified top 5 cities with the highest total spend and calculated their
  percentage contribution to overall revenue.
- Analyzed monthly spending trends for each card type to identify peak usage periods.
- Performed cumulative spend analysis to identify when total spending exceeded
  ₹10,00,000 for each card type.
- Evaluated gender-wise spending contribution across different expense categories.
- Analyzed weekend transaction efficiency by comparing total spend to
  number of transactions across cities.
- Measured operational growth by identifying cities that reached their
  500th transaction in the shortest time period.

## SQL Techniques Used
- Common Table Expressions (CTEs)
- Window Functions (RANK, ROW_NUMBER, SUM OVER)
- Date and Time Functions
- Conditional Aggregations
- Percentage Contribution Calculations

## Outcome
- Identified key revenue-contributing cities and high-performing card types.
- Highlighted customer spending behavior patterns across gender and expense categories.
- Provided insights into transaction efficiency and operational growth across cities.
- Enabled better understanding of credit card usage trends for strategic decision-making.

## Conclusion
This project demonstrates how SQL can be used not just for data extraction,
but for analyzing business problems, identifying trends, and generating insights
relevant to banking and financial services decision-making.

## Tools & Technologies
- SQL (Microsoft SQL Server)
- Data Analysis
- Business Analytics



