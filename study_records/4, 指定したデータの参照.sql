-- SELECT（カラム名）FROM（テーブル名）で指定したカラムのデータを取り出す
mysql> SELECT english FROM test_scores;
-- 結果
+---------+
| english |
+---------+
| 98      |
| 96      |
| 90      |
+---------+
3 rows in set (0.00 sec)

-- SELECT（カラム名, , , ）FROM（テーブル名）で指定した複数のカラムのデータを取り出す
mysql> SELECT math, science FROM test_scores;
-- 結果
+------+---------+
| math | science |
+------+---------+
| 97   | 65      |
| 80   | 76      |
| 67   | 78      |
+------+---------+
3 rows in set (0.00 sec)

-- 末尾を;から\Gに変更すると縦に表示される
mysql> SELECT * FROM test_scores\G
-- 結果
*************************** 1. row ***************************
     id: 1
   name: Yu
english: 98
   math: 97
science: 65
*************************** 2. row ***************************
     id: 2
   name: Ai
english: 96
   math: 80
science: 76
*************************** 3. row ***************************
     id: 3
   name: Ken
english: 90
   math: 67
science: 78
3 rows in set (0.02 sec)
