/*Use the NOT NULL constrain to create the speakers table*/

CREATE TABLE speakers (
id integer NOT NULL,
email varchar NOT NULL,
name varchar NOT NULL,
organization varchar,
title varchar,
years_in_role integer
);

/*Making an insert that violate the non-null constrains*/

INSERT INTO speakers (id, email, organization, title, years_in_role)
VALUES (1, 'awilson@ABCcorp.com', 'ABC Corp.', 'CTO', 6);