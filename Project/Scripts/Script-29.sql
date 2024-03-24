alter table courses
add column MajorID INT,
ADD FOREIGN KEY (MajorID) REFERENCES majors(MajorID);
