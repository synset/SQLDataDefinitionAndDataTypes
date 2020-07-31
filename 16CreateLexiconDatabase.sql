create database Lexicon

create table Towns(
	Id int identity(1, 1) primary key ,
	Name varchar(50) not null
);

create table Adresses (
	Id int identity(1, 1) primary key,
	AdressText varchar(50) not null,
	TownId int foreign key references Towns(Id)
);

create table Departments (
	Id int identity(1, 1) primary key,
	Name varchar(50) not null
);

create table Employees (
	Id int identity(1, 1) primary key,
	FirstName varchar(50) not null,
	MiddleName varchar(50),
	LastName varchar(50) not null,
	JobTitle varchar(50),
	DepartmentId int foreign key references Departments(Id) not null,
	HireRate decimal,
	Salary decimal,
	AdressId int foreign key references Adresses(Id)
);