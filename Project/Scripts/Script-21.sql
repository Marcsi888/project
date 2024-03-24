ALTER TABLE studentdb.students
ADD COLUMN MajorID INT,
ADD FOREIGN KEY (MajorID) REFERENCES majors(MajorID);
