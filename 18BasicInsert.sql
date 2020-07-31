insert into Towns (Name)
	values 
		('Sofia'),
		('Plovdiv'),
		('Varna'),
		('Burgas');

insert into Departments (Name)
	values 
		('Engineering'),
		('Sales'),
		('Marketing'),
		('Software Development'),
		('Quality Assurance');

insert into Employees(FirstName, MiddleName, LastName, JobTitle, DepartmentId, HireDate, Salary) 
values
	('Mel', 'Gibson', 'Gibson', '.NET Developer', 4, '01/02/2013', 3500.00),
	('Chuck', 'Norris', 'Norris', 'Senior Engineer', 1, '02/03/2004' ,4000.00),
	('Greta', 'Garbo', 'Garbo', 'Intern', 5, '08/08/2016', 525.25),
	('Meryl', 'Strep', 'Strep', 'CEO', 2, '09/12/2007', 3000.00),
	('Peter', 'Pan', 'Pan', 'Intern', 3, '08/08/2016', 599.88);