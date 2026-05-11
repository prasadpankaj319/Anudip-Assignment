mysql> use prac;
Database changed
mysql> show tables;
+----------------+
| Tables_in_prac |
+----------------+
| demo           |
+----------------+
1 row in set (0.01 sec)

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
10 rows in set (0.02 sec)

mysql> select sum(age) from demo;
+----------+
| sum(age) |
+----------+
|      249 |
+----------+
1 row in set (0.00 sec)

mysql> select count(age) from demo;
+------------+
| count(age) |
+------------+
|         10 |
+------------+
1 row in set (0.00 sec)

mysql> select min(age) from demo;
+----------+
| min(age) |
+----------+
|       20 |
+----------+
1 row in set (0.00 sec)

mysql> select max(age) from demo;
+----------+
| max(age) |
+----------+
|       29 |
+----------+
1 row in set (0.00 sec)

mysql> select avg(age) from demo;
+----------+
| avg(age) |
+----------+
|  24.9000 |
+----------+
1 row in set (0.00 sec)

mysql> select * from demo order by age;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  6 | neha   |   20 |
|  4 | amit   |   22 |
| 10 | anjali |   22 |
|  7 | priya  |   23 |
|  5 | rohan  |   24 |
|  3 | GAURAV |   25 |
|  8 | sumit  |   26 |
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  9 | rahul  |   29 |
+----+--------+------+
10 rows in set (0.00 sec)

mysql> select * from demo order by age DESC;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  9 | rahul  |   29 |
|  8 | sumit  |   26 |
|  3 | GAURAV |   25 |
|  5 | rohan  |   24 |
|  7 | priya  |   23 |
|  4 | amit   |   22 |
| 10 | anjali |   22 |
|  6 | neha   |   20 |
+----+--------+------+
10 rows in set (0.00 sec)

mysql> select * from demo order by age DESC limit 6;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  1 | pankaj |   29 |
|  2 | ravi   |   29 |
|  9 | rahul  |   29 |
|  8 | sumit  |   26 |
|  3 | GAURAV |   25 |
|  5 | rohan  |   24 |
+----+--------+------+
6 rows in set (0.00 sec)

mysql> select * from demo order by age limit 5;
+----+--------+------+
| id | name   | age  |
+----+--------+------+
|  6 | neha   |   20 |
|  4 | amit   |   22 |
| 10 | anjali |   22 |
|  7 | priya  |   23 |
|  5 | rohan  |   24 |
+----+--------+------+
5 rows in set (0.00 sec)

mysql> select name, count(*) as tot from demo group by name;
+--------+-----+
| name   | tot |
+--------+-----+
| pankaj |   1 |
| ravi   |   1 |
| GAURAV |   1 |
| amit   |   1 |
| rohan  |   1 |
| neha   |   1 |
| priya  |   1 |
| sumit  |   1 |
| rahul  |   1 |
| anjali |   1 |
+--------+-----+
10 rows in set (0.00 sec)

mysql> select name, sum(age) as tot from demo group by name;
+--------+------+
| name   | tot  |
+--------+------+
| pankaj |   29 |
| ravi   |   29 |
| GAURAV |   25 |
| amit   |   22 |
| rohan  |   24 |
| neha   |   20 |
| priya  |   23 |
| sumit  |   26 |
| rahul  |   29 |
| anjali |   22 |
+--------+------+
10 rows in set (0.00 sec)

mysql> INSERT INTO demo VALUES
    -> (11, 'vikas', 27),
    -> (12, 'sneha', 19),
    -> (13, 'akash', 24),
    -> (14, 'pooja', 22),
    -> (15, 'manish', 28),
    -> (16, 'komal', 21),
    -> (17, 'deepak', 25),
    -> (18, 'riya', 20),
    -> (19, 'karan', 23),
    -> (20, 'nisha', 26);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> INSERT INTO demo VALUES
    -> (21, 'pankaj', 22),
    -> (22, 'ravi', 24),
    -> (23, 'neha', 21),
    -> (24, 'rahul', 23),
    -> (25, 'pankaj', 25),
    -> (26, 'ravi', 20),
    -> (27, 'priya', 22),
    -> (28, 'neha', 26),
    -> (29, 'rahul', 21),
    -> (30, 'amit', 24);
Query OK, 10 rows affected (0.01 sec)
Records: 10  Duplicates: 0  Warnings: 0

mysql> select name, sum(age) as tot from demo group by name;
+--------+------+
| name   | tot  |
+--------+------+
| pankaj |   76 |
| ravi   |   73 |
| GAURAV |   25 |
| amit   |   46 |
| rohan  |   24 |
| neha   |   67 |
| priya  |   45 |
| sumit  |   26 |
| rahul  |   73 |
| anjali |   22 |
| vikas  |   27 |
| sneha  |   19 |
| akash  |   24 |
| pooja  |   22 |
| manish |   28 |
| komal  |   21 |
| deepak |   25 |
| riya   |   20 |
| karan  |   23 |
| nisha  |   26 |
+--------+------+
20 rows in set (0.00 sec)

mysql> select name, avg(age) as tot from demo group by name;
+--------+---------+
| name   | tot     |
+--------+---------+
| pankaj | 25.3333 |
| ravi   | 24.3333 |
| GAURAV | 25.0000 |
| amit   | 23.0000 |
| rohan  | 24.0000 |
| neha   | 22.3333 |
| priya  | 22.5000 |
| sumit  | 26.0000 |
| rahul  | 24.3333 |
| anjali | 22.0000 |
| vikas  | 27.0000 |
| sneha  | 19.0000 |
| akash  | 24.0000 |
| pooja  | 22.0000 |
| manish | 28.0000 |
| komal  | 21.0000 |
| deepak | 25.0000 |
| riya   | 20.0000 |
| karan  | 23.0000 |
| nisha  | 26.0000 |
+--------+---------+
20 rows in set (0.00 sec)

mysql> select name, count(age) as tot from demo group by name;
+--------+-----+
| name   | tot |
+--------+-----+
| pankaj |   3 |
| ravi   |   3 |
| GAURAV |   1 |
| amit   |   2 |
| rohan  |   1 |
| neha   |   3 |
| priya  |   2 |
| sumit  |   1 |
| rahul  |   3 |
| anjali |   1 |
| vikas  |   1 |
| sneha  |   1 |
| akash  |   1 |
| pooja  |   1 |
| manish |   1 |
| komal  |   1 |
| deepak |   1 |
| riya   |   1 |
| karan  |   1 |
| nisha  |   1 |
+--------+-----+
20 rows in set (0.00 sec)

mysql> select name, min(age) as tot from demo group by name;
+--------+------+
| name   | tot  |
+--------+------+
| pankaj |   22 |
| ravi   |   20 |
| GAURAV |   25 |
| amit   |   22 |
| rohan  |   24 |
| neha   |   20 |
| priya  |   22 |
| sumit  |   26 |
| rahul  |   21 |
| anjali |   22 |
| vikas  |   27 |
| sneha  |   19 |
| akash  |   24 |
| pooja  |   22 |
| manish |   28 |
| komal  |   21 |
| deepak |   25 |
| riya   |   20 |
| karan  |   23 |
| nisha  |   26 |
+--------+------+
20 rows in set (0.00 sec)

mysql> select name, max(age) as tot from demo group by name;
+--------+------+
| name   | tot  |
+--------+------+
| pankaj |   29 |
| ravi   |   29 |
| GAURAV |   25 |
| amit   |   24 |
| rohan  |   24 |
| neha   |   26 |
| priya  |   23 |
| sumit  |   26 |
| rahul  |   29 |
| anjali |   22 |
| vikas  |   27 |
| sneha  |   19 |
| akash  |   24 |
| pooja  |   22 |
| manish |   28 |
| komal  |   21 |
| deepak |   25 |
| riya   |   20 |
| karan  |   23 |
| nisha  |   26 |
+--------+------+
20 rows in set (0.00 sec)

mysql> select name, sum(age) as tot from demo group by name having sum(age)>26;
+--------+------+
| name   | tot  |
+--------+------+
| pankaj |   76 |
| ravi   |   73 |
| amit   |   46 |
| neha   |   67 |
| priya  |   45 |
| rahul  |   73 |
| vikas  |   27 |
| manish |   28 |
+--------+------+
8 rows in set (0.00 sec)

mysql> select name, count(age) as tot from demo group by name having count(age)>2;
+--------+-----+
| name   | tot |
+--------+-----+
| pankaj |   3 |
| ravi   |   3 |
| neha   |   3 |
| rahul  |   3 |
+--------+-----+
4 rows in set (0.00 sec)

mysql> select name, min(age) as tot from demo group by name having min(age)>23;
+--------+------+
| name   | tot  |
+--------+------+
| GAURAV |   25 |
| rohan  |   24 |
| sumit  |   26 |
| vikas  |   27 |
| akash  |   24 |
| manish |   28 |
| deepak |   25 |
| nisha  |   26 |
+--------+------+
8 rows in set (0.00 sec)

mysql> select name, max(age) as tot from demo group by name having max(age)>23;
+--------+------+
| name   | tot  |
+--------+------+
| pankaj |   29 |
| ravi   |   29 |
| GAURAV |   25 |
| amit   |   24 |
| rohan  |   24 |
| neha   |   26 |
| sumit  |   26 |
| rahul  |   29 |
| vikas  |   27 |
| akash  |   24 |
| manish |   28 |
| deepak |   25 |
| nisha  |   26 |
+--------+------+
13 rows in set (0.00 sec)

mysql> select name, avg(age) as tot from demo group by name having avg(age)>22;
+--------+---------+
| name   | tot     |
+--------+---------+
| pankaj | 25.3333 |
| ravi   | 24.3333 |
| GAURAV | 25.0000 |
| amit   | 23.0000 |
| rohan  | 24.0000 |
| neha   | 22.3333 |
| priya  | 22.5000 |
| sumit  | 26.0000 |
| rahul  | 24.3333 |
| vikas  | 27.0000 |
| akash  | 24.0000 |
| manish | 28.0000 |
| deepak | 25.0000 |
| karan  | 23.0000 |
| nisha  | 26.0000 |
+--------+---------+
15 rows in set (0.00 sec)

mysql>