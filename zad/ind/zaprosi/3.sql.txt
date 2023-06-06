CREATE TABLE sales AS SELECT * FROM read_csv_auto('./sales.csv');
copy (
SELECT Gender, Total, Payment
FROM sales
WHERE Payment LIKE 'C%'
LIMIT 10
) TO 'request_3.csv' (header, delimiter ',');
copy (
SELECT Gender, Total, Payment
FROM sales
WHERE Payment LIKE 'C%'
LIMIT 10
) TO 'request_3.json';