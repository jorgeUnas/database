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


/*Setting a placeholder for the null values of the organization column*/

UPDATE speakers
SET organization = 'Unaffiliated'
WHERE organization IS NULL;

/*Setting a non null constrain in the organization column*/

ALTER TABLE speakers 
ALTER COLUMN organization SET NOT NULL;


/*Adding a check constrain to the speakers table*/

ALTER TABLE speakers
ADD CHECK (years_in_role < 100);

/*Adding a check constrain to the speakers table to define a range*/
ALTER TABLE speakers
ADD CHECK (years_in_role < 100 AND years_in_role > 0);

/*Altering a table to add constrains*/

ALTER TABLE speakers
ADD UNIQUE (email);

/*Making UNIQUE the combination of 2 columns*/

CREATE TABLE registrations (
    id integer NOT NULL,
    attendee_id integer NOT NULL,
    session_timeslot timestamp NOT NULL,
    talk_id  integer NOT NULL,
    UNIQUE (session_timeslot, attendee_id)
);


/*Adding a PK to the speakers table*/

ALTER TABLE speakers
ADD PRIMARY KEY (id);

/*Writte alteration into the speakers table that violates the UNIQUE and not NULL constrains*/

INSERT INTO speakers (email, name, organization, title, years_in_role)
VALUES ('j.saunders@ABCTech.com', 'Joan Saunders', 'ABC Tech.', 'Sr. Data Scientist', 6);

INSERT INTO speakers (id, email, name, organization, title, years_in_role)
VALUES ('1','j.saunders@ABCTech.com', 'Joan Saunders', 'ABC Tech.', 'Sr. Data Scientist', 6);

/*Create a Fk to ensure that the speaker_id exists in the speaker table*/

ALTER TABLE talks
ADD FOREIGN KEY (speaker_id)
REFERENCES speakers (id);