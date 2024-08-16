/*Create a PK and a FK for the book_details table*/

CREATE TABLE book_details (
  id integer PRIMARY KEY,
  book_isbn varchar(50) REFERENCES book(isbn) UNIQUE,
  rating decimal,
  language varchar(10),
  keywords text[],
  date_published date
);

/*Validate the existence of the constrains in the book_details table*/

SELECT constraint_name, table_name, column_name 
FROM information_schema.key_column_usage 
WHERE table_name = 'book_details';


/*One to many relationship*/ 

CREATE TABLE page (
  id integer PRIMARY KEY,
  chapter_id integer REFERENCES chapter(id),
  content text,
  header varchar(20),
  footer varchar(20)
);


/*Drop the content column in chapter table*/

ALTER TABLE chapter
DROP COLUMN content;

/*Validate the existence of key constrains in the page table*/

SELECT constraint_name, table_name, column_name 
FROM information_schema.key_column_usage 
WHERE table_name = 'page';

