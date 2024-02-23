mysql> SELECT * FROM test_scores LIMIT 2;
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    2 | Ai   | 96      | 80   | 76      |
+------+------+---------+------+---------+
2 rows in set (0.01 sec)

mysql> SELECT * FROM test_scores OFFSET 2 LIMIT 3;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '2 LIMIT 3' at line 1
mysql> SELECT * FROM test_scores LIMIT 3 OFFSET 2;
+------+--------+---------+------+---------+
| id   | name   | english | math | science |
+------+--------+---------+------+---------+
|    3 | Ken    | 90      | 67   | 78      |
|    4 |        | 67      | 89   | 90      |
|    5 | Ishida | 78      | 98   | NULL    |
+------+--------+---------+------+---------+
3 rows in set (0.00 sec)

mysql> SELECT * FROM test_scores ORDER BY science LIMIT 4;
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    5 | Ishida  | 78      | 98   | NULL    |
|    6 | Miyoshi | 96      | 84   | 53      |
|    1 | Yu      | 98      | 97   | 65      |
|    2 | Ai      | 96      | 80   | 76      |
+------+---------+---------+------+---------+
4 rows in set (0.01 sec)
