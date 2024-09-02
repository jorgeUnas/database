SELECT *
FROM customers;

SELECT *
FROM pg_Indexes
WHERE tablename = 'customers';

EXPLAIN ANALYZE SELECT * FROM customers WHERE first_name = 'David';

EXPLAIN ANALYZE SELECT * FROM customers WHERE last_name = 'Jones';