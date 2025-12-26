-- Attrition by tenure band
WITH t AS (
    SELECT
        Attrition,
        YearsAtCompany,
        CASE
            WHEN YearsAtCompany < 1 THEN '0-<1'
            WHEN YearsAtCompany BETWEEN 1 AND 2 THEN '1-2'
            WHEN YearsAtCompany BETWEEN 3 AND 5 THEN '3-5'
            WHEN YearsAtCompany BETWEEN 6 AND 10 THEN '6-10'
            ELSE '11+'
        END AS tenure_band
    FROM dbo.HR_EmployeeAttrition
)
SELECT
    tenure_band,
    COUNT(*) AS employee_count,
    SUM(CAST(Attrition AS int)) AS attrition_count,
    CAST(100.0 * SUM(CAST(Attrition AS int)) / NULLIF(COUNT(*), 0) AS decimal(5,2)) AS attrition_rate_pct
FROM t
GROUP BY tenure_band
ORDER BY
    CASE tenure_band
        WHEN '0-<1' THEN 1
        WHEN '1-2' THEN 2
        WHEN '3-5' THEN 3
        WHEN '6-10' THEN 4
        WHEN '11+' THEN 5
    END;
