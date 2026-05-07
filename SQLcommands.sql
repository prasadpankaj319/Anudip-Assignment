mysql> create database prac;
Query OK, 1 row affected (0.07 sec)

mysql> use prac;
Database changed
mysql> create table demo(id int, name varchar(10), loc varchar(10));
Query OK, 0 rows affected (0.14 sec)

mysql> insert into demo values (1, 'pankaj', 'murbad'), (2, 'gaurav', 'kalyan'), (3, 'ravi', 'kalyan');
Query OK, 3 rows affected (0.06 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from demo;
+------+--------+--------+
| id   | name   | loc    |
+------+--------+--------+
|    1 | pankaj | murbad |
|    2 | gaurav | kalyan |
|    3 | ravi   | kalyan |
+------+--------+--------+
3 rows in set (0.00 sec)


mysql> delete from demo where id=3;
Query OK, 1 row affected (0.06 sec)

mysql> select * from demo;
+------+--------+--------+
| id   | name   | loc    |
+------+--------+--------+
|    1 | pankaj | murbad |
|    2 | gaurav | kalyan |
+------+--------+--------+
2 rows in set (0.00 sec)

mysql> delete from demo where loc="kalyan";
Query OK, 1 row affected (0.06 sec)

mysql> select * from demo;
+------+--------+--------+
| id   | name   | loc    |
+------+--------+--------+
|    1 | pankaj | murbad |
+------+--------+--------+
1 row in set (0.00 sec)

mysql> alter table demo drop column loc;
Query OK, 0 rows affected (0.10 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from demo;
+------+--------+
| id   | name   |
+------+--------+
|    1 | pankaj |
+------+--------+
1 row in set (0.00 sec)

mysql> insert into demo values (2, 'ravi'), (3, 'gaurav');
Query OK, 2 rows affected (0.06 sec)
Records: 2  Duplicates: 0  Warnings: 0

mysql> select * from demo;
+------+--------+
| id   | name   |
+------+--------+
|    1 | pankaj |
|    2 | ravi   |
|    3 | gaurav |
+------+--------+
3 rows in set (0.00 sec)


mysql> alter table demo add primary key(id);
Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   | PRI | NULL    |       |
| name  | varchar(10) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.02 sec)

mysql> alter table demo drop primary key;
Query OK, 3 rows affected (0.22 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> alter table demo add primary key(name);
Query OK, 0 rows affected (0.20 sec)
Records: 0  Duplicates: 0  Warnings: 0


mysql> alter table demo drop primary key;
Query OK, 3 rows affected (0.20 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> select * from demo;
+----+--------+
| id | name   |
+----+--------+
|  3 | gaurav |
|  1 | pankaj |
|  2 | ravi   |
+----+--------+
3 rows in set (0.00 sec)


mysql> truncate table demo;
Query OK, 0 rows affected (0.14 sec)

mysql> select * from demo;
Empty set (0.00 sec)

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)


mysql> alter table demo add column age int;
Query OK, 0 rows affected (0.18 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc demo;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | NO   |     | NULL    |       |
| name  | varchar(10) | NO   |     | NULL    |       |
| age   | int         | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.05 sec)

mysql>