SELECT * FROM test_scores WHERE name LIKE '%en';
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    3 | Ken  | 90      | 67   | 78      |
+------+------+---------+------+---------+
1 row in set (0.01 sec)

mysql> SELECT * FROM test_scores WHERE math LIKE _9;
ERROR 1054 (42S22): Unknown column '_9' in 'where clause'
mysql> SELECT * FROM test_scores WHERE math LIKE '_9';
+------+------+---------+------+---------+
| id   | name | english | math | science |
+------+------+---------+------+---------+
|    4 |      | 67      | 89   | 90      |
+------+------+---------+------+---------+
1 row in set (0.00 sec)

mysql> SELECT * FROM test_scores WHERE name LIKE '\%en';
Empty set (0.00 sec)

mysql> SELECT * FROM test_scores WHERE name LIKE BINALY 'ken';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ''ken'' at line 1
mysql> SELECT * FROM test_scores WHERE name LIKE BINARY 'KEN';
Empty set (0.00 sec)
