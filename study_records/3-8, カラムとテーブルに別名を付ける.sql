mysql> SELECT id AS ID名 FROM test_scores;
+------+
| ID名 |
+------+
|    1 |
|    2 |
|    3 |
|    4 |
|    5 |
|    6 |
|    7 |
|    7 |
+------+
8 rows in set (0.01 sec)

mysql> SELECT math AS 数学, MAX(math) AS 最高点, MIN(math) AS 最低点, AVG(math) AS 平均点 FROM test_scores;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'sample_db.test_scores.math'; this is incompatible with sql_mode=only_full_group_by
mysql> SELECT math AS 数学, MAX(math) AS 最高点, MIN(math) AS 最低点, AVG(math) AS 平均点 FROM test_scores GROUP BY math;
+------+--------+--------+--------+
| 数学 | 最高点 | 最低点 | 平均点 |
+------+--------+--------+--------+
| 56   | 56     | 56     |     56 |
| 67   | 67     | 67     |     67 |
| 80   | 80     | 80     |     80 |
| 84   | 84     | 84     |     84 |
| 89   | 89     | 89     |     89 |
| 90   | 90     | 90     |     90 |
| 98   | 98     | 98     |     98 |
+------+--------+--------+--------+
7 rows in set (0.03 sec)

mysql> SELECT MAX(math) AS 最高点, MIN(math) AS 最低点, AVG(math) AS 平均点 FROM test_scores;
+--------+--------+--------+
| 最高点 | 最低点 | 平均点 |
+--------+--------+--------+
| 98     | 56     | 78.875 |
+--------+--------+--------+
1 row in set (0.00 sec)

mysql> SELECT * FROM test_scores AS t INNER JOIN gender AS g ON t.name = gender.name;
ERROR 1054 (42S22): Unknown column 'gender.name' in 'on clause'
mysql> SELECT * FROM test_scores AS t INNER JOIN gender AS g ON t.name = g.name;
+------+---------+---------+------+---------+---------+--------+
| id   | name    | english | math | science | name    | gender |
+------+---------+---------+------+---------+---------+--------+
|    1 | Yu      | 95      | 90   | 87      | Yu      | man    |
|    2 | Ai      | 96      | 80   | 76      | Ai      | woman  |
|    4 | Sato    | 67      | 89   | 90      | Sato    | woman  |
|    5 | Ishida  | 78      | 98   | NULL    | Ishida  | woman  |
|    6 | Miyoshi | 96      | 84   | 53      | Miyoshi | woman  |
|    7 | Maeda   | 90      | 56   | 78      | Maeda   | man    |
|    7 | Yoshida | 78      | 67   | 45      | Yoshida | man    |
+------+---------+---------+------+---------+---------+--------+
7 rows in set (0.01 sec)
