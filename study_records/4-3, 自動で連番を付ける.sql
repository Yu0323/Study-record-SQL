-- テーブルを作成するときにAUTO_INCREMENTを用いて連番を付ける
-- CREATE TABLE（テーブル名）（カラム名 データ型 AUTO_INCREMENT）と書く
-- 指定するカラムはPRIMARY KEYである必要がある
CREATE TABLE class (id INT AUTO_INCREMENT, name VARCHAR(100),PRIMARY KEY(id));
-- 結果
/*
Query OK, 0 rows affected (0.06 sec)

↓ nameカラムだけ指定して，データを3つ登録
+----+---------+
| id | name    |
+----+---------+
|  1 | Akira   |
|  2 | Oyamada |
|  3 | Kijima  |
+----+---------+
*/

-- 連番のステップ幅を変更する
-- ALTER TABLE（カラム名）AUTO_INCREMENT =（ステップ）と書く
ALTER TABLE class AUTO_INCREMENT = 10;
/*
Query OK, 0 rows affected (0.03 sec)
Records: 0  Duplicates: 0  Warnings: 0

↓ nameカラムだけ指定して，データを3つ登録
+----+---------+
| id | name    |
+----+---------+
|  1 | Akira   |
|  2 | Oyamada |
|  3 | Kijima  |
| 10 | koyama  |
| 11 | yamada  |
| 12 | shimada |
+----+---------+
*/
