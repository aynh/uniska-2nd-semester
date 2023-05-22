CREATE TABLE costumer
  (
    costumer_name CHAR(20),
    costumer_street CHAR(30),
    costumer_city CHAR(30),
    PRIMARY KEY (costumer_name)
  );

INSERT INTO costumer
  VALUES
    ('Jordan Balik', 'Jl. Ahmad Yani', 'Banjarbaru'),
    ('Budiman', 'Jl. Trikora', 'Banjarbaru'),
    ('Yulianti', 'Jl. Ahmad Yani', 'Banjarmasin'),
    ('Azmi Basyam', 'Jl. Al Falah', 'Kandangan'),
    ('Abdul Rizki', 'Jl. Pangeran Antasari', 'Banjarmasin');

CREATE TABLE branch
  (
    branch_name CHAR(15),
    branch_city CHAR(30),
    assets INTEGER,
    PRIMARY KEY (branch_name)
  );

INSERT INTO branch
  VALUES
    ('Banjarbaru A', 'Banjarbaru', 19000000),
    ('Banjarbaru B', 'Banjarbaru', 12000000),
    ('Banjarmasin A', 'Banjarmasin', 34000000),
    ('Banjarmasin B', 'Banjarmasin', 14000000),
    ('Kandangan A', 'Kandangan', 8000000);

CREATE TABLE account
  (
    account_number CHAR(10),
    branch_name CHAR(15),
    balance INTEGER,
    PRIMARY KEY (account_number),
    FOREIGN KEY (branch_name) REFERENCES branch
  );

INSERT INTO account
  VALUES
    ('1000000001', 'Banjarbaru A', 5000000),
    ('2000000001', 'Banjarbaru B', 2000000),
    ('3000000001', 'Banjarmasin A', 22000000),
    ('4000000001', 'Banjarmasin A', 10000000),
    ('5000000001', 'Kandangan A', 3000000);

CREATE TABLE depositor
  (
    costumer_name CHAR(20),
    account_number CHAR(10),
    PRIMARY KEY (costumer_name, account_number),
    FOREIGN KEY (account_number) REFERENCES account,
    FOREIGN KEY (costumer_name) REFERENCES costumer
  );

INSERT INTO depositor
  VALUES
    ('Jordan Balik', '1000000001'),
    ('Budiman', '2000000001'),
    ('Yulianti', '3000000001'),
    ('Azmi Basyam', '5000000001'),
    ('Abdul Rizki', '4000000001');
