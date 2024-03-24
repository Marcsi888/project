--  sample data in Students table
INSERT INTO Students (FirstName, LastName, BirthDate, Email) VALUES
    ('John', 'Doe', '1995-05-15', 'john.doe@example.com'),
    ('Jane', 'Smith', '1998-08-22', 'jane.smith@example.com'),
    ('Michael', 'Johnson', '1997-03-10', 'michael.johnson@example.com');

-- sample data in Courses table
INSERT INTO Courses (CourseName, CourseCode) VALUES
    ('Introduction to Computer Science', 'CS101'),
    ('Mathematics for Beginners', 'MATH101'),
    ('History of Art', 'ART101');

-- Enroll students in courses
INSERT INTO Enrollment (StudentID, CourseID, EnrollmentDate) VALUES
    (1, 1, '2024-03-06'),
    (1, 2, '2024-03-07'),
    (2, 2, '2024-03-08'),
    (3, 3, '2024-03-09');

SELECT Students.StudentID, FirstName, LastName, BirthDate, Email, CourseName
FROM Students
JOIN Enrollment ON Students.StudentID = Enrollment.StudentID
JOIN Courses ON Enrollment.CourseID = Courses.CourseID;

