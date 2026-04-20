# my-sql-lab-final
Here are all the SQL queries extracted from your lab document, organized by their respective tasks. 

I have also included the solution for the "Rename a column" challenge that was left as an exercise in Task 1.

### **Part A: Setup**
*(Command line instruction to connect to MySQL)*
```bash
mysql -u root -p
```
*(Hint from the bottom of the document to select the database)*
```sql
USE Your_Database_Name;
```

---

### **Part B: Task 1 - Modifying Table Structure (ALTER)**

**Add a new column:**
```sql
ALTER TABLE Lab_Grades ADD Project_title CHAR(10);
```

**Modify column data type:**
```sql
ALTER TABLE Lab_Grades MODIFY COLUMN Project_title VARCHAR(50);
```

**Delete a column:**
```sql
ALTER TABLE Lab_Grades DROP COLUMN Project_title;
```

**Rename a column (Solution to the hint):**
```sql
ALTER TABLE Lab_Grades RENAME COLUMN submission_date TO sub_date;
```

---

### **Part B: Task 2 - Updating Data (UPDATE)**

**Update a student's major:**
```sql
UPDATE Lab_Grades SET Major = 'CSE' WHERE Name = 'Arafat';
```

**Update a student's name and project marks:**
```sql
UPDATE Lab_Grades SET Name = 'Naheed', Project_marks = 16 WHERE Std_ID = 's004';
```

**Example of omitting the WHERE clause (Updates EVERY record in the table):**
```sql
UPDATE Lab_Grades SET Major = 'CSE';
```

---

### **Part B: Task 3 - Deleting Data (DELETE)**

**Delete a specific student:**
```sql
DELETE FROM Lab_Grades WHERE Name = 'Naima';
```

**Delete students with less than 8 days present:**
```sql
DELETE FROM Lab_Grades WHERE Days_present < 8;
```

---

### **Part B: Task 4 - Dropping Tables and Databases (DROP)**

**Delete a table:**
```sql
DROP TABLE Your_Table_Name;
```

**Delete a database:**
```sql
DROP DATABASE Your_Database_Name;
```

---

### **Part B: Task 5 - Retrieving Data (SELECT)**

**View all data:**
```sql
SELECT * FROM Lab_Grades;
```

**Retrieve specific columns:**
```sql
SELECT Std_ID, Name, Project_marks FROM Lab_Grades;
```

**Calculate total marks:**
```sql
SELECT Name, Project_marks + Days_present*5/12 AS Total_marks FROM Lab_Grades;
```

**String functions:**
```sql
SELECT UPPER(Name), LOWER(Name) FROM Lab_Grades;
```

**DISTINCT keyword (Comparing standard vs distinct):**
```sql
SELECT Major FROM Lab_Grades;
```
```sql
SELECT DISTINCT Major FROM Lab_Grades;
```

**Sorting:**
```sql
SELECT * FROM Lab_Grades ORDER BY Name;
```
```sql
SELECT * FROM Lab_Grades ORDER BY Name DESC, Submission_date ASC;
```

**Filtering with WHERE:**

*Show students with project marks > 17:*
```sql
SELECT Name, Days_present, Project_marks FROM Lab_Grades WHERE Project_marks > 17;
```

*Show CSE students only:*
```sql
SELECT Name, Project_marks FROM Lab_Grades WHERE Major = 'CSE';
```

*Show students with marks between 17 and 19:*
```sql
SELECT Name, Project_marks FROM Lab_Grades WHERE Project_marks BETWEEN 17 AND 19;
```

*Show students majoring in CS or CSE:*
```sql
SELECT * FROM Lab_Grades WHERE Major IN ('CS', 'CSE');
```

*Show students who submitted in August and marks > 18:*
```sql
SELECT * FROM Lab_Grades WHERE Project_marks > 18 AND Submission_date BETWEEN '2018-08-01' AND '2018-08-31';
```

*Show students whose name starts with 'a':*
```sql
SELECT * FROM Lab_Grades WHERE Name LIKE 'a%';
```

*Show students whose name contains at least 2 'a's:*
```sql
SELECT * FROM Lab_Grades WHERE Name LIKE '%a%a%';
```

*Show students whose name is exactly 4 characters long and starts with 'a':*
```sql
SELECT * FROM Lab_Grades WHERE Name LIKE 'a___';
```


Here are all the SQL queries extracted from your lab document, organized by their respective tasks. 

I have also included the solution for the "Rename a column" challenge that was left as an exercise in Task 1.

### **Part A: Setup**
*(Command line instruction to connect to MySQL)*
```bash
mysql -u root -p
```
*(Hint from the bottom of the document to select the database)*
```sql
USE Your_Database_Name;
```

---

### **Part B: Task 1 - Modifying Table Structure (ALTER)**

**Add a new column:**
```sql
ALTER TABLE Lab_Grades ADD Project_title CHAR(10);
```

**Modify column data type:**
```sql
ALTER TABLE Lab_Grades MODIFY COLUMN Project_title VARCHAR(50);
```

**Delete a column:**
```sql
ALTER TABLE Lab_Grades DROP COLUMN Project_title;
```

**Rename a column (Solution to the hint):**
```sql
ALTER TABLE Lab_Grades RENAME COLUMN submission_date TO sub_date;
```

---

### **Part B: Task 2 - Updating Data (UPDATE)**

**Update a student's major:**
```sql
UPDATE Lab_Grades SET Major = 'CSE' WHERE Name = 'Arafat';
```

**Update a student's name and project marks:**
```sql
UPDATE Lab_Grades SET Name = 'Naheed', Project_marks = 16 WHERE Std_ID = 's004';
```

**Example of omitting the WHERE clause (Updates EVERY record in the table):**
```sql
UPDATE Lab_Grades SET Major = 'CSE';
```

---

### **Part B: Task 3 - Deleting Data (DELETE)**

**Delete a specific student:**
```sql
DELETE FROM Lab_Grades WHERE Name = 'Naima';
```

**Delete students with less than 8 days present:**
```sql
DELETE FROM Lab_Grades WHERE Days_present < 8;
```

---

### **Part B: Task 4 - Dropping Tables and Databases (DROP)**

**Delete a table:**
```sql
DROP TABLE Your_Table_Name;
```

**Delete a database:**
```sql
DROP DATABASE Your_Database_Name;
```

---

### **Part B: Task 5 - Retrieving Data (SELECT)**

**View all data:**
```sql
SELECT * FROM Lab_Grades;
```

**Retrieve specific columns:**
```sql
SELECT Std_ID, Name, Project_marks FROM Lab_Grades;
```

**Calculate total marks:**
```sql
SELECT Name, Project_marks + Days_present*5/12 AS Total_marks FROM Lab_Grades;
```

**String functions:**
```sql
SELECT UPPER(Name), LOWER(Name) FROM Lab_Grades;
```

**DISTINCT keyword (Comparing standard vs distinct):**
```sql
SELECT Major FROM Lab_Grades;
```
```sql
SELECT DISTINCT Major FROM Lab_Grades;
```

**Sorting:**
```sql
SELECT * FROM Lab_Grades ORDER BY Name;
```
```sql
SELECT * FROM Lab_Grades ORDER BY Name DESC, Submission_date ASC;
```

**Filtering with WHERE:**

*Show students with project marks > 17:*
```sql
SELECT Name, Days_present, Project_marks FROM Lab_Grades WHERE Project_marks > 17;
```

*Show CSE students only:*
```sql
SELECT Name, Project_marks FROM Lab_Grades WHERE Major = 'CSE';
```

*Show students with marks between 17 and 19:*
```sql
SELECT Name, Project_marks FROM Lab_Grades WHERE Project_marks BETWEEN 17 AND 19;
```

*Show students majoring in CS or CSE:*
```sql
SELECT * FROM Lab_Grades WHERE Major IN ('CS', 'CSE');
```

*Show students who submitted in August and marks > 18:*
```sql
SELECT * FROM Lab_Grades WHERE Project_marks > 18 AND Submission_date BETWEEN '2018-08-01' AND '2018-08-31';
```

*Show students whose name starts with 'a':*
```sql
SELECT * FROM Lab_Grades WHERE Name LIKE 'a%';
```

*Show students whose name contains at least 2 'a's:*
```sql
SELECT * FROM Lab_Grades WHERE Name LIKE '%a%a%';
```

*Show students whose name is exactly 4 characters long and starts with 'a':*
```sql
SELECT * FROM Lab_Grades WHERE Name LIKE 'a___';
```
