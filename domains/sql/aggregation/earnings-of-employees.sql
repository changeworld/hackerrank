SELECT (SALARY * MONTHS) AS earnings, count(*)
FROM EMPLOYEE
GROUP by earnings
ORDER BY earnings DESC LIMIT 1;