-- INSERT INTO（テーブル名）（カラム名,,,）VALUES（要素,,,）でテーブルにデータを追加する
INSERT INTO test_scores (id,name,english,math,science) VALUES (1,'Yu',98,97,65);
Query OK, 1 row affected (0.02 sec)
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
