
-- Database yaratish
CREATE DATABASE "<database name>";

-- Databasega ulanish
\c "<database name>"

-- Database o'chirish
DROP DATABASE "<database name>";

-- Database borligini tekshirib o'chirish
DROP DATABASE IF EXISTS "<database name>";

-- Databaselarni ko'rish
\l --- list of tatabases  

-- Database nomini o'zgartirish
ALTER DATABASE "<database name>" RENAME TO "<new database name>";


------------------------------------------------------

-- Tablelarni ko'rish
/dt 

-- Table yaratish
CREATE TABLE "<table name>"(
  column_name + data_type + additional,
  column_name + data_type + additional,
  column_name + data_type + additional
);

-- Tablelarni ko'rish
\d "<table name>"

-- Table o'chirish
DROP TABLE "<table name>";

-- Tableni ko'rish
SELECT * FROM "<table name>";

-- Table nomini o'zgartirish
ALTER TABLE "<table name>" RENAME TO "<new table name>";

-- Table column qo'shish
ALTER TABLE "<table name>" ADD COLUMN column_name data_type additional; --- not null qo'shmaslik kerak

-- Table column o'chirish
ALTER TABLE "<table name>" DROP COLUMN column_name;

---------------------------------------------------------------------

-- Tablega ma'lumot qo'shish
INSERT INTO "<table name>" (1_column, 2_column, 3_column) VALUES ('1_data', '2_data', '3_data'), ('1_data', '2_data', '3_data');

-- Ma'lumot o'zgartirish
UPDATE "<table name>" SET 1_column_name = 'new_data', 2_column_name = 'new_data' where column_name = 'old_date'