-- USE（データベース名）で操作対象のデータベースを指定
USE sample_db;
-- 結果
/*
Database changed
*/

-- CREATE TABLE （テーブル名）（カラム名 データ型, , ,）でテーブルを作成
CREATE TABLE test_scores (id INT, name VARCHAR(100),english VARCHAR(100), math VARCHAR(100), science VARCHAR(100));
-- 結果
/*
Query OK, 0 rows affected (0.08 sec)
*/

-- SHOW TABLESでテーブル一覧を参照
SHOW TABLES;
-- 結果
/*
+---------------------+
| Tables_in_sample_db |
+---------------------+
| test_scores         |
+---------------------+
1 row in set (0.01 sec)
*/

-- DESCRIBE（テーブル名）でテーブルの構造を参照
DESCRIBE test_scores;
-- 結果
/*
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | YES  |     | NULL    |       |
| name    | varchar(100) | YES  |     | NULL    |       |
| english | varchar(100) | YES  |     | NULL    |       |
| math    | varchar(100) | YES  |     | NULL    |       |
| science | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
5 rows in set (0.02 sec)
*/

-- DROP（テーブル名）でテーブルを削除
DROP test_scores;
-- 結果
/*
+---------------------+
| Tables_in_sample_db |
+---------------------+
0 row in set (0.01 sec)
*/
