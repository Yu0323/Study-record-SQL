mysql> SELECT * FROM test_scores ORDER BY english;
+------+--------+---------+------+---------+
| id   | name   | english | math | science |
+------+--------+---------+------+---------+
|    4 |        | 67      | 89   | 90      |
|    5 | Ishida | 78      | 98   | NULL    |
|    3 | Ken    | 90      | 67   | 78      |
|    2 | Ai     | 96      | 80   | 76      |
|    1 | Yu     | 98      | 97   | 65      |
+------+--------+---------+------+---------+
5 rows in set (0.03 sec)

mysql> SELECT * FROM test_scores ORDER BY english DESC;
+------+--------+---------+------+---------+
| id   | name   | english | math | science |
+------+--------+---------+------+---------+
|    1 | Yu     | 98      | 97   | 65      |
|    2 | Ai     | 96      | 80   | 76      |
|    3 | Ken    | 90      | 67   | 78      |
|    5 | Ishida | 78      | 98   | NULL    |
|    4 |        | 67      | 89   | 90      |
+------+--------+---------+------+---------+
5 rows in set (0.00 sec)

mysql> INSERT INTO test_scores (id,name,english,math,science) VALUES (6,'Miyoshi',96,84,53);
Query OK, 1 row affected (0.01 sec)

mysql> SELECT * FROM test_scores ORDER BY english DESC, math;
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    1 | Yu      | 98      | 97   | 65      |
|    2 | Ai      | 96      | 80   | 76      |
|    6 | Miyoshi | 96      | 84   | 53      |
|    3 | Ken     | 90      | 67   | 78      |
|    5 | Ishida  | 78      | 98   | NULL    |
|    4 |         | 67      | 89   | 90      |
+------+---------+---------+------+---------+
6 rows in set (0.01 sec)

mysql> SELECT * FROM test_scores WHERE math BETWEEN 80 AND 90 ORDER BY english;
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    4 |         | 67      | 89   | 90      |
|    2 | Ai      | 96      | 80   | 76      |
|    6 | Miyoshi | 96      | 84   | 53      |
+------+---------+---------+------+---------+
3 rows in set (0.01 sec)

mysql> SELECT * FROM test_scores ORDER BY FIELD(math,80,67,98);
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    1 | Yu      | 98      | 97   | 65      |
|    4 |         | 67      | 89   | 90      |
|    6 | Miyoshi | 96      | 84   | 53      |
|    2 | Ai      | 96      | 80   | 76      |
|    3 | Ken     | 90      | 67   | 78      |
|    5 | Ishida  | 78      | 98   | NULL    |
+------+---------+---------+------+---------+
6 rows in set (0.01 sec)

mysql> SELECT * FROM test_scores ORDER BY math > 80 DESC;
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    1 | Yu      | 98      | 97   | 65      |
|    4 |         | 67      | 89   | 90      |
|    5 | Ishida  | 78      | 98   | NULL    |
|    6 | Miyoshi | 96      | 84   | 53      |
|    2 | Ai      | 96      | 80   | 76      |
|    3 | Ken     | 90      | 67   | 78      |
+------+---------+---------+------+---------+
6 rows in set (0.01 sec)

mysql> SELECT * FROM test_scores ORDER BY math >= 90;
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    2 | Ai      | 96      | 80   | 76      |
|    3 | Ken     | 90      | 67   | 78      |
|    4 |         | 67      | 89   | 90      |
|    6 | Miyoshi | 96      | 84   | 53      |
|    1 | Yu      | 98      | 97   | 65      |
|    5 | Ishida  | 78      | 98   | NULL    |
+------+---------+---------+------+---------+
6 rows in set (0.00 sec)
