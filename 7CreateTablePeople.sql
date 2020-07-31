create table People (
	Id int not null identity(1,1) primary key,
	Name varchar(200) not null,
	Picture varbinary(max),
	Height decimal(3,2),
	Weight decimal(5,2),
	Gender varchar(1) not null CHECK(Gender = 'm' OR Gender = 'f'),
	Birthdate date not null,
	Biography ntext null
);