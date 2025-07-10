-- LIMIT and ALIASING

-- Limit is just going to specify how many rows you want in the output

SELECT 
    *
FROM
    employee_demographics;
    
SELECT 
    *
FROM
    employee_demographics
LIMIT 3;


-- if we change something like the order or use a group by it would change the output

SELECT 
    *
FROM
    employee_demographics
ORDER BY first_name
LIMIT 3;

SELECT 
    *
FROM
    employee_demographics
ORDER BY first_name;

SELECT 
    *
FROM
    employee_demographics
ORDER BY first_name
LIMIT 3 , 2;

-- this now says start at position 3 and take 2 rows after that


-- you could us it if you wanted to select the third oldest person by doing this:
SELECT 
    *
FROM
    employee_demographics
ORDER BY age DESC;

SELECT 
    *
FROM
    employee_demographics
ORDER BY age DESC
LIMIT 2 , 1;


-- ALIASING

-- aliasing is just a way to change the name of the column (for the most part)
-- it can also be used in joins, but we will look at that in the intermediate series
SELECT 
    gender, AVG(age) AS Avg_Age
FROM
    employee_demographics
GROUP BY gender;
