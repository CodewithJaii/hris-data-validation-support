# HRIS Data Validation & Attrition Analysis (SQL)

## Overview
This project focuses on validating and analyzing HR employee data using SQL. The goal is to identify data quality issues, understand attrition patterns, and produce reporting-ready outputs that could support HR operations, audits, or analytics workflows.

The work reflects common tasks involved in HRIS data support, reporting, and system validation.

## Dataset
The dataset contains employee-level HR information, including:
- Demographics
- Job role and job level
- Compensation and tenure
- Work conditions (overtime, business travel)
- Attrition indicator

## Objectives
- Validate HR data for completeness and consistency
- Analyze attrition across job level, department, overtime, and tenure
- Create reusable SQL queries suitable for reporting or dashboards
- Document assumptions and logic used in analysis

## Key Activities
- Data profiling and validation using SQL
- Identification of missing, inconsistent, or out-of-range values
- Attrition analysis using 1/0 flag logic
- Calculation of attrition counts and rates
- Creation of structured, repeatable queries

## Tools Used
- SQL
- Excel / Power BI
- GitHub

## Example Use Cases
- HR data validation prior to reporting
- Attrition analysis for workforce planning
- Supporting HR dashboards or audits
- Pre-processing data for analytics tools

## Power BI Transformations
- Renamed columns for readability
- Applied currency formatting to compensation fields
- Replaced numeric ratings with business-friendly labels
- No analytical logic performed in Power BI

## Power BI Calculations
- Created row-level flags for attrition and overtime
- Built measures for total employees, attrition count, and attrition rate
- Calculations mirror SQL-based logic used earlier in the project

## Insights
- Overall attrition rate is approximately 16%, with notable variation across job levels, departments, and work conditions.
- Job Level 1 roles show the highest attrition rate, indicating increased turnover risk among early-career or entry-level employees.
- Employees working overtime exhibit significantly higher attrition compared to those who do not, suggesting workload or work-life balance as a contributing factor.
- Sales and Human Resources departments experience higher attrition rates than Research & Development.
- Attrition is highest among employees with 0–1 years of tenure, then stabilizes as tenure increases.
- Lower job satisfaction and work-life balance ratings correlate with higher attrition rates.
- Younger age groups (18–25) show higher attrition compared to mid-career employees

## Recommendations
- Prioritize retention strategies for early-tenure employees, particularly within the first year of employment.
- Review overtime practices and workload distribution to reduce burnout-related attrition.
- Conduct targeted engagement and support initiatives for departments with elevated attrition rates.
- Use job satisfaction and work-life balance metrics as early indicators for retention risk.
- Incorporate regular HRIS data validation checks to ensure attrition reporting remains accurate and reliable.
- Leverage standardized SQL queries and Power BI measures to support ongoing workforce monitoring and decision-making


