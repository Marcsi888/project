ALTER TABLE studentdb.researchgroup
ADD COLUMN StudentID INT,
ADD FOREIGN KEY (StudentID) REFERENCES students(StudentID);
