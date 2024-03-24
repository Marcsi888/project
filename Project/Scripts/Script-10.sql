CREATE TABLE IF NOT EXISTS Dean (
    DeanID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    DeanEmail VARCHAR(100) unique
);