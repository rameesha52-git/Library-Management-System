# Library-Management-System
The library management system being developed for this project makes it possible to run a library effectively. It offers features for keeping track of books, clients, staff, books being issued, and returns. Using SQL, the system keeps an extensive database of books together with information about their availability, rental price, and other pertinent aspects. It also makes it possible to handle patrons and staff members of the library efficiently.


# Database
create database named library

# Tables in Database
##### 1. Branch : Maintain information about library branches 
##### 2. Employee :Manage library staffs 
##### 3. Books : Track Book details such as book_title,category,Author,publisher
##### 4. Customer : Maintain the records of customers
##### 5. IssueStatus : Track issuance of books by customers
##### 6. ReturnStatus : Track timely return of books by customers

## Queries
SQL queries to extract valuable insights from the library's data.
1. Retrieve the book title, category, and rental price of all available books. 
2. List the employee names and their respective salaries in descending order of salary. 
3. Retrieve the book titles and the corresponding customers who have issued those books. 
4. Display the total count of books in each category. 
5. Retrieve the employee names and their positions for the employees whose salaries are above Rs.50,000. 
6. List the customer names who registered before 2022-01-01 and have not issued any books yet. 
7. Display the branch numbers and the total count of employees in each branch. 
8. Display the names of customers who have issued books in the month of June 2023.
9. Retrieve book_title from book table containing history. 
10.Retrieve the branch numbers along with the count of employees for branches having more than 5 employees
11. Retrieve the names of employees who manage branches and their respective branch addresses.
12.  Display the names of customers who have issued books with a rental price higher than Rs. 25.
