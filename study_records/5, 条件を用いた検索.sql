-- WHERE句とAND,ORを用いて条件を指定
mysql> SELECT * FROM test_scores WHERE name = 'Yu' OR name = 'Ken';
-- 結果
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
2 rows in set (0.01 sec)
