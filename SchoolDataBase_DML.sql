
--=================================================================
------------Insert values in table Admission ---------
--=================================================================

use School_Management_System
INSERT INTO smc.Admission VALUES
	  ('Monir', '2000-05-15', 'Male', 'John .', 'Jane Doe', '123 Chattogram', '1234567890',null, 'Class-10', 'A', 'Science', '2023-09-01'),
	  ('Mounira', '2001-03-22', 'Female', 'James ', 'Janet ', '456 Chattogram', '98763210',null, 'Class-10', 'B', 'Arts', '2023-09-05'),
	  ('Mounira bagum', '2001-03-22', 'Female', 'James ', 'Janet ', '456 Chattogram', '98743210',null,'Class-10', 'C', 'Arts', '2023-09-03'),
	  ('Monir khan', '1999-06-03','Male','Mohin khan','Dilruba','1250 Chtg','12398756',null,'Class-6','A',null,'2023-01-10'),
          ('Sohel Khan','1999-02-13', 'Male', 'Mohin khan', 'Dilruba' ,'1250 Chtg', '12986576',null,'Class-6', 'A', null, '2023-01-10'),
	  ('Abir','2003-12-10','Male','Sojib','Rujina','635 ctg','879663542',null, 'Class-8','A',null,'2022-03-05'),
	  ('Mohin khan', '1999-06-03','Male','Monir khan','Dilruba','1100 Chtg','1258964956',null,'Class-6','B',null,'2023-01-10'),
	  ('Halal Khan','1999-02-13', 'Male', 'Sohel Khan', 'Dilruba' ,'1200 Chtg', '12982535',null,'Class-6', 'B', null, '2023-01-10'),
	  ('Balal Khan','1999-02-13', 'Male', 'Sohel Khan', 'Dilruba' ,'1000 Chtg', '5897476',null,'Class-6', 'C', null, '2023-01-10'),
	  ('Abir Hossain','2003-12-10','Male','Sojib Hossain','Rujina','6350 ctg','89663542',null, 'Class-6','C',null,'2022-03-05'),
	  ('Rayhan', '2001-10-12', 'Male','ali Hossain','Josna Akter','4200 Ctg','025963314',null, 'Class-7','B',null,'2022-01-01'),
	  ('Rafi','2002-11-15', 'Male','Jabed Khan','Moni Akter','5213 ctg','52348697',null, 'Class-7','B',null,'2022-02-5'),
	  ('Rafi Islam','2002-11-15', 'Male','Jabed Khan','Moni Akter','5210 ctg','52445847',null, 'Class-7','B',null,'2022-02-5'),
	  ('Arif','2003-12-10','Male','Sujon Bhuiyan','Jarim','6500 ctg','879488942',null, 'Class-7','A',null,'2022-03-05'),
	  ('Rofique','2002-11-15', 'Male','Jahid Khan','Moni Akter','5200 ctg','52336997',null, 'Class-7','A',null,'2022-02-5'),
	  ('Abir Molla','2003-12-10','Male','Sobuj ','Rujina','4200 ctg','879685242',null, 'Class-8','A',null,'2022-03-05'),
	  ('Jabed Molla','2003-12-10','Male','Halal ','Rina','4200 ctg','8796842',null, 'Class-8','A',null,'2022-03-05'),
	  ('Balal Khan','1999-02-13', 'Male', 'Sohel Khan', 'Dilruba' ,'1000 Chtg', '12957476',null,'Class-8', 'B', null, '2023-01-10'),
	  ('Abir Hossain','2003-12-10','Male','Sojib Hossain','Rujina','6350 ctg','87963542',null, 'Class-8','B',null,'2022-03-05'),
	  ('Mounira Islam', '2001-03-22', 'Female', 'James ', 'Jannat arra ', '456 Chattogram', '9421120',null, 'Class-9', 'C', 'Business Studies', '2023-09-03'),
	  ('Munni Begum', '2001-03-22', 'Female', 'Jamil sab', 'Jannat ', '456 Chattogram', '9223210',null, 'Class-9', 'C', 'Business Studies', '2023-09-03') , 
	  ('Jannat', '2001-03-22', 'Female', 'Jamil Khan', 'Munni ', '456 Chattogram', '95212580',null, 'Class-9', 'C', 'Science', '2023-09-03'),
	  ('Jannat Akter', '2001-03-22', 'Female', 'Jamal Khan', 'Munni Begum ', '456 Chattogram', '98919870',null, 'Class-9', 'C', 'Science', '2023-09-03'),
   	  ('Rafi Islam','2002-11-15', 'Male','Murad Khan','Moni Akter','5213 ctg','52348619',null, 'Class-9','B','Arts','2022-02-5'),
	  ('Heriod','2002-11-15', 'Male','Jabed Alom','Jamila Akter','5213 ctg','34861597',null, 'Class-9','B','Arts','2022-02-5'),
	  ('Mounira bagum', '2001-03-22', 'Female', 'James ', 'Janet ', '456 Chattogram', '98743211',null, 'Class-10', 'C', 'Business Studies', '2023-09-03'),
   	  ('Munni', '2001-03-22', 'Female', 'Jamil', 'Jannat ', '456 Chattogram', '9812210',null, 'Class-10', 'C', 'Business Studies', '2023-09-03'), 
    	  ('Jannat', '2001-03-22', 'Female', 'Jamal', 'Munni ', '456 Chattogram', '9895210',null, 'Class-10', 'C', 'Science', '2023-09-03'),
     	  ('Jannat Akter', '2001-03-22', 'Female', 'Jamil Khan', 'Munni Begum ', '456 Chattogram', '9896510',null, 'Class-10', 'C', 'Science', '2023-09-03')

go


--=================================================================
------------Insert values in table Teachers ---------
--=================================================================
use School_Management_System
INSERT INTO smc.Teachers VALUES
    ('Monir Chaudwary', 'Principle', 'Arts', '1980-05-15', 'Male', '123 Ctg', 12567890, 'Chaudwary@email.com'),
    ('Gazi Mizanur Rahaman', 'Vice-Principle', 'Since', '1982-08-22', 'Female', '456 Oak', 98763210, 'Mizanur@email.com'),
    ('Robert ', 'English Teacher', 'General', '1985-09-18', 'Male', '321 Pine', 1112233, 'brown@email.com'),
    ('John', 'Math Teacher', 'General', '1980-05-15', 'Male', '123 Main St', 123567890, 'smith@email.com'),
    ('JaneDoe', 'Bangla Teacher', 'General', '1982-08-22', 'Female', '456 Ctg ', 9876210, 'doe@email.com'),
    ('Emily', 'Assistant Teacher', 'Science', '1979-12-05', 'Female', '654 Maple', 443222, 'taylor@email.com'),
    ('Robert Brown', 'Assistant Teacher', 'Science', '1985-09-18', 'Male', '321 Coxs', 122333, 'rbrown@email.com'),
    ('EmilyTaylor', 'Assistant Teacher', 'Business Studies', '1979-12-05', 'Female', '654 Ctg', 442233, 'taylor@email.com'),
    ('Daniel Martinez', 'Assistant Teacher', 'Business Studies', '1980-07-05', 'Male', '456 Dhaka', 99944433, 'martinez@email.com'),
    ('Wilson', 'Assistant Teacher', 'Arts', '1986-12-12', 'Female', '123 PCtg', 5551122, 'wilson@email.com'),
    ('Eva Turner', 'Assistant Teacher', 'Arts', '1989-10-28', 'Female', '555 Ctg', 7776555, 'turner@email.com'),
    ('Dylan', 'Seniour Teacher', 'Arts', '1984-03-03', 'Male', '666 Dhaka', 9990011, 'patter@email.com');

go


--=================================================================
------------Insert values in table Classes ---------
--=================================================================
use School_Management_System
INSERT INTO smc.Classes (Class_Name, Set_Vacancy, Vacancy_Available) VALUES 
    ('Class-6', 50, 20 ),
    ('Class-7', 50, 15),
    ('Class-8', 50, 30),
    ('Class-9', 50, 10),
    ('Class-10', 50, 25)
go


--=================================================================
------------Insert values in table Section ---------
--=================================================================
use School_Management_System
insert into smc.Section values
	('A','Class-6'),
	('B','Class-6'),
	('C','Class-6'),
	('A','Class-7'),
	('B','Class-7'),
	('C','Class-7'),
        ('A','Class-8'), 
	('B','Class-8'),
	('C','Class-8'),
	('A','Class-9'), 
	('B','Class-9'),
	('C','Class-9'),
        ('A','Class-10'), 
	('B','Class-10'),
	('C','Class-10')
go


--=================================================================
------------Insert values in table Department ---------
--=================================================================
use School_Management_System
insert into smc.Department values
	('Genaral','Class-6'),
	('Genaral','Class-7'),
	('Genaral','Class-8'),
	('Science','Class-9'),
	('Arts','Class-9'),
	('Business Studies','Class-9'),
	('Science','Class-10'),
	('Arts','Class-10'),
	('Business Studies','Class-10')
go


--=================================================================
------------Insert values in table Department ---------
--=================================================================
use School_Management_System
insert into smc.Subjects values                 ('Bangla' , 'Class-6'),
						('English' ,'Class-6'),
						('Math' ,'Class-6'),
						('Religion' ,'Class-6'),
						('Science','Class-6'),
						('ICT', 'Class-6'),
						('Bangla' , 'Class-7'),
						('English' ,'Class-7'),
						('Math' ,'Class-7'),
						('Religion' ,'Class-7'),
						('Science','Class-7'),
						('ICT', 'Class-7'),
						('Bangla' , 'Class-8'),
						('English' ,'Class-8'),
						('Math' ,'Class-8'),
						('Religion' ,'Class-8'),
						('Science','Class-8'),
						('ICT', 'Class-8'),
                                                ('Bangla' , 'Class-9'),
						('English' ,'Class-9'),
						('Math' ,'Class-9'),
						('Religion' ,'Class-9'),
						('ICT', 'Class-9'),
						('Accounting','Class-9'),
						('Finance','Class-9'),
						('History','Class-9'),
						('Social scince','Class-9'),
						('Physics','Class-9'),
						('Chemistry','Class-9'),
					        ('Bangla' , 'Class-10'),
						('English' ,'Class-10'),
						('Math' ,'Class-10'),
						('Religion' ,'Class-10'),
						('ICT', 'Class-10'),
						('Accounting','Class-10'),
						('Finance','Class-10'),
						('History','Class-10'),
						('Social scince','Class-10'),
						('Physics','Class-10'),
						('Chemistry','Class-10')
go



--=================================================================
------------Insert values in table Class_Schedule ---------
--================================================================
use School_Management_System
INSERT INTO smc.Class_Schedule (Schedule_Time, Schedule_Duration,Class_ID, Section_ID, Department_ID, Subject_ID, Teacher_ID)
VALUES          ('10:00 AM','45 Minutes',601,605,150,101,20205),
		('11:00 AM','45 Minutes',601,605,150,106,20207),
		('10:00 AM','60 Minutes',701,630,151,131,20209),
		('10:00 AM','60 Minutes',701,625,151,141,20211),
		('11:00 AM','45 Minutes',801,645,152,171,20213),
		('11:00 AM','60 Minutes',801,640,152,166,20215),
		('12:00 AM','45 Minutes',901,655,154,201,20219),
		('12:00 AM','30 Minutes',901,660,155,211,20217),
		('12:00 AM','30 Minutes',1001,670,157,271,20215),
		('11:00 AM','45 Minutes',1001,675,158,291,20203)

 go 

 
--=================================================================
------------Insert values in table Attendance ---------
--=================================================================
use School_Management_System
INSERT INTO smc.Attendance VALUES
    ('2023-11-01', 'Present', 10161),
    ('2023-11-01', 'Absent', 10162),
    ('2023-11-01', 'Present', 10163),
    ('2023-11-02', 'Present', 10173),
    ('2023-11-02', 'Present', 10172)
go


--=================================================================
------------Insert values in table Fee ---------
--=================================================================
use School_Management_System
INSERT INTO smc.Fee VALUES
    (10163, 500.00, 100.00, 600.00),
    (10162, 750.00, 50.00, 800.00),
    (10173, 600.00, 200.00, 800.00),
    (10178, 450.00, 150.00, 600.00),
    (10172, 700.00, 100.00, 800.00)
go



--=================================================================
------------Insert values in table Department ---------
--=================================================================
use School_Management_System
INSERT INTO smc.Exam (Exam_Type, Exam_Start_Date, Exam_End_Date, Student_ID, Class_ID, Section_ID, Subject_ID, Department_ID)
VALUES
    ('Midterm', '2023-01-15', '2023-01-20', 10161,601,605,101,150),
    ('Final', '2023-05-10', '2023-05-20',10161,601,605,101,150),
    ('Midterm', '2023-01-15', '2023-01-20',10171,701,620,131,151),
    ('Final', '2023-05-10', '2023-05-20',10171,701,620,131,151),
    ('Midterm', '2023-01-15', '2023-01-20', 10177,901,735,216,155),
    ('Final', '2023-05-10', '2023-05-20',10177,901,735,216,155),
    ('Midterm', '2023-01-15', '2023-01-20', 10185,1001,750,261,156),
    ('Final', '2023-05-10', '2023-05-20',10185,1001,750,261,156)

go


--=================================================================
------------Insert values in table Department ---------
--=================================================================
use School_Management_System
insert into smc.Result values
    (185,'2023-11-18','Pass', 505, 10161, 101, 601, 150),
    (130,'2023-11-18','Fail', 509, 10171, 131, 701, 151),
    (190,'2023-11-18','Pass', 512, 10177, 216, 901, 155),
    (185,'2023-11-18','Pass', 514, 10185, 261, 1001, 156)
go


--=================================================================
------------Insert values in table Department ---------
--=================================================================
use School_Management_System
insert into smc.Registration values
   (10161,601,605,101,150,505,704),
   (10171,701,620,131,151,509,705), 
   (10177,901,660,216,155,512,706),
   (10185,1001,675,261,156,514,707)
go

--=================================================================
------------Select all table  ---------
--=================================================================
use School_Management_System
Select * From  smc.Admission
Select * From smc.Teachers
Select * From smc.Classes
Select * from smc.Section
Select * from smc.Department
Select * from smc.Subjects
Select * from smc.Class_Schedule
Select * From smc.Attendance
Select * from smc.Fee
Select * from smc.Exam
Select * from smc.Result
Select * from smc.Registration
go

--=================================================================
------------Calculate Column for fee table  ---------
--=================================================================
use School_Management_System
select Top 5 *
from smc.Fee
Where Total_Amount=Payment_Amount+Due_Amount
order by Fee_ID DESC   
go
--=================================================================
------------Calculate Column for fee table  ---------
--=================================================================
select *
from smc.Fee
where  Total_Amount> 500 and (Payment_Amount+Due_Amount<>0)
go

use School_Management_System
Select * 
From  smc.Admission
where Student_Name like '%[a,e,i,o,u]%'
go

 use School_Management_System;
 select *
 from smc.Teachers
 where Teacher_ID between 20201 and 202011
 go

 --=================================================================
---shoe inner join in admission and class table  ---------
--=================================================================

	use School_Management_System;
	go
	SELECT 
	A.Student_ID,A.Student_Name,A.Class_Name,C.Class_ID,C.Set_Vacancy,C.Vacancy_Available
	FROM smc.Admission A INNER JOIN smc.Classes C
	ON A.Class_Name = C.Class_Name
	go

=================================================================
------ Left outer join between Admission and Classes tables ---
=================================================================
USE School_Management_System;
GO

SELECT A.Student_ID,A.Student_Name,A.Class_Name,C.Class_ID,C.Set_Vacancy,C.Vacancy_Available
FROM smc.Admission A LEFT OUTER JOIN smc.Classes C 
ON A.Class_Name = C.Class_Name
order by  A.Student_ID desc
go

--=================================================================
-- make a cross join between Classes and Section tables---
--=================================================================

USE School_Management_System;
GO  
SELECT C.Class_ID,C.Class_Name,S.Section_ID, S.Section_Name
FROM smc.Classes C CROSS JOIN smc.Section S
go


--=================================================================
-- make a subquery between Subjects and Department tables---
--=================================================================

USE School_Management_System;
GO
SELECT Subject_ID,Subject_Name,Class_Name
FROM smc.Subjects
WHERE Class_Name IN (SELECT Class_Name FROM smc.Department WHERE Department_Name = 'Genaral')
go

---=================================================================
-----make a subquery between Classes and Subjects tables------
---=================================================================
SELECT Class_ID, Class_Name,
(SELECT COUNT(*) FROM smc.Subjects WHERE Class_Name = C.Class_Name) AS SubjectCount
FROM smc.Classes C
go


---=================================================================
-- Create a view for the Classes table
---=================================================================


USE School_Management_System;
go
CREATE VIEW smc.ClassView
AS
SELECT Class_ID, Class_Name, Set_Vacancy, Vacancy_Available
FROM smc.Classes;
GO
SELECT * FROM smc.ClassView
go


----=================================================================
-- make a right join between Classes and Admission tables---
--=================================================================
 SELECT C.Class_ID, C.Class_Name, COUNT(A.Student_ID) AS AdmissionCount
  FROM   smc.Classes C right JOIN smc.Admission A
  ON C.Class_Name = A.Class_Name
  GROUP BY C.Class_ID, C.Class_Name
  go

---=================================================================
-- make a rollup query Classes and Admission tables---
--=================================================================
   SELECT C.Class_ID, C.Class_Name, COUNT(A.Student_ID) AS AdmissionCount
  FROM   smc.Classes C right JOIN smc.Admission A
  ON C.Class_Name = A.Class_Name
  GROUP BY C.Class_ID, C.Class_Name WITH  ROLLUP
  go


---=================================================================
---- make a cube query Classes and Admission tables---
--=================================================================
  SELECT C.Class_ID, C.Class_Name, COUNT(A.Student_ID) AS AdmissionCount
  FROM   smc.Classes C right JOIN smc.Admission A
  ON C.Class_Name = A.Class_Name
  GROUP BY C.Class_ID, C.Class_Name WITH CUBE
  go
