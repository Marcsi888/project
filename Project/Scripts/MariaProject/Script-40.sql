ALTER TABLE grades MODIFY LetterGrade VARCHAR(2);
INSERT INTO grades (GradeID, StudentID, CourseID, NumericalGrade, LetterGrade)
VALUES 
    (1, 1, 1, 85, 'B+'),
    (2, 1, 2, 90, 'A-'),
    (3, 2, 3, 78, 'C+'),
    (4, 2, 4, 92, 'A'),
    (5, 3, 5, 85, 'B+'),
    (6, 3, 6, 88, 'B+'),
    (7, 4, 7, 75, 'C'),
    (8, 4, 8, 80, 'B-'),
    (9, 5, 9, 95, 'A'),
    (10, 5, 10, 82, 'B');
