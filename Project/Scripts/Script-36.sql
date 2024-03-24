UPDATE majors
SET StudentID = (
    SELECT StudentID 
    FROM students 
    WHERE students.FirstName = 'Emily' AND students.LastName = 'Brown'
)
WHERE MajorName = 'Computer Science';

