-- TABLE CREATION:-

CREATE TABLE students(
  student_id SERIAL PRIMARY KEY,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100) NOT NULL,
  homeroom_number SMALLINT,
  phone VARCHAR(20) UNIQUE NOT NULL,
  email VARCHAR(70) UNIQUE,
  graduation_year SMALLINT 
);



CREATE TABLE teachers (
 teacher_id SERIAL PRIMARY KEY,
 first_name VARCHAR(100) NOT NULL,
 last_name VARCHAR(100) NOT NULL,
 homeroom_number SMALLINT,
 department VARCHAR(50),
 email VARCHAR(70) UNIQUE,
 phone VARCHAR(20) UNIQUE NOT NULL
);



-- INSERTING DATA INTO TABLES:-

INSERT INTO students(
	first_name,
	last_name,
	homeroom_number,
	phone,
	graduation_year
)
VALUES (
	'Mark',
	'Watney',
	5,
	'777-555-1234',
	2035
);

INSERT INTO teachers(
	first_name,
	last_name,
	homeroom_number,
	department,
	email,
	phone
)
VALUES (
	'Jonas',
	'Salk',
	5,
	'Biology',
	'jsalk@school.org',
	'777-555-4321'
);