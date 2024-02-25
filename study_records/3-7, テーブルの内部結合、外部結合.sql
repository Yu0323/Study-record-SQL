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

-- 基本形は SELECT（表示するカラム）FROM（テーブル１）（結合方法）JOIN（テーブル２）ON（テーブル１．カラム名）＝（テーブル２．カラム名）
-- 内部結合とは『値が同じもの』で結合する
-- nameカラムを対象として，test_scoresテーブルとgenderテーブルの内部結合を行う
SELECT * FROM test_scores INNER JOIN gender ON test_scores.name = gender.name;
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
7 rows in set (0.02 sec)
*/

-- 上で行った内部結合の結果でenglishカラムとmathカラムを表示する
SELECT english, math FROM test_scores INNER JOIN gender ON test_scores.name = gender.name;
-- 結果
/*
+---------+------+
| english | math |
+---------+------+
| 95      | 90   |
| 96      | 80   |
| 67      | 89   |
| 78      | 98   |
| 96      | 84   |
| 90      | 56   |
| 78      | 67   |
+---------+------+
7 rows in set (0.04 sec)
*/

-- 結合の対象となるカラム名が同じであれば USING句の後にカラム名を付けて結合を行うことが出来る
SELECT * FROM test_scores INNER JOIN gender USING(name);
-- 結果
/*
+---------+------+---------+------+---------+--------+
| name    | id   | english | math | science | gender |
+---------+------+---------+------+---------+--------+
| Yu      |    1 | 95      | 90   | 87      | man    |
| Ai      |    2 | 96      | 80   | 76      | woman  |
| Sato    |    4 | 67      | 89   | 90      | woman  |
| Ishida  |    5 | 78      | 98   | NULL    | woman  |
| Miyoshi |    6 | 96      | 84   | 53      | woman  |
| Maeda   |    7 | 90      | 56   | 78      | man    |
| Yoshida |    7 | 78      | 67   | 45      | man    |
+---------+------+---------+------+---------+--------+
7 rows in set (0.00 sec)
*/

-- 外部結合は『値が同じもの』と『右か左に指定したテーブルのデータ』を結合する
-- 外部結合には右外部結合（RIGHT OUTER JOIN）と左外部結合（LEFT OUTER JOIN）がある

-- nameカラムを対象として、右外部結合を行う（genderテーブルのデータが残される）
SELECT * FROM test_scores RIGHT OUTER JOIN gender USING(name);
-- 結果
/*
+---------+--------+------+---------+------+---------+
| name    | gender | id   | english | math | science |
+---------+--------+------+---------+------+---------+
| Yu      | man    |    1 | 95      | 90   | 87      |
| Ai      | woman  |    2 | 96      | 80   | 76      |
| Sato    | woman  |    4 | 67      | 89   | 90      |
| Ishida  | woman  |    5 | 78      | 98   | NULL    |
| Miyoshi | woman  |    6 | 96      | 84   | 53      |
| Maeda   | man    |    7 | 90      | 56   | 78      |
| Yoshida | man    |    7 | 78      | 67   | 45      |
| Tanaka  | man    | NULL | NULL    | NULL | NULL    |
+---------+--------+------+---------+------+---------+
8 rows in set (0.00 sec)
*/

-- nameカラムを対象として、左外部結合を行う（test_scoresテーブルのデータが残される）
SELECT * FROM test_scores LEFT OUTER JOIN gender USING(name);
-- 結果
/*
+---------+------+---------+------+---------+--------+
| name    | id   | english | math | science | gender |
+---------+------+---------+------+---------+--------+
| Yu      |    1 | 95      | 90   | 87      | man    |
| Ai      |    2 | 96      | 80   | 76      | woman  |
| Sato    |    4 | 67      | 89   | 90      | woman  |
| Ishida  |    5 | 78      | 98   | NULL    | woman  |
| Miyoshi |    6 | 96      | 84   | 53      | woman  |
| Maeda   |    7 | 90      | 56   | 78      | man    |
| Yoshida |    7 | 78      | 67   | 45      | man    |
| Ken     |    3 | 90      | 67   | 78      | NULL   |
+---------+------+---------+------+---------+--------+
8 rows in set (0.01 sec)
*/

/*
※補足
3つ以上のテーブルの結合を行う際は以下のようにJOIN句を続ける

SELECT * FROM table1 INNER JOIN table2 ON table1.A = table2.A INNER JOIN table3 ON table1.A = table3.A;
*/
