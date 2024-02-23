mysql> SELECT * FROM test_scores WHERE math BETWEEN 80 AND 90;
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    2 | Ai   | 96      | 80   | 76      |
|    4 |      | 67      | 89   | 90      |
+------+------+---------+------+---------+
2 rows in set (0.00 sec)

mysql> SELECT * FROM test_scores WHERE math NOT BETWEEN 80 AND 90;
+------+--------+---------+------+---------+
| id   | name   | english | math | science |
+------+--------+---------+------+---------+
|    1 | Yu     | 98      | 97   | 65      |
|    3 | Ken    | 90      | 67   | 78      |
|    5 | Ishida | 78      | 98   | NULL    |
+------+--------+---------+------+---------+
3 rows in set (0.00 sec)
