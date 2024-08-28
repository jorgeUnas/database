/*Use the NOT NULL constrain to create the speakers table*/

CREATE TABLE speakers (
id integer NOT NULL,
email varchar NOT NULL,
name varchar NOT NULL,
organization varchar,
title varchar,
years_in_role integer
);