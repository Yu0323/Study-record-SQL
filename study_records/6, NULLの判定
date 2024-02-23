<test_scores 拡張版>
+------+--------+---------+------+---------+
| id   | name   | english | math | science |
+------+--------+---------+------+---------+
|    1 | Yu     | 98      | 97   | 65      |
|    2 | Ai     | 96      | 80   | 76      |
|    3 | Ken    | 90      | 67   | 78      |
|    4 |        | 67      | 89   | 90      |
|    5 | Ishida | 78      | 98   | NULL    |
+------+--------+---------+------+---------+

-- scienceカラムがNULLであるものを選択
mysql> SELECT * FROM test_scores WHERE science IS NULL;
-- 結果
+------+--------+---------+------+---------+
| id   | name   | english | math | science |
+------+--------+---------+------+---------+
|    5 | Ishida | 78      | 98   | NULL    |
+------+--------+---------+------+---------+
1 row in set (0.01 sec)

-- nameカラムがNULLであるものを選択
mysql> SELECT * FROM test_scores WHERE name IS NULL;
-- 結果
-- 空白文字' 'とNULLは区別されることに注意！
Empty set (0.00 sec)

-- scienceカラムがNULLでないものを選択
mysql> SELECT * FROM test_scores WHERE science IS NOT NULL;
-- 結果
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    2 | Ai   | 96      | 80   | 76      |
|    3 | Ken  | 90      | 67   | 78      |
|    4 |      | 67      | 89   | 90      |
+------+------+---------+------+---------+
4 rows in set (0.00 sec)
