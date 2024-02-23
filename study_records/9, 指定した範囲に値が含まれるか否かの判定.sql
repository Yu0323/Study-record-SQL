/*
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
*/
-- BETWEEN句を用いた、特定の範囲に値が含まれるデータの取得
SELECT * FROM test_scores WHERE math BETWEEN 80 AND 90;
-- 結果
/*
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    2 | Ai   | 96      | 80   | 76      |
|    4 |      | 67      | 89   | 90      |
+------+------+---------+------+---------+
2 rows in set (0.00 sec)
*/

-- NOT句をBETWEENの前に付けると、特定の範囲に値が含まれないデータを取得する
SELECT * FROM test_scores WHERE math NOT BETWEEN 80 AND 90;
-- 結果
/*
+------+--------+---------+------+---------+
| id   | name   | english | math | science |
+------+--------+---------+------+---------+
|    1 | Yu     | 98      | 97   | 65      |
|    3 | Ken    | 90      | 67   | 78      |
|    5 | Ishida | 78      | 98   | NULL    |
+------+--------+---------+------+---------+
3 rows in set (0.00 sec)
*/
