-- Employee-level risk flags
SELECT
    EmployeeNumber,
    Department,
    JobRole,
    JobLevel,
    OverTime,
    YearsAtCompany,
    YearsSinceLastPromotion,
    MonthlyIncome,
    Attrition,
    CASE WHEN OverTime = 1 AND YearsAtCompany <= 2 THEN 1 ELSE 0 END AS flag_ot_early_tenure,
    CASE WHEN YearsSinceLastPromotion >= 4 THEN 1 ELSE 0 END AS flag_stagnation,
    CASE WHEN MonthlyIncome IS NULL OR MonthlyIncome <= 0 THEN 1 ELSE 0 END AS flag_income_issue
FROM dbo.HR_EmployeeAttrition
ORDER BY flag_ot_early_tenure DESC, flag_stagnation DESC, Attrition DESC;
