------========================================================================================
-----------School Management System (FOR Admission) create by Md.Nurur Rahaman Shojeb------
---==========================================================================================

IF DB_ID('School_Management_System') IS NOT NULL 
DROP DATABASE School_Management_System
go

Use master
	declare @data_path nvarchar (256)
	Set @data_path =(select SUBSTRING(physical_name,1, CHARINDEX(N'master.mdf',lower(physical_name))-1)
	from master.sys.master_files
	Where database_id=1 and file_id=1)

Execute (
	 'create database School_Management_System
	  on primary (Name=School_Managemen_DDL_Data, Filename='''+@data_path+'School_Managemen_DDL_data.mdf'', size=20MB,maxsize=unlimited,filegrowth=3MB)
	  log on (Name=School_Managemen_DDLlog, Filename='''+@data_path+'School_Managemen_DDL_log.ldf'', size=10MB,maxsize=100MB,filegrowth=1MB)'
	 )
go
---=================================================================
      --Database modify----
--=================================================================
--Alter database MyiInventoryDB Modify file(Name='School_Managemen_DDL_Data', Size=26MB,Maxsize=100MB,Filegrowth=2%)
--Alter database MyiInventoryDB Modify file(Name='School_Managemen_DDLlog', Size=10MB,Maxsize=50MB,Filegrowth=1%)
--go


--=================================================================
---=====Drop Database---=====
--=================================================================
--drop database School_Management_System
--go

sp_helpdb School_Management_System
go
--=================================================================
--------------Create Schema-----
--=================================================================
create schema smc
go
--=================================================================
------------Create Table Admission ---------
--=================================================================
use School_Management_System
go

create schema smc
Create Table smc.Admission
(
	Student_ID int Primary Key identity (10101,1),
	Student_Name varchar(30) not null,
	Student_DOB    Datetime not null,
	Student_Gender varchar(15)not null,
	Student_Father_Name varchar(30)not null,
	Student_Mother_Name varchar(30)not null,
	Student_Address varchar(50)not null,
	Student_Phone_Number int unique not null,
	Photo VARBINARY(MAX) null,
	Class_Name varchar(30)not null,
	Section_Name  varchar(30) null,
	Department_Name  varchar(30) null,
	Admission_Date Datetime,
)
go

--=================================================================
----------------Create Table Teachers -----------------
--=================================================================
use School_Management_System
CREATE TABLE smc.Teachers
(
    Teacher_ID int PRIMARY KEY IDENTITY(20201, 2),
    Teacher_Name varchar(30)not null,
    Teacher_Designation nvarchar(30)not null,
    Teacher_Department nvarchar(30)not null,
    Teacher_DOB datetime ,
    Teacher_Gender varchar(15) not null,
    Teacher_Address varchar(50) not null,
    Teacher_Phone_Number int UNIQUE,
    Teacher_Email nvarchar(20) not null
)
go 


--=================================================================
----------------------Alter cloumn drop--------------------
--=================================================================

ALTER TABLE smc.Teachers
DROP COLUMN Teacher_Gender 


--=================================================================
-----------------------Alter cloumn add--------------------
--=================================================================

ALTER TABLE School_Management.Teachers add Teacher_Gender varchar(15);
go

--=================================================================
-----------create Store procdure insert teacher table-----------
--=================================================================

CREATE PROCEDURE smc.Sp_InsertTeacher
(   @Teacher_Name varchar(30),
    @Teacher_Designation nvarchar(30),
    @Teacher_Department nvarchar(30),
    @Teacher_DOB datetime,
    @Teacher_Gender varchar(15),
    @Teacher_Address varchar(50),
    @Teacher_Phone_Number int,
	@Teacher_Email nvarchar(20)
)
AS
BEGIN
    INSERT INTO smc.Teachers
    (Teacher_Name, Teacher_Designation, Teacher_Department, Teacher_DOB, Teacher_Gender, Teacher_Address, Teacher_Phone_Number, Teacher_Email)
    VALUES
    (@Teacher_Name, @Teacher_Designation, @Teacher_Department, @Teacher_DOB, @Teacher_Gender, @Teacher_Address, @Teacher_Phone_Number, @Teacher_Email);
END
go

--=================================================================
-- Example execution of the stored procedure
--=================================================================

EXEC smc.Sp_InsertTeacher  'Jaynal', 'English Teacher', 'Arts','1985-08-15','Female', '456 Rag', 1234567890,'jane.doe@example.com';
go


Select * From smc.Teachers
go


--=================================================================
------------Create Table Classes ---------
--=================================================================
use School_Management_System
CREATE TABLE smc.Classes
(
    Class_ID int PRIMARY KEY IDENTITY(601, 100),
    Class_Name varchar(30),
    Set_Vacancy tinyint CHECK (Set_Vacancy=50), 
    Vacancy_Available int CHECK (Vacancy_Available >= 0),
)
go


--=================================================================
------------Create Table Section ---------
--=================================================================
use School_Management_System
Create Table smc.Section
(
	Section_ID int Primary Key identity(605,5),
	Section_Name  varchar(30),
	Class_Name varchar(30)
)
go


--=================================================================
------------Create Table Department ---------
--=================================================================
use School_Management_System
Create Table smc.Department
(
	Department_ID int Primary Key identity(150,1),
	Department_Name varchar(30),
	Class_Name varchar(30),
)
go




--=================================================================
------------Create Table Subjects ---------
--=================================================================
use School_Management_System
Create Table smc.Subjects
(
	Subject_ID int Primary Key identity(101,5),
	Subject_Name varchar(30),
	Class_Name varchar(30),
)
go
--=================================================================
------------Create Table Class_Schedule ---------
--=================================================================
use School_Management_System
CREATE TABLE smc.Class_Schedule
(
    Schedule_ID INT PRIMARY KEY IDENTITY(1001, 5),
    Schedule_Time TIME,
    Schedule_Duration VARCHAR(15),
    Class_ID INT FOREIGN KEY REFERENCES smc.Classes(Class_ID),
    Section_ID INT FOREIGN KEY REFERENCES smc.Section(Section_ID),
    Department_ID INT FOREIGN KEY REFERENCES smc.Department(Department_ID),
    Subject_ID INT FOREIGN KEY REFERENCES smc.Subjects(Subject_ID),
    Teacher_ID INT FOREIGN KEY REFERENCES smc.Teachers(Teacher_ID)
)
go


--=================================================================
------------Create Table Attendance ---------
--=================================================================
use School_Management_System
CREATE TABLE smc.Attendance
(
    Attendance_ID int PRIMARY KEY IDENTITY(901, 1),
    Attendance_Date date,
    Attendance_Status varchar(15) CHECK  (Attendance_Status IN ('Present' , 'Absent')),
    Student_ID int FOREIGN KEY REFERENCES smc.Admission(Student_ID)
)
go


--=================================================================
------------Create Table Fee ---------
--=================================================================
use School_Management_System
Create table smc.Fee
(
	Fee_ID int primary key identity(804,4),
	Student_ID int Foreign Key references smc.Admission(Student_ID),
	Payment_Amount Money,
	Due_Amount Money,
	Total_Amount Money
)
go

--=================================================================
    -------------Create Trigger fro Caculate----------------
--=================================================================
CREATE TRIGGER UpdateTotalAmount
ON smc.Fee
AFTER INSERT
AS
BEGIN
    UPDATE Fee
    SET Total_Amount = i.Payment_Amount + i.Due_Amount
    FROM smc.Fee AS f JOIN inserted AS i
    ON f.Fee_ID = i.Fee_ID;
END
go

--=================================================================
-- -- Create a function to calculate the Due_Amount---
--=================================================================

--CREATE FUNCTION dbo.CalculatDue_Amount
--(
--    @TotalAmount MONEY,
--    @PaymentAmount MONEY
  
--)
--RETURNS MONEY
--AS
--BEGIN
--    DECLARE @DueAmount MONEY
--    SET @DueAmount = (@TotalAmount - @PaymentAmount) 
--    RETURN @DueAmount
--END
--go
-------this function has to be a scalar function
--=================================================================
---- Create a scalar function to calculate the total fee
--=================================================================
CREATE FUNCTION fu_CalculateTotalFee
(
    @StudentID INT
)
RETURNS MONEY
AS
BEGIN
    DECLARE @TotalFee MONEY;

    SELECT @TotalFee = Payment_Amount + Due_Amount
    FROM smc.Fee
    WHERE Student_ID = @StudentID;

    RETURN @TotalFee;
END;
go
--=================================================================
------------Create Table Exam ---------
--=================================================================
use School_Management_System
Create Table smc.Exam
(
	Exam_ID int primary key identity(505,1),
	Exam_Type nvarchar(10),
	Exam_Start_Date datetime ,
	Exam_End_Date datetime ,
	Student_ID int Foreign Key references smc.Admission(Student_ID),
	Class_ID int Foreign Key references smc.Classes(Class_ID),
	Section_ID int Foreign Key references smc.Section(Section_ID),
	Subject_ID int Foreign Key references smc.Subjects(Subject_ID),
	Department_ID int Foreign Key references smc.Department(Department_ID)
)
go

--=================================================================
------------Create Table Result ---------
--=================================================================
use School_Management_System
Create Table smc.Result
(
	Result_ID int primary key identity(701,1),
	Marks int,
	Result_Published_Date date,
    Result_Status varchar(15) CHECK  (Result_Status IN ('Pass' , 'Fail')),
	Exam_ID int Foreign Key references smc.Exam(Exam_ID),
	Student_ID int Foreign Key references smc.Admission(Student_ID),
	Subject_ID int Foreign Key references smc.Subjects(Subject_ID),
	Class_ID int Foreign Key references smc.Classes(Class_ID),
	Department_ID int Foreign Key references smc.Department(Department_ID)
)
go


--=================================================================
------------Create Table Registration ---------
--=================================================================
use School_Management_System
Create table smc.Registration
(
	Registration_Id int primary key identity,
	Registration_Number as ('Reg' + right('-7890' + cast ( Registration_Id as varchar(15)),10 )),
	Student_ID int Foreign Key references smc.Admission(Student_ID),
	Class_ID int Foreign Key references smc.Classes(Class_ID),
	Section_ID int Foreign Key references smc.Section(Section_ID),
	Subject_ID int Foreign Key references smc.Subjects(Subject_ID),
	Department_ID int Foreign Key references smc.Department(Department_ID),
	Exam_ID int Foreign Key references smc.Exam(Exam_ID),
	Result_ID int Foreign Key references smc.Result(Result_ID)
)
go



--=================================================================
-----Need to create another table to show the trigger result------
--=================================================================
create table Student_Audit
(
	Student_Audit_id int primary key identity,
	Student_Id int  ,
	Student_Name varchar (30),
	Student_Phone_Number smallint,
	Action_name Varchar(25),
	Action_time datetime
)
go
--=================================================================
----------------Trigger fro insert-------------------
--=================================================================

Create trigger Tr_AfterinsertStudent on smc.Admission
For insert 
As
	declare @student_Id int,@student_Name varchar (30),@student_phone_number smallint,@action_name Varchar(25),@action_time datetime
	Select @student_Id=i.Student_id from inserted i
	Select @student_Name=i.Student_Name from inserted i
	Select @student_phone_number=i.Student_Phone_Number from inserted i
	Set @action_name='Insert Record--After insert Trigger Fired'

Insert Student_Audit values ( @student_Id ,@student_Name  ,@student_phone_number ,@action_name ,getdate())
Print 'After insert Trigger Fired'
go

Insert smc.Admission values('Ayaan Islam','2002-11-15', 'Male','Murad Khan','Moni Akter','5213 ctg','52348619',null, 'Class-9','B','Arts','2022-02-5')
go




