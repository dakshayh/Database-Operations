USE python_data_analysis;

DROP TABLE IF EXISTS author_ISBN;
DROP TABLE IF EXISTS titles;
DROP TABLE IF EXISTS authors;

CREATE TABLE authors (
    id INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
    first VARCHAR(50) NOT NULL,
    last VARCHAR(50) NOT NULL
);

CREATE TABLE titles (
    isbn VARCHAR(15) NOT NULL,
    title VARCHAR(100) NOT NULL,
    edition INTEGER NOT NULL,
    copyright INTEGER NOT NULL,
    PRIMARY KEY (isbn)
);

CREATE TABLE author_ISBN (
    id INTEGER NOT NULL,
    isbn VARCHAR(10) NOT NULL,
    PRIMARY KEY (id, isbn),
    FOREIGN KEY (id) REFERENCES authors(id) ON DELETE CASCADE, 
    FOREIGN KEY (isbn) REFERENCES titles (isbn) ON DELETE CASCADE
);

INSERT INTO authors (first, last)
VALUES 
    ('Paul','Deitel'), 
    ('Harvey','Deitel'),
    ('Abbey','Deitel'), 
    ('Dan','Quirk'),
    ('Alexander', 'Wald'),
    ('Robert', 'Smith');

INSERT INTO titles (isbn,title,edition,copyright)
VALUES
    ('0135404673','Intro to Python for CS and DS',1,'2020'),
    ('0132151006','Internet & WWW How to Program',5,'2012'),
    ('0134743350','Java How to Program',11,'2018'),
    ('0133976890','C How to Program',8,'2016'), 
    ('0133406954','Visual Basic 2012 How to Program',6,'2014'),
    ('0134601548','Visual C# How to Program',6,'2017'),
    ('0136151574','Visual C++ How to Program',2,'2008'),
    ('0134448235','C++ How to Program',10,'2017'),
    ('0134444302','Android How to Program',3,'2017'),
    ('0134289366','Android 6 for Programmers',3,'2016');

INSERT INTO author_ISBN (id,isbn)
VALUES
    (1,'0134289366'),
    (2,'0134289366'),
    (5,'0134289366'),
    (1,'0135404673'),
    (2,'0135404673'),
    (1,'0132151006'),
    (2,'0132151006'),
    (3,'0132151006'),
    (1,'0134743350'),
    (2,'0134743350'),
    (1,'0133976890'),
    (2,'0133976890'),
    (1,'0133406954'),
    (2,'0133406954'),
    (3,'0133406954'),
    (1,'0134601548'),
    (2,'0134601548'),
    (1,'0136151574'),
    (2,'0136151574'),
    (4,'0136151574'),
    (1,'0134448235'),
    (2,'0134448235'),
    (1,'0134444302'),
    (2,'0134444302');
