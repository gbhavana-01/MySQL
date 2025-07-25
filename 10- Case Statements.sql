-- Case Statements

-- A Case Statement allows you to add logic to your Select Statement, sort of like an if else statement in other programming languages or even things like Excel
USE `Parks_and_Recreation`;

SELECT 
    *
FROM
    employee_demographics;
    
SELECT 
    first_name,
    last_name,
    CASE
        WHEN age <= 30 THEN 'Young' 
    END
FROM
    employee_demographics;
    
SELECT 
    first_name,
    last_name,
    CASE
        WHEN age <= 30 THEN 'Young'
        WHEN age BETWEEN 30 AND 50 THEN 'Adult'
        WHEN age > 50 THEN 'Old'
    END
FROM
    employee_demographics;
    
-- Now we don't just have to do simple labels like we did, we can also perform calculations

-- Let's look at giving bonuses to employees

SELECT 
    *
FROM
    employee_salary;
    
-- Pawnee Council sent out a memo of their bonus and pay increase structure so we need to follow it
-- Basically if they make less than 45k then they get a 5% raise - very generous
-- if they make more than 45k they get a 7% raise
-- they get a bonus of 10% if they work for the Finance Department
    
SELECT 
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary < 45000 THEN salary + salary * (0.05)
        WHEN salary > 45000 THEN salary + salary * (0.07)
    END AS New_Salary
FROM
    employee_salary;

SELECT 
    *
FROM
    parks_departments;

-- Now we need to also account for Bonuses, let's make a new column

SELECT 
    first_name,
    last_name,
    salary,
    CASE
        WHEN salary > 45000 THEN salary + (salary * 0.05)
        WHEN salary < 45000 THEN salary + (salary * 0.07)
    END AS new_salary,
    CASE
        WHEN dept_id = 6 THEN salary + salary * (0.1)
    END AS Bonus_sal
FROM
    employee_salary;