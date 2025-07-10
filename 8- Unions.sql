-- The MySQL UNION Operator
-- The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Every SELECT statement within UNION must have the same number of columns
-- The columns must also have similar data types
-- The columns in every SELECT statement must also be in the same order

-- Note : The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL

SELECT 
    first_name, last_name
FROM
    employee_demographics 
UNION SELECT 
    first_name, last_name
FROM
    employee_salary;
    
    
-- we can use UNION ALL to show all values

SELECT 
    first_name, last_name
FROM
    employee_demographics 
UNION ALL SELECT 
    first_name, last_name
FROM
    employee_salary;
    
#Now Let's actually try to use UNION
# The Parks department is trying to cut their budget and wants to identify older employees they can push out or high paid employees who they can reduce pay or push out
-- let's create some queries to help with this

SELECT 
    first_name, last_name, 'Old'
FROM
    employee_demographics
WHERE
    age > 50;
    
SELECT 
    first_name, last_name, 'Old Women' AS Label
FROM
    employee_demographics
WHERE
    gender = 'Female' 
UNION SELECT 
    first_name, last_name, 'Old Man' AS Label
FROM
    employee_demographics
WHERE
    gender = 'Male' 
UNION SELECT 
    first_name, last_name, 'High Payed Employee'
FROM
    employee_salary
WHERE
    salary >= 70000
ORDER BY first_name;