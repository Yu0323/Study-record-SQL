mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.24 sec)

mysql> SHOW DATABASES LIKE '%schema';
+--------------------+
| Database (%schema) |
+--------------------+
| information_schema |
| performance_schema |
+--------------------+
2 rows in set (0.01 sec)

mysql> CREATE DATABASE sample_db;
Query OK, 1 row affected (0.01 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sample_db          |
| sys                |
+--------------------+
5 rows in set (0.00 sec)

mysql> DROP DATABASE sample_db;
Query OK, 0 rows affected (0.09 sec)

mysql> SHOW DATABASES;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)

mysql> ^C
mysql> ^Z
Bye

C:\Program Files\MySQL\MySQL Server 5.7\bin>mysql --root -p
mysql: [ERROR] unknown option '--root'

C:\Program Files\MySQL\MySQL Server 5.7\bin>mysql -uroot -p
Enter password: ************
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.44-log MySQL Community Server (GPL)

Copyright (c) 2000, 2023, Oracle and/or its affiliates.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> CREATE DATABASE sample-db;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-db' at line 1
mysql> CREATE DATABASE sample_db;
Query OK, 1 row affected (0.01 sec)

mysql> USE sample_db;
Database changed
mysql> CREATE TABLE menus (id INT, name VARCHAR(100),english VARCHAR(100), math VARCHAR(100), science VARCHAR(100))
    -> CREATE TABLE menus (id INT, name VARCHAR(100),english VARCHAR(100), math VARCHAR(100), science VARCHAR(100));
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'CREATE TABLE menus (id INT, name VARCHAR(100),english VARCHAR(100), math VARCHAR' at line 2
mysql> CREATE TABLE test_scores (id INT, name VARCHAR(100),english VARCHAR(100), math VARCHAR(100), science VARCHAR(100));
Query OK, 0 rows affected (0.08 sec)

mysql> SHOW TABLES;
+---------------------+
| Tables_in_sample_db |
+---------------------+
| test_scores         |
+---------------------+
1 row in set (0.01 sec)

mysql> DESCRIBE test_scores
    -> ;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | YES  |     | NULL    |       |
| name    | varchar(100) | YES  |     | NULL    |       |
| english | varchar(100) | YES  |     | NULL    |       |
| math    | varchar(100) | YES  |     | NULL    |       |
| science | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)

mysql> INSERT INTO test_scores (id,name,english,math,science) VALUES (1,Yu,98,97,65);
ERROR 1054 (42S22): Unknown column 'Yu' in 'field list'
mysql> INSERT INTO test_scores (id,name,english,math,science) VALUES (1,'Yu',98,97,65);
Query OK, 1 row affected (0.02 sec)

mysql> DESCRIBE test_scores
    -> ;
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | YES  |     | NULL    |       |
| name    | varchar(100) | YES  |     | NULL    |       |
| english | varchar(100) | YES  |     | NULL    |       |
| math    | varchar(100) | YES  |     | NULL    |       |
| science | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

mysql> SELECT * FROM test_scores;
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
+------+------+---------+------+---------+
1 row in set (0.01 sec)

mysql> INSERT INTO menus VALUES (2,'Ai',85,90,76);
ERROR 1146 (42S02): Table 'sample_db.menus' doesn't exist
mysql> INSERT INTO test_scores VALUES (2,'Ai',96,80,76);
Query OK, 1 row affected (0.01 sec)

mysql> INSERT INTO test_scores SET id = 3, name = 'Ken', english =  90, math = 67, science = 78;
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM test_scores;
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    2 | Ai   | 96      | 80   | 76      |
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
3 rows in set (0.00 sec)

mysql> SELECT english FROM test_scores;
+---------+
| english |
+---------+
| 98      |
| 96      |
| 90      |
+---------+
3 rows in set (0.00 sec)

mysql> SELECT math, science FROM test_scores;
+------+---------+
| math | science |
+------+---------+
| 97   | 65      |
| 80   | 76      |
| 67   | 78      |
+------+---------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM test_scores\G
*************************** 1. row ***************************
     id: 1
   name: Yu
english: 98
   math: 97
science: 65
*************************** 2. row ***************************
     id: 2
   name: Ai
english: 96
   math: 80
science: 76
*************************** 3. row ***************************
     id: 3
   name: Ken
english: 90
   math: 67
science: 78
3 rows in set (0.02 sec)
