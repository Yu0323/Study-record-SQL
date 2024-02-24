/*
<test_scores 拡張版>
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    1 | Yu      | 98      | 97   | 65      |
|    2 | Ai      | 96      | 80   | 76      |
|    3 | Ken     | 90      | 67   | 78      |
|    4 |         | 67      | 89   | 90      |
|    5 | Ishida  | 78      | 98   | NULL    |
|    6 | Miyoshi | 96      | 84   | 53      |
|    7 | Maeda   | 90      | 56   | 78      |
|    7 | Yoshida | 78      | 67   | 45      |
+------+---------+---------+------+---------+
※適当なデータを入力した
*/

-- englishカラムの値を用いてでデータをグループ化
SELECT english,COUNT(*) FROM test_scores GROUP BY english;
-- 結果
/*
+---------+----------+
| english | COUNT(*) |
+---------+----------+
| 67      |        1 |
| 78      |        2 |
| 90      |        2 |
| 96      |        2 |
| 98      |        1 |
+---------+----------+
5 rows in set (0.00 sec)
*/

-- englishカラムの値を用いてグループ化したデータに対する，HAVING句を用いた条件の指定
SELECT english,COUNT(*) FROM test_scores GROUP BY english HAVING english > 80;
-- 結果
/*
+---------+----------+
| english | COUNT(*) |
+---------+----------+
| 90      |        2 |
| 96      |        2 |
| 98      |        1 |
+---------+----------+
3 rows in set (0.01 sec)
*/
