/* Lab 2: Database Schema: Consider a simple database with one tables: BankAccount BankAccount

 Table: ● Columns: account_id (Primary Key), account_holder_name, account_balance

 Task 1: Insert Data Write an SQL INSERT statement to insert data into the BankAccount table

. Task 2: Retrieving Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance of all account holders from the BankAccount table. 

Task 3: Filtering Data Write an SQL SELECT statement to retrieve the account_holder_name and account_balance where the account_balance is more than 30,000.

 Task 4: Updating Data Write an SQL UPDATE statement to change the account_balance of the account holder whose ID is 101. */

mysql> create database lab2;
Query OK, 1 row affected (0.07 sec)

mysql> use lab2;
Database changed
mysql> create table bankaccount(account_id int primary key, account_holder_name varchar(20), account_balance double);
Query OK, 0 rows affected (0.16 sec)

mysql> insert into bankaccount values (101, 'Pankaj', 5000), (102, 'Ravi', 10000), (103, 'Gaurav', 15000), (104, 'Neha', 5000), (105, 'Sneha', 20000), (106, 'Govind', 25000), (107, 'Lavlesh', 5000), (108, 'Vikas', 15000), (109, 'Gaurav', 30000), (110, 'Neha', 25000), (111, 'Sneha', 30000), (112, 'Govind', 35000);
Query OK, 12 rows affected (0.03 sec)
Records: 12  Duplicates: 0  Warnings: 0

mysql> select account_holder_name, account_balance from bankaccount;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Pankaj              |            5000 |
| Ravi                |           10000 |
| Gaurav              |           15000 |
| Neha                |            5000 |
| Sneha               |           20000 |
| Govind              |           25000 |
| Lavlesh             |            5000 |
| Vikas               |           15000 |
| Gaurav              |           30000 |
| Neha                |           25000 |
| Sneha               |           30000 |
| Govind              |           35000 |
+---------------------+-----------------+
12 rows in set (0.01 sec)

mysql> select account_holder_name, account_balance from bankaccount where account_balance > 30000;
+---------------------+-----------------+
| account_holder_name | account_balance |
+---------------------+-----------------+
| Govind              |           35000 |
+---------------------+-----------------+
1 row in set (0.00 sec)


mysql> update bankaccount set account_holder_name = 'Ajay' where account_id = 101;
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select account_holder_name from bankaccount where account_id = 101;
+---------------------+
| account_holder_name |
+---------------------+
| Ajay                |
+---------------------+
1 row in set (0.00 sec)

mysql>