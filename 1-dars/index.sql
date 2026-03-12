CREATE DATABASE "car";
\c car
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS "yengil_mashina";


CREATE TABLE "yengil_mashina"(
  id uuid primary key default gen_random_uuid(),
  brand varchar(50) not null,
  name varchar(50) not null,
  motor varchar(50) not null,
  gearbook varchar(50) not null,
  gallon_per_km int not null
);

INSERT INTO "yengil_mashina" (brand, name, motor, gearbook, gallon_per_km) VALUES ('BMW', 'XN_9 4x4','3.0 turbo', 'avtomat karobka', 17),
('Chevrolet', 'nexia', '1.6', 'mexanik karobka', 9), ('Lada', 'Largus','2.0', 'avtomat karobka', 12);

DROP TABLE IF EXISTS "cars";
ALTER TABLE "yengil_mashina" RENAME TO "cars";
ALTER TABLE "cars" ADD COLUMN max_speed int;
INSERT INTO "cars" (brand,name, motor, gearbook, gallon_per_km, max_speed) VALUES ('wolkswagen', 'das auto', '1.5', 'mexanik karobka', 7, 220);
SELECT * FROM "cars";
ALTER TABLE "cars" DROP COLUMN gearbook;

-- GET ALL
SELECT * FROM "cars";
-- GET ONE
SELECT * FROM "cars" WHERE brand = 'Chevrolet';
-- ADD ONE
INSERT INTO "cars" (brand,name, motor, gallon_per_km, max_speed) VALUES ('Jetour', 'JETOUR 70', '2.5', 16, 250);
-- UPDATE ONE
UPDATE  "cars" SET max_speed = 260 WHERE name = 'JETOUR 70';
-- DELETE ONE
DELETE FROM "cars" WHERE brand = 'BMW';

------------------------------------------------------------------------------

DROP TABLE IF EXISTS "yuk_mashina";

CREATE TABLE "yuk_mashina"(
  id uuid primary key default gen_random_uuid(),
  brand varchar(50) not null,
  name varchar(50) not null,
  max_distance int not null,
  capacity int not null,
  motor varchar(50),
  gearbook varchar(50),
  gallon_per_km int not null
);

INSERT INTO "yuk_mashina"(brand, name, max_distance, capacity, gallon_per_km, motor, gearbook) VALUES ('Volvo', 'vandam', 900, 10, 35),
('ISUZU', 'gazzel', 600, 7, 20, '5.0', 'mexanik karobka'), ('Mercedes', 'man', 900, 10, 35, '8.5');

ALTER TABLE "yuk_mashina" ADD COLUMN height int;
INSERT INTO "yuk_mashina"(brand, name, max_distance, capacity, gallon_per_km, gearbook, height) VALUES 
('Lada', 'large us', 700, 6, 20, 'avtomat karobka', 4);
ALTER TABLE "yuk_mashina" DROP COLUMN gearbook;

-- GET ALL
SELECT * FROM "yuk_mashina";
-- GET ONE
SELECT * FROM "yuk_mashina" WHERE name = 'vandam';
-- ADD ONE
INSERT INTO "yuk_mashina"(brand, name, max_distance, capacity, gallon_per_km, height) VALUES 
('Man', 'hooman', 800, 5, 18, 4);
-- UPDATE ONE
UPDATE "yuk_mashina" SET name = 'Man 300' WHERE brand = 'Man';
-- DELETE ONE
DELETE FROM "yuk_mashina" WHERE name = 'gazzel';




---------------------------------------------------------------------------------------------------------------------------
                                          --------FRUIT----------
---------------------------------------------------------------------------------------------------------------------------




CREATE DATABASE "fruit";
\c fruit
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS "mahalliy_mevalar";

CREATE TABLE "mahalliy_mevalar"(
  id uuid primary key default gen_random_uuid(),
  name varchar(50) not null,
  taste varchar(50) not null,
  price int not null
);

INSERT INTO "mahalliy_mevalar"(name, taste, price) VALUES('Olma', 'shirin', 12000),
('Behi', 'nordon', 13000), ('Shaftoli', 'shirin', 16000);
ALTER TABLE "mahalliy_mevalar" RENAME TO "bog_mevalari";
-- GET ALL
SELECT * FROM "bog_mevalari";
-- GET ONE
SELECT * FROM "bog_mevalari" WHERE name = 'Olma';
-- ADD ONE
INSERT INTO "bog_mevalari"(name, taste, price) VALUES('Nok', 'shirin', 18000);
-- UPDATE ONE
UPDATE  "bog_mevalari" SET price = 15000 WHERE name = 'Nok';
-- DELETE ONE
DELETE FROM "bog_mevalari" WHERE name = 'Shaftoli';

------------------------------------------------------------------------------

DROP TABLE IF EXISTS "import_mevalar";

CREATE TABLE "import_mevalar"(
  id uuid primary key default gen_random_uuid(),
  name varchar(50) not null,
  taste varchar(50) not null,
  price int not null,
  import_from varchar(50) not null
);

INSERT INTO "import_mevalar" (name, taste, price, import_from) VALUES
('Banana', 'shirin', 22000, 'Ecuador'),
('Apelsin', 'nordon-shirin', 18000, 'Turkiya'),
('Kivi', 'nordon', 25000, 'Yangi Zelandiya');

SELECT * FROM "import_mevalar";

ALTER TABLE "import_mevalar" ADD COLUMN color VARCHAR(20);

INSERT INTO "import_mevalar" (name, taste, price, import_from, color) VALUES 
('Ananas', 'shirin', 32000, 'Tailand', 'brown');
ALTER TABLE "import_mevalar" DROP COLUMN import_from;

-- GET ALL
SELECT * FROM "import_mevalar";
-- GET ONE
SELECT * FROM "import_mevalar" WHERE name = 'Ananas';
-- ADD ONE
INSERT INTO "import_mevalar"(name, taste, price, color) VALUES('Mango', 'shirin-nordon', 60000, 'sariq-qizil');
-- UPDATE ONE
UPDATE  "import_mevalar" SET price = 15000, taste='nordon' WHERE name = 'Kivi';
-- DELETE ONE
DELETE FROM "import_mevalar" WHERE name = 'Banana';




---------------------------------------------------------------------------------------------------------------------------
                                          --------ANIMAL----------
---------------------------------------------------------------------------------------------------------------------------




CREATE DATABASE "animal";
\c animal
CREATE EXTENSION IF NOT EXISTS pgcrypto;

DROP TABLE IF EXISTS "xonaki_hayvonlar";

CREATE TABLE "xonaki_hayvonlar"(
  id uuid primary key default gen_random_uuid(),
  name varchar(50) not null,
  breed varchar(50) not null,
  age numeric not null
);

INSERT INTO "xonaki_hayvonlar"(name, breed, age) VALUES
('mushuk', 'svinks', 2),
('it', 'labrador', 5),
('quyon', 'Angora', 1.5);

ALTER TABLE "xonaki_hayvonlar" RENAME TO "pets";

-- GET ALL
SELECT * FROM "pets";
-- GET ONE
SELECT * FROM "pets" WHERE name = 'mushuk';
-- ADD ONE
INSERT INTO "pets"(name, breed, age) VALUES ('tovuq', 'britan', 4);
-- UPDATE ONE
UPDATE  "pets" SET age = 7 WHERE name = 'it';
-- DELETE ONE
DELETE FROM "pets" WHERE breed = 'svinks';

------------------------------------------------------------------------------

DROP TABLE IF EXISTS "yovvoyi_hayvonlar";

CREATE TABLE "yovvoyi_hayvonlar"(
  id uuid primary key default gen_random_uuid(),
  name varchar(50) not null,
  type varchar(50) not null,
  age int not null,
  is_dangerous boolean not null
);

INSERT INTO "yovvoyi_hayvonlar" (name, type, age, is_dangerous) VALUES
('Sher', 'sut emizuvchi', 8, true),
('Kiyik', 'sut emizuvchi', 5, false),
('Ayiq', 'sut emizuvchi', 10, true);

SELECT * FROM "yovvoyi_hayvonlar";

ALTER TABLE "yovvoyi_hayvonlar" ADD COLUMN country VARCHAR(20);

INSERT INTO "yovvoyi_hayvonlar" (name, type, age, is_dangerous, country) VALUES ('Kengaroo', 'sut emizuvchi', 8, true, 'Avstraliya');

ALTER TABLE "yovvoyi_hayvonlar" DROP COLUMN is_dangerous;

-- GET ALL
SELECT * FROM "yovvoyi_hayvonlar";
-- GET ONE
SELECT * FROM "yovvoyi_hayvonlar" WHERE name = 'Kiyik';
-- ADD ONE
INSERT INTO "yovvoyi_hayvonlar" (name, type, age, country) VALUES ('Mongoose', 'sut emizuvchi', 10, 'Afrika');
-- UPDATE ONE
UPDATE  "yovvoyi_hayvonlar" SET name = 'Kengru' WHERE name = 'Kengaroo';
-- DELETE ONE
DELETE FROM "yovvoyi_hayvonlar" WHERE name = 'Ayiq';