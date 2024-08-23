SELECT *
FROM customers;

/*Updating the customers table to set the age to a different value*/

UPDATE customers
SET years_old = 42
WHERE last_name = 'Hall';

SELECT *
FROM customers;


/*Creating a trigger in the customer table*/

CREATE TRIGGER insert_trigger 
    BEFORE INSERT ON customers 

    
/*Insert a new row in customers and check the trigger*/

INSERT INTO customers (first_name, last_name)
VALUES ('John', 'Doe');

SELECT * FROM customers;


/*Creating an AFTER trigger*/

CREATE TRIGGER after_trigger 
    AFTER INSERT ON customers 
    FOR EACH ROW
    EXECUTE PROCEDURE log_customers_change();
    
/*Activating the trigger using an UPDATE*/

UPDATE customers
SET years_old = years_old + 10
WHERE customer_id = 1;

/*Checking the changes after the UPDATE*/

SELECT * 
FROM customers
ORDER BY customer_id;

SELECT * 
FROM customers_log;