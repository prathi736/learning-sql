-- NULLIF Statement

CREATE TABLE dept_name (
	first_name VARCHAR(50),
	department VARCHAR(50)
);


INSERT INTO dept_name (
	first_name,
	department 
)
VALUES 
('Arun', 'A'),
('Vinit', 'A'),
('Jay', 'C');

SELECT * FROM dept_name;

SELECT
(SUM(CASE WHEN department='A' THEN 1 ELSE 0 END) /
SUM(CASE WHEN department='C' THEN 1 ELSE 0 END) )
AS ratio
FROM dept_name;

DELETE FROM dept_name
WHERE department = 'C';

SELECT * FROM dept_name;


SELECT
(
SUM(CASE WHEN department='A' THEN 1 ELSE 0 END) /
NULLIF(SUM(CASE WHEN department='C' THEN 1 ELSE 0 END), 0)
 )
AS ratio
FROM dept_name;




