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
*/
-- COUNT MAX MIN SUM AVG関数は使い方が同じなので、MAX関数だけ用いる
-- englishカラムの最大値を取り出す
SELECT MAX(english) FROM test_scores;
-- 結果
/*
+--------------+
| MAX(english) |
+--------------+
| 98           |
+--------------+
1 row in set (0.02 sec)
*/

-- 他のカラムの値に条件を設定して、条件を満たす範囲でのenglishカラムの最大値を取り出す
SELECT MAX(english) FROM test_scores WHERE math <90;
-- 結果
/*
+--------------+
| MAX(english) |
+--------------+
| 96           |
+--------------+
1 row in set (0.00 sec)
*/

-- englishカラムの値でグループ化したデータに対して、それぞれのenglishの値に対してmathカラムの最大値を取り出す
SELECT english,MAX(math) FROM test_scores GROUP BY english;
-- 結果
/*
+---------+-----------+
| english | MAX(math) |
+---------+-----------+
| 67      | 89        |
| 78      | 98        |
| 90      | 67        |
| 96      | 84        |
| 98      | 97        |
+---------+-----------+
5 rows in set (0.01 sec)
*/
