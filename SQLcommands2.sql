mysql> use prac;
Database changed
mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.08 sec)

mysql> select * from demo;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   21 |
|  2 | ravi   |   21 |
|  3 | GAURAV |   25 |
|  4 | amit   |   22 |
|  5 | rohan  |   24 |
|  6 | neha   |   20 |
|  7 | priya  |   23 |
|  8 | sumit  |   26 |
|  9 | rahul  |   21 |
| 10 | anjali |   22 |
+----+--------+------+
10 rows in set (0.05 sec)

mysql> update demo set age = 29 where age = 21;
Query OK, 3 rows affected (0.02 sec)
Rows matched: 3  Changed: 3  Warnings: 0

mysql> select * from demo;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  3 | GAURAV |   25 |
|  4 | amit   |   22 |
|  5 | rohan  |   24 |
|  6 | neha   |   20 |
|  7 | priya  |   23 |
|  8 | sumit  |   26 |
|  9 | rahul  |   29 |
| 10 | anjali |   22 |
+----+--------+------+
10 rows in set (0.07 sec)


mysql> select * from demo where name like 'R%';
+----+-------+------+
| id | name  | age  |
+----+-------+------+
|  2 | ravi  |   29 |
|  5 | rohan |   24 |
|  9 | rahul |   29 |
+----+-------+------+
3 rows in set (0.02 sec)

mysql> select * from demo where name like '___i';
+----+------+------+
| id | name | age  |
+----+------+------+
|  2 | ravi |   29 |
+----+------+------+
1 row in set (0.00 sec)

mysql> select * from demo limit 5;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  3 | GAURAV |   25 |
|  4 | amit   |   22 |
|  5 | rohan  |   24 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select distinct age from demo;
+------+
| age  |
+------+
|   29 |
|   25 |
|   22 |
|   24 |
|   20 |
|   23 |
|   26 |
+------+
7 rows in set (0.01 sec)

mysql> select * from demo where age < 25;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  4 | amit   |   22 |
|  5 | rohan  |   24 |
|  6 | neha   |   20 |
|  7 | priya  |   23 |
| 10 | anjali |   22 |
+----+--------+------+
5 rows in set (0.01 sec)

mysql> select * from demo where age > 25;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  8 | sumit  |   26 |
|  9 | rahul  |   29 |
+----+--------+------+
4 rows in set (0.00 sec)

mysql> select * from demo where age >= 25;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  3 | GAURAV |   25 |
|  8 | sumit  |   26 |
|  9 | rahul  |   29 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select * from demo where age <= 25;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | GAURAV |   25 |
|  4 | amit   |   22 |
|  5 | rohan  |   24 |
|  6 | neha   |   20 |
|  7 | priya  |   23 |
| 10 | anjali |   22 |
+----+--------+------+
6 rows in set (0.00 sec)

mysql> select * from demo where age = 25 and id = 3;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | GAURAV |   25 |
+----+--------+------+
1 row in set (0.00 sec)

mysql> select * from demo where age = 25 or id = 3;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | GAURAV |   25 |
+----+--------+------+
1 row in set (0.00 sec)

mysql> select * from demo where age = 25 or id = 8;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | GAURAV |   25 |
|  8 | sumit  |   26 |
+----+--------+------+
2 rows in set (0.00 sec)

mysql> select * from demo where age between 22 and 27;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  3 | GAURAV |   25 |
|  4 | amit   |   22 |
|  5 | rohan  |   24 |
|  7 | priya  |   23 |
|  8 | sumit  |   26 |
| 10 | anjali |   22 |
+----+--------+------+
6 rows in set (0.01 sec)

mysql> select * from demo where age not between 22 and 27;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  6 | neha   |   20 |
|  9 | rahul  |   29 |
+----+--------+------+
4 rows in set (0.00 sec)

mysql> select * from demo where id in (2,4,6);
+----+------+------+
| id | name | age  |
+----+------+------+
|  2 | ravi |   29 |
|  4 | amit |   22 |
|  6 | neha |   20 |
+----+------+------+
3 rows in set (0.00 sec)

mysql> select * from demo where id not in (2,4,6);
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  3 | GAURAV |   25 |
|  5 | rohan  |   24 |
|  7 | priya  |   23 |
|  8 | sumit  |   26 |
|  9 | rahul  |   29 |
| 10 | anjali |   22 |
+----+--------+------+
7 rows in set (0.00 sec)

mysql> select * from demo where age is null;
Empty set (0.00 sec)

mysql> select * from demo where age is not null;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  3 | GAURAV |   25 |
|  4 | amit   |   22 |
|  5 | rohan  |   24 |
|  6 | neha   |   20 |
|  7 | priya  |   23 |
|  8 | sumit  |   26 |
|  9 | rahul  |   29 |
| 10 | anjali |   22 |
+----+--------+------+
10 rows in set (0.00 sec)

mysql>