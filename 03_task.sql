-- TODO: CONCAT
-- Give me full name of all students

SELECT CONCAT(stu_fname, ' ', stu_lname) AS fullname from students;

-- Give me full name and login count of the users

SELECT CONCAT(stu_fname, ' ', stu_lname) AS fullname,
    login_count
  from students;

-- Alternate display

SELECT CONCAT(stu_fname, ' ', stu_lname, 'and login count is',login_count ) 
    AS 'Full Info'
from students;

-- A user's login count and course count

SELECT CONCAT( stu_fname, "'s login count is", login_count,
    ' and course count is', course_count) 
    AS 'Count Info'
from students;

-- TODO: REPLACE (case sensitive)
-- While getting all the first name , change a to @

SELECT REPLACE(stu_fname,'a' ,'@') as fun from students;

-- TODO: SUBSTRING
-- Get me list of emails. If email is longer than 7 characters, truncate it with ...

SELECT CONCAT(SUBSTRING(email, 1, 7), '...') AS 'truncated emails' from students;

-- TODO: REVERSE
SELECT REVERSE(stu_fname) from students;

-- TODO: CHAR_LENGTH
-- Get me length of all registered emails

SELECT email, CHAR_LENGTH(email) AS Length from students;

-- TODO:UPPER CASE and LOWER CASE
-- Get me all first name in upper case and last name in lower case

SELECT UPPER(stu_fname) AS 'Upper Name', LOWER(stu_lname) AS 'Lower Name' from students;

