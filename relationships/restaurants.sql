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
restaurant_id integer REFERENCES restaurant(id),
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
  
/*Adding a category table*/

CREATE TABLE category (
id char(2) PRIMARY KEY,
name varchar(20),
description varchar(200)
);

/*Validating the PK on category*/

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'category';
  
 
 
 /*Create a dish table and validate its PK*/
  
  
 CREATE TABLE dish (
id integer PRIMARY KEY,
name varchar(50),
description varchar(200),
hot_and_spicy boolean
);

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'dish';
  
/*Create a review table and validate its PK*/
CREATE TABLE review (
id integer PRIMARY KEY,
restaurant_id integer REFERENCES restaurant(id),
rating decimal,
description varchar(100),
date date
);

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'review';
  

  
/*Create a cross-reference table to show the many-to-many relation between category and dish tables*/

CREATE TABLE categories_dishes (
  category_id char(2) REFERENCES category(id),
  dish_id integer REFERENCES dish(id),
  money money,
  PRIMARY KEY (category_id, dish_id)
);

/*Validating the cross-reference table*/

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'categories_dishes';
  
  
