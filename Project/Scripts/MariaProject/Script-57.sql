create view germanstudents as
select FirstName, LastName, MajorID
from students
where Nationality = 'German';