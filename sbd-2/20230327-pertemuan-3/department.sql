CREATE TABLE department
  (
    dep_id INTEGER PRIMARY KEY,
    dep_name VARCHAR(20),
    dep_location VARCHAR(15)
  );

INSERT INTO department
  VALUES
    (1001, 'FINANCE', 'SYDNEY'),
    (2001, 'AUDIT', 'MELBOURNE'),
    (3001, 'MARKETING', 'PERTH'),
    (4001, 'PRODUCTION', 'BRISBANE');
