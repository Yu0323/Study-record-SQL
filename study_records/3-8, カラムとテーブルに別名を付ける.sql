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

<gender>
+---------+--------+
| name    | gender |
+---------+--------+
| Yu      | man    |
| Ai      | woman  |
| Sato    | woman  |
| Ishida  | woman  |
| Miyoshi | woman  |
| Maeda   | man    |
| Yoshida | man    |
| Tanaka  | man    |
+---------+--------+
*/

-- SELECT（カラム名）AS（別名）で、カラム名に別名を設定して表示
SELECT id AS ID名 FROM test_scores;
-- 結果
/*
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
*/

-- 各計算結果に別名を設定して表示
SELECT MAX(math) AS 最高点, MIN(math) AS 最低点, AVG(math) AS 平均点 FROM test_scores;
-- 結果
/*
+--------+--------+--------+
| 最高点 | 最低点 | 平均点 |
+--------+--------+--------+
| 98     | 56     | 78.875 |
+--------+--------+--------+
1 row in set (0.00 sec)
*/

-- SELECT * FROM（テーブル名）AS（別名）またはSELECT * FROM（テーブル名）（別名）でテーブル名に別名を設定する
-- この事によってコマンドを書く手間が省ける場合がある，以下ではtest_scoresをt，genderをgと省略して記述している
SELECT * FROM test_scores AS t INNER JOIN gender AS g ON t.name = g.name;
-- 結果
/*
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
*/
