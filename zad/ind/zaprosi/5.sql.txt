CREATE TABLE sales AS SELECT * FROM read_csv_auto('./sales.csv');
copy (
WITH in_total AS (
SELECT ID, Product_line, (Quantity * Unit_price) AS spent
FROM sales
)
SELECT ID, Product_line, spent
FROM in_total
LIMIT 5
) TO 'request_5.json';
copy (
WITH in_total AS (
SELECT ID, Product_line, (Quantity * Unit_price) AS spent
FROM sales
)
SELECT ID, Product_line, spent
FROM in_total
LIMIT 5
) TO 'request_5.csv';