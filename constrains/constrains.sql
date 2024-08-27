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


