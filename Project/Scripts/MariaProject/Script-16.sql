ALTER TABLE studentdb.internship
ADD COLUMN StudentID INT,
ADD FOREIGN KEY (StudentID) REFERENCES students(StudentID);
