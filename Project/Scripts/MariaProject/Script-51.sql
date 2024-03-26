alter table professors
add column DepartmentID INT,
add constraint fk_department
foreign key (DepartmentID) references department(DepartmentID);

