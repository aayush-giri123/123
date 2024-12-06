CREATE DATABASE JOIN_db;
CREATE TABLE Departments(
dept_id int NOT NULL PRIMARY KEY,
dept_name varchar(50),
location varchar(50)
);
SELECT * FROM Departments;
CREATE TABLE Employees(
emp_id int NOT NULL PRIMARY KEY,
emp_name varchar(50),
dept_id int,
age int,
salary int
FOREIGN KEY (dept_id) REFERENCES Departments(dept_id),
);
SELECT * FROM Employees;
INSERT INTO Departments VALUES 
(1,'HR','New York'),
(2,'Finance','San Francisco'),
(3,'Engineering','Borton'),
(4,'Sales','Chicago');
INSERT INTO Departments VALUES 
(5,'Marketing','Texas');
INSERT INTO Employees VALUES
(1,'Anchal',1,28,60000),
(2,'Nisha',2,32,75000),
(3,'Ayush',3,26,80000),
(4,'Arpan',3,29,82000),
(5,'Roshan',4,27,55000),
(6,'Virat',4,30,58000),
(7,'Rohit',1,31,82000);

SELECT*FROM Employees;

SELECT E.emp_name,D.dept_name  FROM Departments as D
INNER JOIN Employees AS E
ON d.dept_id=E.dept_id;
SELECT E.emp_name,D.dept_name  FROM Departments as D
LEFT JOIN Employees AS E
ON d.dept_id=E.dept_id;

SELECT E.emp_name,D.dept_name  FROM Departments as D
Right JOIN Employees AS E
ON d.dept_id=E.dept_id;
SELECT 
    
   D.dept_name, 
    COUNT(Employees.emp_id) AS Emp_count
FROM 
    Departments AS D 
	 JOIN 
  Employees ON d.dept_id=Employees.dept_id
GROUP BY 
D.dept_name;
 SELECT 
    Employees.emp_name, 
    Departments.dept_name,
    Employees.salary
FROM Employees
JOIN 
    Departments ON Employees.dept_id = Departments.dept_id
WHERE 
    Employees.salary > 60000;

   


   SELECT 
    e.emp_name, 
    d.dept_name, 
    e.salary
FROM 
    Employees e
JOIN 
    Departments d ON e.dept_id = d.dept_id
WHERE 
    e.salary = (SELECT MAX(salary) 
                FROM Employees 
                WHERE dept_id = e.dept_id);


