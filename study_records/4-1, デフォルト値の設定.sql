-- nameとoptカラムを持ち，optにデフォルト値100が設定されているoptionsテーブルを作成
-- CREATE TABLE（テーブル名）（カラム名 データ型 DEFAULT デフォルト値）と書く
CREATE TABLE options (name VARCHAR(100),opt INT DEFAULT 100);
-- 結果
/*
Query OK, 0 rows affected (0.07 sec)
+---------------------+
| Tables_in_sample_db |
+---------------------+
| gender              |
| options             |
| test_scores         |
+---------------------+
*/

-- optionsテーブルに，nameに'Ken'を持つデータを登録する
mysql> INSERT INTO options (name) VALUES ('Ken');
/*
Query OK, 1 row affected (0.01 sec)
+------+------+
| name | opt  |
+------+------+
| Ken  |  100 |
+------+------+
*/

-- テーブルのデフォルト値の確認
DESC options;
-- 結果
/*
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| opt   | int(11)      | YES  |     | 100     |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.06 sec)
*/

-- デフォルト値を変更する
-- ALTER TABLE（テーブル名）ALTER COLUMN（カラム名）SET DEFAULT（設定するデフォルト値）と書く
ALTER TABLE options ALTER COLUMN opt SET DEFAULT 200;
-- 結果
/*
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| opt   | int(11)      | YES  |     | 200     |       |
+-------+--------------+------+-----+---------+-------+
*/

-- デフォルト値の設定を削除する
-- ALTER TABLE（テーブル名）ALTER（カラム名）DROP DEFAULTと書く
ALTER TABLE options ALTER opt DROP DEFAULT;
-- 結果
/*
Query OK, 0 rows affected (0.01 sec)
Records: 0  Duplicates: 0  Warnings: 0

+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| opt   | int(11)      | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
*/
