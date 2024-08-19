/*Creating the restaurant table*/

CREATE TABLE restaurant (
id integer PRIMARY KEY,
name varchar(20),
description varchar(100),
rating decimal,
telephone char(10),
hours varchar(100)
);


/*Creating an address table*/


CREATE TABLE address (
id integer PRIMARY KEY,
street_number varchar(10),
street_name varchar(20),
city varchar(20),
state varchar(15),
google_map_link varchar(50)
);


/*Validate that the PK exist*/

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'restaurant';

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'address';