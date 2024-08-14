/*Creating a composite primary key for a recipe table*/


CREATE TABLE popular_recipes (
  recipe_id varchar(20),
  ingredient_id varchar(20),
  downloaded integer,
  PRIMARY KEY (recipe_id, ingredient_id)
);


/*Creating a composite primary key for a popular_books table and validate it*/

CREATE TABLE popular_books (
  book_title varchar(100),
  author_name varchar(50),
  number_sold integer,
  number_previewed integer,
  PRIMARY KEY (book_title, author_name)
);

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'popular_books';
  
  
/*Validate that the chapter table has a foreigner key*/

SELECT
  constraint_name, table_name, column_name
FROM
  information_schema.key_column_usage
WHERE
  table_name = 'chapter';
  
  
