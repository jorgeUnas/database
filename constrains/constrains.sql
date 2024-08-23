/*Working tables, talks and speakers*/

SELECT * 
FROM talks
LIMIT 10;

SELECT *
FROM speakers
LIMIT 10;

/*Create an attendees table*/

CREATE TABLE attendees  (
    id integer,
    name varchar,
    total_tickets_reserved integer,
    standard_tickets_reserved integer,
    vip_tickets_reserved integer
);

/*Inserting a str where is an integer is expected*/

INSERT INTO attendees
VALUES (
  1,
  'John Smith',
  '2.5',
  1,
  1
);


/*Inserting the right datatypes in the attendees table*/

INSERT INTO attendees
VALUES (
  1,
  'John Smith',
  2,
  1,
  1
);