-- SHOW DATABASESで全てのデータベースを参照することができる

--Input
SHOW DATABASES;
--Output
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
4 rows in set (0.24 sec)

-- LIKE節を用いてパターンマッチングを行うことができる

--Input
SHOW DATABASES LIKE '%schema';
--Output
+--------------------+
| Database (%schema) |
+--------------------+
| information_schema |
| performance_schema |
+--------------------+
2 rows in set (0.01 sec)

-- CREATE DATABASE （データベース名）でデータベースの作成を行うことができる

--Input
CREATE DATABASE sample_db;
--OutPut
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

-- DROP DATABASE （データベース名）でデータベースの削除を行うことができる
--Input
DROP DATABASE sample_db;
--OutPut
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
