-- idカラムにNULLを含まないように設定したうえで，studentテーブルを作成
-- CREATE TABLE（テーブル名）（カラム名 データ型 NOT NULL)と書く
CREATE TABLE student (id INT NOT NULL, name VARCHAR(100));
-- 結果
/*
Query OK, 0 rows affected (0.11 sec)

+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| id    | int(11)      | NO   |     | NULL    |       |
| name  | varchar(100) | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+

※idカラムに値を設定しないでデータを登録すると，idカラムはデフォルト値を持たない旨のエラーが出てくる
INSERT INTO student (name) VALUES ('saki');
ERROR 1364 (HY000): Field 'id' doesn't have a default value

※NULLをidカラムの値に持つデータを追加しようとすると，NULLを含まないようにする設定によりはじかれる
INSERT student (id) VALUES (NULL);
ERROR 1048 (23000): Column 'id' cannot be null
*/

-- すでに存在するテーブルのカラムに対して，NULLを含まないように設定する
-- ALTER TABLE（テーブル名）MODIFY COLUMN（カラム名）（データ型）NOT NULLと書く
ALTER TABLE options MODIFY COLUMN name VARCHAR(100) NOT NULL;
-- 結果
/*
※optionsテーブルはすでに存在するものとする
<options>
+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | NO   |     | NULL    |       |
| opt   | int(11)      | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
2 rows in set (0.01 sec)
*/

-- カラムに設定した非NULL制約を解除
-- ALTER TABLE（テーブル名）MODIFY COLUMN（カラム名）（データ型）と書く
ALTER TABLE options MODIFY COLUMN name VARCHAR(100);
-- 結果
/*
Query OK, 0 rows affected (0.14 sec)
Records: 0  Duplicates: 0  Warnings: 0

+-------+--------------+------+-----+---------+-------+
| Field | Type         | Null | Key | Default | Extra |
+-------+--------------+------+-----+---------+-------+
| name  | varchar(100) | YES  |     | NULL    |       |
| opt   | int(11)      | YES  |     | NULL    |       |
+-------+--------------+------+-----+---------+-------+
*/
