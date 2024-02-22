-- INSERT INTO（テーブル名）（カラム名, , ,）VALUES（要素, , ,）でテーブルにデータを追加する
mysql> INSERT INTO test_scores (id,name,english,math,science) VALUES (1,'Yu',98,97,65);
-- 結果
Query OK, 1 row affected (0.02 sec)
+---------+--------------+------+-----+---------+-------+
| Field   | Type         | Null | Key | Default | Extra |
+---------+--------------+------+-----+---------+-------+
| id      | int(11)      | YES  |     | NULL    |       |
| name    | varchar(100) | YES  |     | NULL    |       |
| english | varchar(100) | YES  |     | NULL    |       |
| math    | varchar(100) | YES  |     | NULL    |       |
| science | varchar(100) | YES  |     | NULL    |       |
+---------+--------------+------+-----+---------+-------+
5 rows in set (0.01 sec)

-- INSERT INTO（テーブル名）VALUES（要素, , ,）でテーブルにデータを追加する
mysql> INSERT INTO test_scores VALUES (2,'Ai',96,80,76);
-- 結果
Query OK, 1 row affected (0.01 sec)

-- INSERT INTO（テーブル名）SET カラム名 = 要素, , , でテーブルにデータを追加する
mysql> INSERT INTO test_scores SET id = 3, name = 'Ken', english =  90, math = 67, science = 78;
-- 結果
Query OK, 1 row affected (0.01 sec)
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    2 | Ai   | 96      | 80   | 76      |
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
3 rows in set (0.00 sec)
