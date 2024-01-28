-- TABLE CREATION:-

CREATE TABLE account(
	user_id SERIAL PRIMARY KEY,
	username VARCHAR(50) UNIQUE NOT NULL,
	password VARCHAR(50) NOT NULL,
	email VARCHAR(250) UNIQUE NOT NULL,
	created_on TIMESTAMP NOT NULL,
	last_login TIMESTAMP
);

CREATE TABLE job(
	job_id SERIAL PRIMARY KEY,
	job_name VARCHAR(200) UNIQUE NOT NULL
);

CREATE TABLE account_job(
	user_id INTEGER REFERENCES account(user_id),
	job_id INTEGER REFERENCES job(job_id),
	hire_date TIMESTAMP NOT NULL
);



-- INSERT ITEMS IN A TABLE:-

INSERT INTO account(username, password, email, created_on)
VALUES
('bsingh', 'ABC123', 'singh@mail.com', CURRENT_TIMESTAMP);

INSERT INTO job(job_name)
VALUES
('UI/UX Designer');

INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(1,1,CURRENT_DATE);

-- TRYING TO INSERT VALUE FOR NON EXISTING USER_ID
INSERT INTO account_job(user_id,job_id,hire_date)
VALUES
(11,11,CURRENT_DATE);


-- UPDATE COMMAND:-

UPDATE account 
SET last_login = CURRENT_TIMESTAMP;

-- UPDATED FROM ANOTHER COLUMN
UPDATE account
SET last_login = created_on;


-- UPDATE FROM ANOTHER TABLE'S COLUMN
UPDATE account_job
SET hire_date = account.created_on
FROM account
WHERE account.user_id = account_job.user_id;

-- RETURNING AFFECTED ROWS
UPDATE account
SET last_login = CURRENT_TIMESTAMP
RETURNING email, username, created_on, last_login;


-- DELETE COMMAND:-

DELETE FROM job
WHERE job_name = 'DevOps'
RETURNING job_id, job_name;


-- ALTER TABLE COMMAND:-

CREATE TABLE information(
  info_id SERIAL PRIMARY KEY,
  title VARCHAR(100) NOT NULL,
  person VARCHAR(40) NOT NULL UNIQUE
);

-- RENAME THE TABLE
ALTER TABLE information
RENAME TO data;

-- RENAME THE COLUMN
ALTER TABLE data
RENAME COLUMN title TO data_title;

-- REMOVING A CONSTRAINT
ALTER TABLE data
ALTER COLUMN person
DROP NOT NULL;

INSERT INTO data(data_title)
VALUES
('Everything');

-- ADDING NEW COLUMN IN A TABLE
ALTER TABLE data
ADD COLUMN date_published TIMESTAMP;


-- DROP TABLE COMMAND:-

ALTER TABLE data
DROP COLUMN date_published;

-- ADDED IF EXISTS
ALTER TABLE data
DROP COLUMN IF EXISTS date_published;


-- CHECK CONSTRAINTS:-

CREATE TABLE employee (
  emp_id SERIAL PRIMARY KEY,
  first_name VARCHAR(40) NOT NULL,
  last_name VARCHAR(40) NOT NULL,
  birth_date DATE CHECK(birth_date > '2005-01-01'),
  hire_date DATE CHECK(hire_date > birth_date),
  salary INTEGER CHECK(salary>0)	
);

INSERT INTO employee(
  first_name, last_name, birth_date, hire_date, salary
)
VALUES(
 'Billu', 'Singh', '2006-09-08', '2008-08-07', 15000
);

INSERT INTO employee(
  first_name, last_name, birth_date, hire_date, salary
)
VALUES(
 'Don', 'Bradman', '2005-09-08', '2020-08-07', 10000
);

INSERT INTO employee(
  first_name, last_name, birth_date, hire_date, salary
)
VALUES(
 'Harsh', 'Sharma', '2005-09-08', '2020-08-07', 10000
);
