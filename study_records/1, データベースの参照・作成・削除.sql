-- SHOW DATABASESで全てのデータベースを参照
SHOW DATABASES;
-- 結果
/*
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.24 sec)
*/

-- LIKE節を用いてパターンマッチングを行う
SHOW DATABASES LIKE '%schema';
-- 結果
/*
+--------------------+
| Database (%schema) |
+--------------------+
| information_schema |
| performance_schema |
+--------------------+
2 rows in set (0.01 sec)
*/

-- CREATE DATABASE （データベース名）でデータベースの作成を行う
mysql> CREATE DATABASE sample_db;
-- 結果
/*
Query OK, 1 row affected (0.01 sec)
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sample_db          |
| sys                |
+--------------------+
5 rows in set (0.00 sec)
*/

-- DROP DATABASE （データベース名）でデータベースの削除を行う
mysql> DROP DATABASE sample_db;
-- 結果
/*
Query OK, 0 rows affected (0.09 sec)
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.00 sec)
*/
