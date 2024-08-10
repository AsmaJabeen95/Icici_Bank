create database bank;
use bank;

CREATE TABLE Bank_Details(Branch_code int primary key, 
Address varchar(50), 
Department_id int, 
Branch_name varchar(50), 
State varchar(50)
);

CREATE TABLE Employee(Employee_id int primary key, 
First_name varchar(50),
Department_id int, 
Manager_id int,
Job_id int,
Email varchar(50),
Hire_Date date,
Phone_no varchar(50),
Salary int
);
ALTER TABLE Employee MODIFY COLUMN Job_id varchar(50);

CREATE TABLE Customer(Account_No int primary key, 
First_Name varchar(50),
City varchar(30), 
Branch_code int,
Employee_id int ,
Phone_no varchar(50), ATM_NO int Unique,
Exp_date date,
Pin_No int unique);

ALTER TABLE Customer MODIFY COLUMN Phone_no int;
ALTER TABLE Customer MODIFY COLUMN Phone_no varchar(50);

CREATE TABLE Department(Department_id int primary key,
Department_name varchar(50),
Manager_id int,
Employee_id int,
Account_no int);

CREATE TABLE Job_Details(Job_id int primary key,
Department_id int,
Branch_code int);
ALTER TABLE Job_Details MODIFY Job_id varchar(50);

CREATE TABLE Account_Type(Account_no int primary key,
Type_Account varchar(50),
Manager_id int,
Department_name varchar(50),
Opening_Date date
);

SELECT * FROM Bank_Details;
SELECT * FROM Department;
SELECT * FROM Account_Type;
SELECT * FROM Job_Details;
SELECT * FROM Employee;
SELECT * FROM Customer;

INSERT INTO Bank_Details VALUES(100,'Nagpur',1,'ICIC_N','Maharashtra'),
(101,'Pune',1,'ICIC_P','Maharashtra'),(102,'Mumbai',1,'ICIC_M','Maharashtra'),
(103,'Delhi',1,'ICIC_D','DEL'),(104,'Mumbai',1,'ICIC_M','Maharashtra'),
(105,'Delhi',1,'ICIC_D','DEL'),(106,'Nagpur',1,'ICIC_N','Maharashtra'),
(107,'Pune',8,'ICIC_P','Maharashtra'),(108,'Mumbai',8,'ICIC_M','Maharashtra'),
(109,'Nagpur',8,'ICIC_N','Maharashtra'),(110,'Pune',11,'ICIC_P','Maharashtra'),
(111,'Mumbai',11,'ICIC_M','Maharashtra'),(112,'Delhi',11,'ICIC_D','DEL'),
(113,'Nagpur',11,'ICIC_N','Maharashtra'),(114,'Pune',11,'ICIC_P','Maharashtra'),
(115,'Mumbai',16,'ICIC_M','Maharashtra'),(116,'Nagpur',16,'ICIC_N','Maharashtra'),
(117,'Pune',16,'ICIC_P','Maharashtra'),(118,'Mumbai',19,'ICIC_M','Maharashtra'),
(119,'Delhi',19,'ICIC_D','DEL'),(120,'Pune',21,'ICIC_P','Maharashtra');

INSERT INTO Department VALUES(1,'Account',20,50,12345),
(8,'Loan',21,51,67899),(11,'HR',22,52,10112),
(16,'Admin',23,53,13145),(19,'Sales',24,54,15167),
(21,'Security',25,55,15167);

INSERT INTO Employee VALUES(50,'Samuel',1,20,'ST_CLERK','SMCCAIN','23-11-07',9198051876,3800),
(51,'Allan',8,21,'ST_CLERK','SSEWALL','30-01-04',9198421876,3600),
(52,'Irene',11,22,'ST_CLERK','SSTILES','04-03-04',9198052876,2900),
(53,'Kevin',16,23,'ST_CLERK','STOBIAS','01-08-04',9198051256,2500),
(54,'Julia',19,24,'ST_CLERK','SVOLLMAN','10-03-04',9198781876,4000),
(55,'Donald',21,25,'ST_CLERK','TFOX','15-12-05',9194052876,3900),
(56,'Christopher',1,26,'ST_CLERK','TGATES','03-11-06',9194051822,3200),
(57,'TJ',8,27,'ST_MAN','TJOLSON','11-11-05',9198051336,2800),
(58,'Lisa',11,28,'ST_MAN','TRAJS','19-03-07',9194023876,3100),
(59,'Karen',16,29,'ST_MAN','VJONES','24-01-08',9198251676,3000),
(60,'Valli',19,30,'ST_MAN','VPATABAL','23-02-08',9197951876,2600),
(61,'Joshua',21,31,'ST_MAN','WGAITEZ','01-05-03',9198241876,6400),
(62,'Randall',1,32,'F1_ACCOUNT','WSMITH','10-10-05',9198051786,6200),
(63,'Hazel',8,33,'F1_ACCOUNT','WTYLOR','16-11-07',9198051986,11500),
(64,'Luis',11,34,'F1_ACCOUNT','JNAYER','16-07-05',9198051786,10000),
(65,'Trnena',16,35,'F1_ACCOUNT','JPATEL','26-09-06',9195451786,9600),
(66,'Den',19,36,'F1_ACCOUNT','JRESULL','14-01-07',9198012386,7400),
(67,'Michael',21,37,'SA_REP','JSEO','08-03-08',9191451786,7300),
(68,'John',1,38,'SA_REP','JTYLOR','20-08-05',9197571786,6100),
(69,'Nandita',8,39,'SA_REP','JWHALEN','30-10-05',9191231786,11000),
(70,'Ismael',11,40,'SA_REP','KCHUNNG','16-02-05',9191451786,8800);

INSERT INTO Customer VALUES(12345,'Samuel','Nagpur',100,50,9198051876,423705689,'23-04-06',5689),
(67899,'Allan','Pune',101,51,9198421876,423568971,'24-05-07',8971),
(10112,'Irene','Mumbai',102,52,9198052876,423432253,'04-01-05',12253),
(13145,'Kevin','Delhi',103,53,9198051256,423295535,'24-01-06',15535),
(15167,'Julia','Mumbai',104,54,9198781876,423158817,'23-02-06',18817),
(18192,'Donald','Delhi',105,55,9194052876,423022099,'21-06-07',22099),
(20210,'Christopher','Nagpur',106,56,9194051822,422885381,'03-02-08',25381),
(22230,'TJ','Pune',107,57,9198051336,422748663,'27-01-04',28663),
(24250,'Lisa','Mumbai',108,58,9194023876,422611945,'20-02-05',31945),
(26270,'Karen','Nagpur',109,59,9198251676,422475227,'24-06-06',35227),
(28290,'Valli','Pune',110,60,9197951876,422338509,'07-02-07',38509),
(30310,'Joshua','Mumbai',111,61,9198241876,422201791,'13-01-08',41791),
(32330,'Randall','Delhi',112,62,9198051786,422065073,'17-09-03',45073),
(34350,'Hazel','Nagpur',113,63,9198051986,421928355,'17-02-04',48355),
(36370,'Luis','Pune',114,64,9198051786,421791637,'17-08-05',51637),
(38390,'Trenna','Mumbai',115,65,9195451786,421654919,'07-06-02',54919),
(40410,'Den','Nagpur',116,66,9198012386,421518201,'07-06-02',58201),
(42430,'Michael','Pune',117,67,9191451786,421381483,'07-06-02',61483),
(44450,'John','Mumbai',118,68,9197571786,421244765,'07-06-02',64765),
(46470,'Nandita','Delhi',119,69,9191231786,421108047,'21-04-08',68047),
(48490,'Ismael','Pune',120,70,9191451786,420971329,'11-03-05',71329)
;

UPDATE Customer SET Account_no = 18190 WHERE Employee_id = 55;

INSERT INTO Account_Type VALUES(12345,'Saving',20,'Account','23-04-03'),
(67899,'loan',21,'Loan','24-05-04'),
(10112,'Saving',22,'HR','04-01-06'),
(13145,'loan',23,'Admin','23-04-03'),
(15167,'current',24,'Sales','24-05-04'),
(18190,'busines',25,'Security','24-01-06'),
(20210,'loan',26,'Account','23-04-03'),
(22230,'Saving',27,'Loan','24-05-04'),
(24250,'loan',28,'HR','04-01-06'),
(26270,'current',29,'Admin','23-04-03'),
(28290,'business',30,'Sales','24-05-04'),
(30310,'current',31,'Security','04-01-06'),
(32330,'Saving',32,'Account','23-04-03'),
(34350,'loan',33,'HR','24-05-04'),
(36370,'current',34,'HR','04-01-06'),
(38390,'current',35,'Admin','23-04-03'),
(40410,'business',36,'Sales','24-05-04'),
(42430,'loan',37,'Security','04-01-06'),
(44450,'saving',38,'Account','23-04-03'),
(46470,'loan',39,'Loan','24-05-04'),
(48490,'Saving',40,'HR','04-01-06');

INSERT INTO Job_Details VALUES('ST_CLERK',1,101),
('ST_MAN',8,108),
('FI_ACCOUNT',11,113),
('SA_REP',19,118);

select * from Job_Details;
DESCRIBE Bank_Details;

ALTER TABLE Bank_Details 
ADD FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Employee
ADD FOREIGN KEY (Department_id) REFERENCES Department(Department_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

-- ADD FOREIGN KEY (Job_id) REFERENCES Job_Details(Job_id)

ALTER TABLE Customer 
ADD FOREIGN KEY (Branch_code) REFERENCES Bank_Details(Branch_code),
ADD FOREIGN KEY (Employee_id) REFERENCES Employee(Employee_id)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Customer RENAME COLUMN Account_No to Account_no;
SELECT * FROM Customer;

ALTER TABLE Department 
ADD FOREIGN KEY (Account_no) REFERENCES Account_Type(Account_no)
ON DELETE CASCADE
ON UPDATE CASCADE;

ALTER TABLE Job_Details
ADD FOREIGN KEY(Department_id) REFERENCES Department(Department_id),
 ADD FOREIGN KEY (Branch_code) REFERENCES Bank_Details(Branch_code)
ON DELETE CASCADE 
ON UPDATE CASCADE;

--  1) Find an employee’s whose id is 52 and branch name is icicp.
		SELECT e.First_name, e.Employee_id FROM Employee AS e JOIN
        Bank_Details as b ON 
        e.Department_id = b.Department_id 
		WHERE e.Employee_id = '52' AND b.Branch_name = 'ICIC_P';

-- 2) Write a query to fetch all the details who doesn’t belong to mumbai, pune, delhi.
		SELECT * FROM Bank_Details WHERE Address NOT IN('Mumbai','Pune','Delhi');

-- 3) Find details department name, address, branch code, dept _id, city of the account no 18190.
        SELECT d.Department_name, b.Address, b.Branch_code,b.Department_id, c.City, c.Account_no FROM Bank_details as b JOIN
        Department as d ON b.Department_id = d.Department_id JOIN 
        Customer as c ON c.Employee_id = d.Employee_id WHERE c.Account_no = 18190;
 
-- 4) Find department id, department name, job id whose only work in Loan, HR, admin
		SELECT d.Department_id, d.Department_name, j.Job_id FROM Department as d JOIN
        Job_Details as j WHERE d.Department_name IN('Loan', 'HR', 'Admin');

-- 5) Find the type_account, state account number whose atm no 422748663.
		SELECT a.Type_Account, c.Account_no, c.ATM_NO, State FROM Customer as c INNER JOIN
        Account_Type as a ON c.Account_No = a.Account_no JOIN
        Bank_details as b ON b.Branch_code = c.Branch_code
		WHERE ATM_NO = 422748663;
        
-- 6) Create a view with that show address, branch name, department name, first name. phone no.
		CREATE VIEW V1 AS
        SELECT b.Address, b.Branch_name, d.Department_name, e.First_name, e.Phone_no FROM Employee as e inner join
        Bank_Details as b on e.Department_id = b.Department_id JOIN
        Department as d ON d.Employee_id = e.Employee_id;
        
        SELECT * FROM V1;

-- 7) Create view city, department name whose opening date is less than 24 May 04
				CREATE VIEW V4 as 
				SELECT City, Department_name FROM Account_Type as a JOIN 
				Customer as c ON a.Account_no = c.Account_no
				WHERE a.Opening_Date < '2004-05-24';

		        SELECT * FROM V4;

-- 8) Create view only job id for clerk, manager, an accountant with all detail and name it employee job_deatils
		CREATE VIEW Employee_job_details as
        SELECT * FROM Job_Details WHERE Job_id IN('FI_ACCOUNT','ST_CLERK','ST_MAN') ;
		SELECT * FROM Employee_job_details;
 
-- 9) In the Customer table change the atm_no 423295535 with 42321992
		UPDATE Customer SET ATM_NO = 42321992 WHERE Employee_id = 53;
        
        set sql_safe_updates = 0;

-- 10) In the Account_type table change all sales account into admin.
		UPDATE Account_Type SET Department_name = 'Admin' WHERE Department_name = 'Sales';
        
    

 


