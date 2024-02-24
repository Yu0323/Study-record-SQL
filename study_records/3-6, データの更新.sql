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
-- UPDATE（テーブル名）SET（カラム名＝要素）でテーブルの中のカラムの値を更新
UPDATE test_scores SET name = 'Sato' WHERE id =4;
-- 結果
/*
Query OK, 1 row affected (0.03 sec)
Rows matched: 1  Changed: 1  Warnings: 0
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    1 | Yu      | 98      | 97   | 65      |
|    2 | Ai      | 96      | 80   | 76      |
|    3 | Ken     | 90      | 67   | 78      |
|    4 | Sato    | 67      | 89   | 90      |
|    5 | Ishida  | 78      | 98   | NULL    |
|    6 | Miyoshi | 96      | 84   | 53      |
|    7 | Maeda   | 90      | 56   | 78      |
|    7 | Yoshida | 78      | 67   | 45      |
+------+---------+---------+------+---------+
*/

-- SET句の値に複数指定することで複数のデータを更新
UPDATE test_scores SET english = 95, math = 88, science = 87 WHERE id = 1;
-- 結果
/*
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    1 | Yu      | 95      | 88   | 87      |
|    2 | Ai      | 96      | 80   | 76      |
|    3 | Ken     | 90      | 67   | 78      |
|    4 | Sato    | 67      | 89   | 90      |
|    5 | Ishida  | 78      | 98   | NULL    |
|    6 | Miyoshi | 96      | 84   | 53      |
|    7 | Maeda   | 90      | 56   | 78      |
|    7 | Yoshida | 78      | 67   | 45      |
+------+---------+---------+------+---------+
*/

-- math = science + 3のようにすると、mathカラムの値を既存のscienceカラムの値に紐づけて更新することが出来る
UPDATE test_scores SET math = science + 3 WHERE id = 1;
-- 結果
/*
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0
+------+---------+---------+------+---------+
| id   | name    | english | math | science |
+------+---------+---------+------+---------+
|    1 | Yu      | 95      | 90   | 87      |
|    2 | Ai      | 96      | 80   | 76      |
|    3 | Ken     | 90      | 67   | 78      |
|    4 | Sato    | 67      | 89   | 90      |
|    5 | Ishida  | 78      | 98   | NULL    |
|    6 | Miyoshi | 96      | 84   | 53      |
|    7 | Maeda   | 90      | 56   | 78      |
|    7 | Yoshida | 78      | 67   | 45      |
+------+---------+---------+------+---------+
*/
