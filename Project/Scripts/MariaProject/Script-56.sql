create view students_view as
select FirstName, LastName, Nationality
from students
where MajorID = 1;
