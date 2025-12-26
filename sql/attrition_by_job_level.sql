-- Attrition by job level 
SELECT
    JobLevel,
    COUNT(*) AS employee_count,
    SUM(CAST(Attrition AS int)) AS attrition_count,
    CAST(100.0 * SUM(CAST(Attrition AS int)) / NULLIF(COUNT(*), 0) AS decimal(5,2)) AS attrition_rate_pct
FROM dbo.HR_EmployeeAttrition
GROUP BY JobLevel
ORDER BY JobLevel;
