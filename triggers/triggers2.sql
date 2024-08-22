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


/*Create a trigger to update high spenders*/

CREATE TRIGGER update_trigger_high 
BEFORE UPDATE ON clients
FOR EACH ROW
WHEN (NEW.total_spent >= 1000)
EXECUTE PROCEDURE set_high_spender();


/*Create a trigger to update lo spenders*/

CREATE TRIGGER update_trigger_low
BEFORE UPDATE ON clients
FOR EACH ROW
WHEN (NEW.total_spent < 1000)
EXECUTE PROCEDURE set_low_spender();


SELECT * FROM clients ORDER BY client_id;

/*Make the updates to use the tiggers*/

UPDATE clients
SET total_spent  = 5000
WHERE last_name = 'Campbell';

UPDATE clients
SET total_spent  = 100
WHERE last_name = 'Lewis';

/*check the table again to see the tiggers in action*/

SELECT * FROM clients ORDER BY client_id;

/*Update the orders table*/

  UPDATE orders 
  SET quantity = 5
  WHERE order_id = 1234;