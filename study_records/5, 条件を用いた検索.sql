<test_scores>
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    2 | Ai   | 96      | 80   | 76      |
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+

-- 基本は ~ WHERE(カラム名を含む条件文)
-- WHERE句とANDやORを用いて条件を指定
mysql> SELECT * FROM test_scores WHERE name = 'Yu' OR name = 'Ken';
-- 結果
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
2 rows in set (0.01 sec)

-- 括弧を用いて優先条件を指定
mysql> SELECT * FROM test_scores WHERE (name = 'Yu' OR name = 'Ken') AND math = 97;
-- 結果
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
+------+------+---------+------+---------+
1 row in set (0.01 sec)

-- 比較演算子（>,<,>=,<=,<=>,!= 等）を用いて条件を指定
-- '<=>'はNULL対応の同値、'!='は同値でない
mysql> SELECT * FROM test_scores WHERE math > 70;
-- 結果　
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
|    2 | Ai   | 96      | 80   | 76      |
+------+------+---------+------+---------+
2 rows in set (0.01 sec)
  
-- WHERE（カラム名）IS NULLで、指定したカラムが空白であるデータを取り出す、IS NOT NULLなら空白でないデータを取り出す
mysql> SELECT * FROM test_scores WHERE math IS NULL;
-- 結果
Empty set (0.00 sec)

-- WHERE（カラム名）IN (数値, , ,)で、指定したカラムが()内の数値を含むデータを取り出す、NOT INなら含まないデータを取り出す
mysql> SELECT * FROM test_scores WHERE math IN (70,97);
-- 結果
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    1 | Yu   | 98      | 97   | 65      |
+------+------+---------+------+---------+
1 row in set (0.01 sec)

-- LIKE節を用いたパターンマッチングを行う、NOT LIKEなら当てはまらないものを探す
mysql> SELECT * FROM test_scores WHERE name LIKE '%en';
-- 結果
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
1 row in set (0.03 sec)

-- 値1 BETWEEN 値2で、指定したカラムが 値1以上値2以下 の数値を含むデータを取り出す
mysql> SELECT * FROM test_scores WHERE math BETWEEN 70 AND 90;
-- 結果
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    2 | Ai   | 96      | 80   | 76      |
+------+------+---------+------+---------+
1 row in set (0.04 sec)
