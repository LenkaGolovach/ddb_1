CREATE TABLE sales AS SELECT * FROM read_csv_auto('./sales.csv');
copy (
SELECT City, Product_line, Branch
FROM sales
WHERE Gender = 'Female'
LIMIT 15
) TO 'request_1.csv' (header, delimiter ',');
copy (
SELECT City, Product_line, Branch
FROM sales
WHERE Gender = 'Female'
LIMIT 15
) TO 'request_1.json';