-- ==========================================
-- SETUP: Create Database, Table, and Dummy Data
-- ==========================================
CREATE DATABASE your_database_name;
USE your_database_name;

CREATE TABLE lab_grades (
    std_id VARCHAR(10) PRIMARY KEY,
    name VARCHAR(50),
    major VARCHAR(20),
    project_marks INT,
    days_present INT,
    submission_date DATE
);

INSERT INTO lab_grades (std_id, name, major, project_marks, days_present, submission_date) VALUES
('s001', 'arafat', 'eee', 15, 10, '2018-08-15'),
('s002', 'naima', 'cse', 18, 12, '2018-08-10'),
('s003', 'john', 'cs', 19, 5, '2018-08-05'),
('s004', 'oldname', 'math', 10, 10, '2018-08-20'),
('s005', 'albert', 'cse', 20, 11, '2018-08-25'),
('s006', 'abrar', 'cs', 18, 10, '2018-08-22'),
('s007', 'aria', 'cse', 19, 12, '2018-08-28');

-- ==========================================
-- part b: task 1 - modifying table structure
-- ==========================================
-- add a new column
ALTER TABLE lab_grades ADD project_title CHAR(10);

-- modify column data type
ALTER TABLE lab_grades MODIFY COLUMN project_title VARCHAR(50);

-- delete a column
ALTER TABLE lab_grades DROP COLUMN project_title;

-- rename a column
ALTER TABLE lab_grades RENAME COLUMN submission_date TO sub_date;


-- ==========================================
-- part b: task 2 - updating data
-- ==========================================
-- update a student's major
UPDATE lab_grades SET major = 'cse' WHERE name = 'arafat';

-- update a student's name and project marks
UPDATE lab_grades SET name = 'naheed', project_marks = 16 WHERE std_id = 's004';


-- ==========================================
-- part b: task 3 - deleting data
-- ==========================================
-- delete a specific student
DELETE FROM lab_grades WHERE name = 'naima';

-- delete students with less than 8 days present
DELETE FROM lab_grades WHERE days_present < 8;


-- ==========================================
-- part b: task 5 - retrieving data (lab_grades)
-- ==========================================
-- view all data
SELECT * FROM lab_grades;

-- retrieve specific columns
SELECT std_id, name, project_marks FROM lab_grades;

-- calculate total marks
SELECT name, project_marks + days_present*5/12 AS total_marks FROM lab_grades;

-- string functions
SELECT UPPER(name), LOWER(name) FROM lab_grades;

-- distinct keyword (comparing standard vs distinct)
SELECT major FROM lab_grades;
SELECT DISTINCT major FROM lab_grades;

-- sorting
SELECT * FROM lab_grades ORDER BY name;
SELECT * FROM lab_grades ORDER BY name DESC, sub_date ASC;

-- filtering with where
SELECT name, days_present, project_marks FROM lab_grades WHERE project_marks > 17;
SELECT name, project_marks FROM lab_grades WHERE major = 'cse';
SELECT name, project_marks FROM lab_grades WHERE project_marks BETWEEN 17 AND 19;
SELECT * FROM lab_grades WHERE major IN ('cs', 'cse');
SELECT * FROM lab_grades WHERE project_marks > 18 AND sub_date BETWEEN '2018-08-01' AND '2018-08-31';

-- pattern matching (like)
SELECT * FROM lab_grades WHERE name LIKE 'a%';
SELECT * FROM lab_grades WHERE name LIKE '%a%a%';
SELECT * FROM lab_grades WHERE name LIKE 'a___';
