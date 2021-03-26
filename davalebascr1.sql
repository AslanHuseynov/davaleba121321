/* Create a table called employees */
CREATE TABLE employees (
    
    name TEXT,
    surname TEXT,
    role TEXT,
    salary INTEGER,
    item TEXT);

/* It will automatically pick an id that's different from other ones. */
INSERT INTO employees (name,surname,role,salary) VALUES ("John", "Doe", "Role1", 1500);
INSERT INTO employees (name,surname,role,salary) VALUES ("John", "Smith", "Role2", 700);
INSERT INTO employees (name,surname,role,salary) VALUES ("Robert", "Williams", "Role3", 1200);
INSERT INTO employees (name,surname,role,salary) VALUES ("Michael", "Brown", "Role4", 600);
INSERT INTO employees (name,surname,role,salary) VALUES ("David", "Miller", "Role5", 650);


SELECT * FROM employees;


SELECT role, MAX(salary) AS "Highest salary"
FROM employees
GROUP BY role;

SELECT name surname role, MAX(salary) AS "Highest salary"
FROM employees
GROUP BY name surname role;

SELECT role, salary FROM (
  SELECT role, salary, (@total:=@total+salary) as total
  FROM employees, (select @total:=0) t
  ORDER BY salary ASC
) as foo
WHERE (total-salary) >=300 && <=600
