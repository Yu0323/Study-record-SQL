-- INSERT INTO（テーブル名）（カラム名, , ,）VALUES（要素, , ,）でテーブルにデータを追加する
INSERT INTO test_scores (id,name,english,math,science) VALUES (1,'Yu',98,97,65);
-- 結果
/*
Query OK, 1 row affected (0.02 sec)
※適当なデータを入力した
*/

-- INSERT INTO（テーブル名）VALUES（要素, , ,）でテーブルにデータを追加する
INSERT INTO test_scores VALUES (2,'Ai',96,80,76);
-- 結果
/*
Query OK, 1 row affected (0.01 sec)
※適当なデータを入力した
*/

-- INSERT INTO（テーブル名）SET カラム名 = 要素, , , でテーブルにデータを追加する
INSERT INTO test_scores SET id = 3, name = 'Ken', english =  90, math = 67, science = 78;
-- 結果
/*
Query OK, 1 row affected (0.01 sec)
※適当なデータを入力した

+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    2 | Ai   | 96      | 80   | 76      |
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
3 rows in set (0.00 sec)
*/
