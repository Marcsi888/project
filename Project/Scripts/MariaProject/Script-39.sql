UPDATE majors
SET StudentID = (
    SELECT StudentID 
    FROM students 
    WHERE students.FirstName = 'Matteo' AND students.LastName = 'Deaz'
)
WHERE MajorName = 'Computer Science';