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


/*Inserting data into page table*/

INSERT INTO page VALUES (
  2,
  1,
  'Chapter 1 Page 2',
  'Page 2 Header',
  'Page 2 Footer'
);

INSERT INTO page VALUES (
  3,
  2,
  'Chapter 1 Page 1',
  'Page 1 Header',
  'Page 1 Footer'
);

INSERT INTO page VALUES (
  4,
  2,
  'Chapter 1 Page 2',
  'Page 2 Header',
  'Page 2 Footer'
);


/*Doing a join of the three talbes*/

SELECT 
  book.title as book_title, chapter.title as chapter_title, page.content as page_content
FROM book
INNER JOIN chapter
  ON book.isbn = chapter.book_isbn
INNER JOIN page
  ON chapter.id = page.chapter_id;
  
  
/*Many to many relationship*/

/*Create a cross-reference table, books_authors, containing a composite PK*/
CREATE TABLE books_authors (
  book_isbn varchar(50) REFERENCES book(isbn),
  author_email varchar(20) REFERENCES author(email),
  PRIMARY KEY (book_isbn, author_email)
);

/*Validate the constrains in PK and FK for the books_authors table*/
SELECT constraint_name, table_name, column_name 
FROM information_schema.key_column_usage 
WHERE table_name = 'books_authors';


/*Populating the books_authors table with some data*/

INSERT INTO books_authors VALUES (
  '123457890',
  'jkey@db.com'
);

INSERT INTO books_authors VALUES (
  '123457890',
  'cindex@db.com'
);

INSERT INTO books_authors VALUES (
  '987654321',
  'cindex@db.com'
);

