/* Create Database */
create database library;
use library;

/* create Table 'Branch' */  
create table Branch(
Branch_no int primary key,
 Manager_Id  int,
Branch_address varchar(30), 
Contact_no int);
select *from Branch;

/* values insert */
 insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(1,1001,'Ernamkulam',965687423);
  insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(2,1002,'Chennai',985698623);
  insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(3,1014,'Panaji',961245873);
  insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(4,2056,'Bangalore',856498743);
  insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(5,121323,'Trissur',86065423);
  insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(6,32145,'Munnar',974562423);
  insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(7,10012,'Delhi',96385214);
   insert into Branch (Branch_no,Manager_Id,Branch_address,Contact_no)
 values(8,20012,'Mysore',812936569);
 
select *from Branch;

 /* create table Employee */
 create table Employee(  
 Emp_Id int PRIMARY KEY,
 Emp_name Varchar(50),
 Position Varchar(30),
Salary int,
foreign key(Emp_Id)  references Branch(Branch_no) on delete cascade);
drop table Employee;
insert into Employee(Emp_Id,Emp_name,Position,Salary)
 values(1,'Ram','Store Keeper',25000);
 insert into Employee(Emp_Id,Emp_name,Position,Salary)
 values(2,'Siji','Accountant',30000);
 insert into Employee(Emp_Id,Emp_name,Position,Salary)
 values(3,'Reena','HR',35000);
 insert into Employee(Emp_Id,Emp_name,Position,Salary)
 values(4,'Mohan','HR',50000);
 insert into Employee(Emp_Id,Emp_name,Position,Salary)
 values(5,'Arjun','Manager',55000);
  insert into Employee(Emp_Id,Emp_name,Position,Salary)
 values(6,'Silva','Supervisor',60000);
 select *from Employee;
 SET FOREIGN_KEY_CHECKS=1;

 select *from Employee;
 
 
 create table Books(
ISBN int PRIMARY KEY, 
Book_title varchar(35),
Category varchar(30), 
Rental_Price int,
Status varchar(10),
Author  varchar(30),
Publisher varchar(30));
select * from Books;
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(01,'The Alchemist','Fiction',50,'No','Paulo Coelho','HarperTorch');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(02,'The Kite Runner','Fiction',35,'Yes','Khaled Hosseini','Riverhead Books');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(03,'Dune','Science Fiction',25,'Yes',' Frank Herbert','Roger Zelazny');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(04,'Hyperion','Science Fiction',20,'NO','Dan Simmons','Hyperion Press');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(05,'Wings of Fire','Autobiography',35,'YES','APJ Abdul Kalam','Universities Press');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(06,'I Am Malala','Autobiography',30,'YES','Malala Yousafzai','Weidenfeld & Nicolson');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(07,'Normal People','Novel',20,'NO','Sally Rooney','Faber & Faber');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(08,'Outline','Novel',25,'YES','Rachel Cusk','Farrar');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(09,'Dear Life','Short Story',20,'NO',' Alice Munro','McClelland and Stewart');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(10,'Nine Stories','Short Story',30,'NO','J. D. Salinger','‎Little, Brown and Company');
 insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(11,'History of Modern India','History',25,'Yes','Bipin Chandra','SSC Books');
  insert into Books(ISBN,Book_title,Category,Rental_Price,Status,Author,Publisher)
 values(12,'Guns, Germs, and Steel','History',35,'NO','Jared Diamond','‎ Yuval Noah');
 
create table Customer (
Customer_Id int  PRIMARY KEY, 
Customer_name varchar(25), 
Customer_address varchar(30), 
Reg_date date);
 insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(1,'Zoya','Rose Villa p25','2021-08-29');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(2,'Nila','Highlite A15','2024-02-2');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(3,'Druv','Sarangi','2024-02-2');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(4,'Sarojini','Vihaar','2021-01-01');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(5,'Linta','Bethlahem','2024-03-3');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(6,'Anand','Thejus Nivas','2024-03-5');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(7,'Leela','Shobha PB2','2021-12-2');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(8,'Fellah','Al Rigga 12','2021-05-2');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(9,'Karan','Summer Villa','2024-04-5');
  insert into Customer(Customer_Id,Customer_name,Customer_address,Reg_date)
 values(10,'Anil','LandMark B12','2024-05-3');
 select * from Customer;
 
 create table IssueStatus(
 Issue_Id int  PRIMARY KEY,
 Issued_cust int,
Issued_book_name varchar(30),
Issue_date date,
Isbn_book int,
foreign key(Issued_cust)  references Customer(customer_id) on delete cascade,
foreign key(Isbn_book)  references Books(ISBN) on delete cascade);
 
 insert into IssueStatus values(101,15,'Dear Life','2022-01-01',1014);
 insert into IssueStatus values(102,12,'Wings of Fire','2023-02-01',1015);
 insert into IssueStatus values(103,7,'Dune','2021-12-20',1009);
 insert into IssueStatus values(104,10,'Outline','2023-01-15',1020);
 insert into IssueStatus values(105,8,'I Am Malala','2021-05-2',1025);
 insert into IssueStatus values(106,7,'The Kite Runner','2021-12-2',1101);
 insert into IssueStatus values(107,5,'Hyperion','2023-06-2',1101);
 select* from IssueStatus;
 
create table ReturnStatus(
Return_Id int PRIMARY KEY,
Return_cust int,
Return_book_name  varchar(30),
Return_date date, 
Isbn_book2 int,
foreign key (Isbn_book2) references Books(ISBN) on delete cascade );
  drop table ReturnStatus;
 insert into ReturnStatus values(01,20,'The Kite Runner','2023-04-15',1101);
 insert into ReturnStatus values(02,15,'Dear Life','2023-01-15',1014);
 insert into ReturnStatus values(03,9,'I Am Malala','2023-04-05',1025);
 insert into ReturnStatus values(04,10,'Outline','2023-01-30',1020);
 select * from ReturnStatus;
 
 
/*Queries*/

 -- 1. Retrieve the book title, category, and rental price of all available books. 
 SELECT Book_title, Category, Rental_Price  FROM books WHERE Status = 'Yes';
 
 -- 2. List the employee names and their respective salaries in descending order of salary. 
 select Emp_name , Salary from Employee order by Salary desc;
 
 -- 3. Retrieve the book titles and the corresponding customers who have issued those books. 
 select IssueStatus.Issued_book_name ,Customer.Customer_name from   IssueStatus inner join Customer
 on IssueStatus.Issued_cust = Customer.Customer_Id;
 
 
 -- 4. Display the total count of books in each category. 
 select Category, count(ISBN) as Total_Books from Books group by Category;

 -- 5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
 select Emp_name, Position from Employee where Salary > 50000;
 
 -- 6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
  select Customer_name from Customer where Reg_date < '2022-01-01' AND Customer_Id NOT IN
  (select Issued_cust from IssueStatus);
  
  -- 7. Display the branch numbers and the total count of employees in each branch. 
  alter table Employee add column branch_no int ;
  alter table Employee add FOREIGN KEY (branch_no)
REFERENCES Branch(Branch_no);
UPDATE Employee SET branch_no =110 WHERE Emp_Id =100;
UPDATE Employee SET branch_no =111 WHERE Emp_Id =101;
UPDATE Employee SET branch_no =112 WHERE Emp_Id =103;
UPDATE Employee SET branch_no =113 WHERE Emp_Id =104;
UPDATE Employee SET branch_no =114 WHERE Emp_Id =105;
UPDATE Employee SET branch_no =115 WHERE Emp_Id =106;
select * from Employee;
select Branch_no, count(Emp_Id) from Employee group by Branch_no;


-- 8. Display the names of customers who have issued books in the month of June 2023.

select Customer.Customer_name from Customer inner join IssueStatus on 
Customer.Customer_Id = Issuestatus.Issued_cust WHERE Issuestatus.Issue_date >= '2023-06-01' AND 
Issuestatus.Issue_date <= '2023-06-30';

-- 9. Retrieve book_title from book table containing history. 
select Book_title as 'History_books' from Books where Category = 'History';

-- 10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
 SELECT branch_no, COUNT(Emp_Id) Employees FROM employee GROUP BY branch_no HAVING COUNT(Emp_Id) > 5;
 
 
 -- 11. Retrieve the names of employees who manage branches and their respective branch addresses.
  select Employee.Emp_name , Branch.Branch_address from Employee inner join Branch on
  Employee.Emp_Id = Branch.Branch_no;
 
 -- 12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.
 select Book_title,Rental_Price from Books WHERE Rental_Price < 25;






  
  
