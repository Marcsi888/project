CREATE TABLE IF NOT EXISTS Internship (
    StudentID INT PRIMARY KEY AUTO_INCREMENT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    BirthDate DATE,
    DeanID INT,
    CompanyName VARCHAR(100),
    position VARCHAR (50),
    startdate Date,
    duration INT,
    end_date Date,
    MajorID INT
);