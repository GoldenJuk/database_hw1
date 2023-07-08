CREATE DATABASE IF NOT EXISTS hw_1;
USE hw_1;
DROP TABLE IF EXISTS phone;

-- 1 Создаем таблицу с мобильными телефонами
CREATE TABLE IF NOT EXISTS phone
(
	id INT PRIMARY KEY AUTO_INCREMENT,
    ProductName VARCHAR(10),
    Manufacturer  VARCHAR(10),
    ProductCount INT,
    Price INT
);

-- Заполним БД данными
INSERT phone(ProductName, Manufacturer, ProductCount, Price)
VALUES
	('iPhoneX', 'Apple', '3', '76000'),
    ('iPhone8', 'Apple', '2', '51000'),
    ('GalaxyS9', 'Samsung', '2', '56000'),
    ('GalaxyS8', 'Samsung', '1', '41000'),
    ('P20Pro', 'Huawei', '5', '36000');

-- 2 Выводим название, производителя и цену для товаров, количество которых превышает 2
SELECT ProductName, Manufacturer, ProductCount, Price
FROM phone
WHERE ProductCount > "2";

-- 3 Выводим весь ассортимент товаров марки “Samsung”
SELECT ProductName, Manufacturer, Price
FROM phone
WHERE Manufacturer = "Samsung";

-- 4. Выводим информацию о телефонах, где суммарный чек больше 100 000 и меньше 145 000
SELECT ProductName, Manufacturer, ProductCount, Price
FROM phone
WHERE (ProductCount * Price) > 100000 AND (ProductCount * Price) < 145000;

-- 4.1. Товары, в которых есть упоминание "Iphone"
SELECT ProductName, Manufacturer, ProductCount, Price 
FROM phone
WHERE ProductName LIKE '%Iphone%';

-- 4.2. Товары, в которых есть упоминание "Galaxy"
SELECT ProductName, Manufacturer, ProductCount, Price 
FROM phone
WHERE ProductName LIKE '%Galaxy%';

-- 4.3. Товары, в которых есть ЦИФРЫ (REGEXP - регулярки, либо RLIKE)
SELECT ProductName, Manufacturer, ProductCount, Price 
FROM phone
WHERE ProductName REGEXP '[0-9]';

-- 4.4. Товары, в которых есть ЦИФРА "8"
SELECT ProductName, Manufacturer, ProductCount, Price
FROM phone
WHERE ProductName LIKE '%8%';