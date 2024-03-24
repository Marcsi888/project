CREATE TABLE IF NOT EXISTS Publications (
    PublicationID INT PRIMARY KEY AUTO_INCREMENT,
    ProfID varchar(50),
    Speciality INT,
    Publicationdate DATE,
    Publication_name INT,
    CONSTRAINT fk_professors FOREIGN KEY (ProfID) REFERENCES professors(ProfID)
);
