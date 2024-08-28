/*Use the NOT NULL constrain to create the speakers table*/

CREATE TABLE speakers (
id integer NOT NULL,
email varchar NOT NULL,
name varchar,
organization varchar,
title varchar,
years_in_role integer
);

/*Making an insert that violate the non-null constrains*/

INSERT INTO speakers (id, email, organization, title, years_in_role)
VALUES (1, 'awilson@ABCcorp.com', 'ABC Corp.', 'CTO', 6);

/*Inserting the right register into the speakers table*/


INSERT INTO speakers (id, email, name, organization, title, years_in_role)
VALUES (1, 'awilson@ABCcorp.com', 'A. Wilson', 'ABC Corp.', 'CTO', 6);


/*Adding a non null constrain to the speakers table after created*/

ALTER TABLE speakers 
ALTER COLUMN name SET NOT NULL;