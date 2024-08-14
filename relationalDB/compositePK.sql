CREATE TABLE popular_recipes (
  recipe_id varchar(20),
  ingredient_id varchar(20),
  downloaded integer,
  PRIMARY KEY (recipe_id, ingredient_id)
);