-- TODO: DISTINCT
-- How many users are there on your website

SELECT stu_fname AS Firstname, email from students;
-- Duplicate users- hemant and mukesh
SELECT DISTINCT stu_fname AS Firstname, email from students;
-- Duplicate entries not included in the selection

-- TODO: ORDER BY
-- Arrange all users based on number of login count

SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY login_count ASC;

SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY login_count DESC;

-- Arrange all users based on student names (alphabetically)

SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY stu_fname;

-- Alternate method - representing stu_fname as 1 i.e. column in the selcted table

SELECT DISTINCT stu_fname, login_count, course_count 
from students ORDER BY 1;           -- Not a recommended approach

-- TODO: LIMIT
-- Sorted results of login counts , but only the top 5

SELECT DISTINCT stu_fname, login_count
from students ORDER BY login_count DESC LIMIT 5;

-- Alternate
SELECT DISTINCT stu_fname, login_count
from students ORDER BY login_count DESC LIMIT 0, 5; --LIMIT 0, 5 start from position 0 and 5 entries after that

-- TODO: LIKE
-- Find the user who name goes by something 'esh' and their email id
SELECT stu_fname, email from students WHERE stu_fname LIKE '%esh';

--- Find the user who name goes by 'mu' something and their email id
SELECT stu_fname, email from students WHERE stu_fname LIKE 'm%';

-- Find user starting with m exactly 4 characters long names
SELECT stu_fname, email from students WHERE stu_fname LIKE 'm___';

-- TODO: COUNT
-- How many users are registered on website give me number this time
SELECT COUNT(DISTINCT stu_fname, stu_lname) 
    AS 'student count'
from students;

-- TODO: SQL Mode (Imp to do this before group by)
SET @@sql_mode='';

-- TODO: GROUP BY
SELECT stu_fname, signup_month, COUNT(*) from students
GROUP BY signup_month;

-- TODO: MIN and MAX
-- Find the student with max login and 
-- also find the one with one with min course count

SELECT stu_fname, email, MAX(login_count) from students;
SELECT stu_fname, email, MIN(login_count) from students;

-- Both gives same results, how come MAX and MIN gives same results

-- Correct solution
SELECT stu_fname, email, login_count from students
WHERE login_count = (SELECT MAX(login_count) from students)
;

-- TODO: GROUBY - MIN and MAX
-- Lowest number of login count in 7th and 10th month

SELECT MIN(login_count), signup_month from students
GROUP BY signup_month ORDER BY(signup_month);

--TODO: SUM and AVG
-- Total number of login and average number of courses 
-- taken by users by month

SELECT signup_month, login_count from students
WHERE signup_month = 7;

-- SUM
SELECT signup_month, SUM(login_count) from students
GROUP BY signup_month;

--AVERAGE
SELECT signup_month, AVG(course_count) from students
GROUP BY signup_month;

-- ADD: AND and OR
-- Find users who have the login count of atleast 20 and enrolled in atleast 5 courses

SELECT email, login_count, signup_month, course_count from students
WHERE login_count>=20 AND course_count>=5
ORDER BY login_count;

-- Find users who signed up in the 7th and the 10th month

SELECT email, login_count, course_count, signup_month from students
WHERE signup_month = 7 OR signup_month = 10;

-- TODO: RANGE - BETWEEN AND
-- Find users who signed up in between the 7th and the 10th month

SELECT email, login_count, signup_month from students
WHERE signup_month BETWEEN 7 AND 10;

-- TODO: CASE
-- Say users signed up between 7 to 10th month are early bird users
-- users signed up between 11 to 12th month are regular users


SELECT stu_fname, signup_month,
    CASE 
        WHEN signup_month BETWEEN 7 AND 10 THEN 'EARLY BIRD'
        WHEN signup_month BETWEEN 11 and 12 THEN 'REGULAR USERS'
        ELSE '##'
    END AS Custom
from students;