CREATE TABLE sales AS SELECT * FROM read_csv_auto('./sales.csv');
copy (
SELECT Product_line AS product, COUNT(*) AS count_product
FROM sales
GROUP BY product
ORDER BY count_product DESC
LIMIT 10
) TO 'request_2.csv' (header, delimiter ',');
copy (
SELECT Product_line AS product, COUNT(*) AS count_product
FROM sales
GROUP BY product
ORDER BY count_product DESC
LIMIT 10
) TO 'request_2.json';