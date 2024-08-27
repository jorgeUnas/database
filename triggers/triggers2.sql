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

SELECT * FROM clients;

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
