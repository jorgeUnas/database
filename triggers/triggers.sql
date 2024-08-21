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
    FOR EACH ROW
    EXECUTE PROCEDURE insert_function();
    
/*Insert a new row in customers and check the trigger*/

INSERT INTO customers (first_name, last_name)
VALUES ('John', 'Doe');

SELECT * FROM customers;