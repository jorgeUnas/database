SELECT *
FROM customers;

/*Updating the customers table to set the age to a different value*/

UPDATE customers
SET years_old = 42
WHERE last_name = 'Hall';

SELECT *
FROM customers;