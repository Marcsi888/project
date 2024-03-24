ALTER TABLE students
ADD COLUMN Gender ENUM('Male', 'Female', 'Other'),
ADD COLUMN SocialSecurityNumber VARCHAR(20),
ADD COLUMN Nationality VARCHAR(50),
ADD COLUMN MajorID INT;
