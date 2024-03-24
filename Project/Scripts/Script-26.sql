create table if not exists grades(
    GradeID INT PRIMARY KEY AUTO_INCREMENT,
    StudentID INT,
    CourseID INT,
    NumericalGrade DECIMAL(4,2), 
    LetterGrade INT,
    CONSTRAINT fk_student FOREIGN KEY (StudentID) REFERENCES students(StudentID),
    CONSTRAINT fk_course FOREIGN KEY (CourseID) REFERENCES courses(CourseID)
);
