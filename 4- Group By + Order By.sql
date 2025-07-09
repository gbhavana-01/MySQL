-- Group By
-- When you use the GROUP BY clause in a MySQL query, it groups together rows that have the same values in the specified column or columns.
-- GROUP BY is going to allow us to group rows that have the same data and run aggregate functions on them

SELECT 
    *
FROM
    employee_demographics;
    
-- when you use group by  you have to have the same columns you're grouping on in the group by statement
SELECT 
    gender
FROM
    employee_demographics
GROUP BY gender;


SELECT 
    occupation
FROM
    employee_salary
GROUP BY occupation;
-- notice there is only one office manager row

-- now the most useful reason we use group by is so we can perform out aggregate functions on them

SELECT 
    gender, AVG(age)
FROM
    employee_demographics
GROUP BY gender;

SELECT 
    *
FROM
    employee_demographics;
SELECT 
    COUNT('gender')
FROM
    employee_demographics
WHERE
    gender = 'Female';

SELECT 
    gender, MIN(age), MAX(age), COUNT(age), AVG(age)
FROM
    employee_demographics
GROUP BY gender;


#10 - The ORDER BY clause:
-------------------------
#The ORDER BY keyword is used to sort the result-set in ascending or descending order.

#The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.

#First let's start simple with just ordering by one column
SELECT 
    *
FROM
    employee_demographics
ORDER BY first_name;

SELECT 
    *
FROM
    employee_demographics
ORDER BY first_name DESC;

SELECT 
    *
FROM
    employee_demographics
ORDER BY gender , age;

SELECT 
    *
FROM
    employee_demographics
ORDER BY gender DESC , age DESC;

