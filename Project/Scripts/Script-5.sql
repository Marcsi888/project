CREATE TABLE IF NOT EXISTS StudentMajors (
    StudentID INT,
    MajorID INT,
    PRIMARY KEY (StudentID, MajorID),
    FOREIGN KEY (StudentID) REFERENCES Students(StudentID),
    FOREIGN KEY (MajorID) REFERENCES Majors(MajorID)
);
