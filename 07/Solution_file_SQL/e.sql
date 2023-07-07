-- создаем таблицу для примера
CREATE TABLE products (
 id SERIAL PRIMARY KEY,
 name VARCHAR(100)
);
-- вставляем данные
INSERT INTO products (name) VALUES ('Product 1'), ('Product 2');
-- Открытие транзакций
BEGIN;
BEGIN;
-- Обновление в первой транзакции
UPDATE products SET name = 'Updated Product 1' WHERE id = 1;
-- Попытка обновления во второй транзакции
UPDATE products SET name = 'Updated Product 1' WHERE id = 1;