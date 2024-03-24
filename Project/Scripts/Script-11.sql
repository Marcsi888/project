create table if not exists finance(
		FinanceID INT primary key auto_increment,
		StudentID INT,
    	firstname VARCHAR(50),
    	lastname VARCHAR(50),
    	scholarshipname VARCHAR(100),
    	financialaid VARCHAR(100),
    	amount DECIMAL(10, 2)
);
