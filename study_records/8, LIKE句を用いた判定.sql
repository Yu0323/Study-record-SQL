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
-- %（0文字以上）を用いて検索
SELECT * FROM test_scores WHERE name LIKE '%en';
-- 結果
/*
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
1 row in set (0.01 sec)
*/

-- _（1文字以上）を用いて検索
SELECT * FROM test_scores WHERE math LIKE '_9';
-- 結果
/*
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    4 |      | 67      | 89   | 90      |
+------+------+---------+------+---------+
1 row in set (0.00 sec)
*/

-- \を手前に付けたエスケープ処理
SELECT * FROM test_scores WHERE name LIKE '\%en';
-- 結果
/*
Empty set (0.00 sec)
*/

-- BINARY句による、大文字と小文字を含めた判定
SELECT * FROM test_scores WHERE name LIKE BINARY 'KEN';
-- 結果
/*
Empty set (0.00 sec)
*/
