CREATE TABLE costumer
  (
    costumer_name CHAR(20),
    costumer_street CHAR(30),
    costumer_city CHAR(30),
    PRIMARY KEY (costumer_name)
  );

CREATE TABLE branch
  (
    branch_name CHAR(15),
    branch_city CHAR(30),
    assets INTEGER,
    PRIMARY KEY (branch_name)
  );

CREATE TABLE account
  (
    account_number CHAR(10),
    branch_name CHAR(15),
    balance INTEGER,
    PRIMARY KEY (account_number),
    FOREIGN KEY (branch_name) REFERENCES branch
  );

CREATE TABLE depositor
  (
    costumer_name CHAR(20),
    account_number CHAR(10),
    PRIMARY KEY (costumer_name, account_number),
    FOREIGN KEY (account_number) REFERENCES account,
    FOREIGN KEY (costumer_name) REFERENCES costumer
  );
