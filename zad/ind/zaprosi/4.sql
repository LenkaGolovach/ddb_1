CREATE TABLE sales AS SELECT * FROM read_csv_auto('./sales.csv');
copy (
SELECT Date, Time, Product_line
FROM sales
WHERE Date LIKE '1/21%'
) TO 'request_4.csv' (header, delimiter ',');
copy (
SELECT Date, Time, Product_line
FROM sales
WHERE Date LIKE '1/21%'
) TO 'request_5.json';