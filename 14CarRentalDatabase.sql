create database CarRental;

create table Categories (
	Id int not null,
	CategoryName varchar(50) primary key,
	DailyRate decimal,
	WeeklyRate decimal,
	MonthlyRate decimal,
	WeekendRate decimal
);

insert into Categories(Id, CategoryName)
	values
		(1, 'car'),
		(2, 'van'),
		(3, 'truck');

create table Cars (
	Id int not null,
	PlateNumber varchar(50) primary key,
	Manufacturer varchar(50),
	Model varchar(50) not null,
	CarYear date,
	CategoryId varchar(50),
	Doors int not null,
	Picture varbinary(max),
	Condition varchar(50),
	Available char(1)
);

alter table Cars
add foreign key (CategoryId) references Category(CategoryName);

insert into Cars(Id, PlateNumber, Model)
	values
		(1, '123abc', 'Volvo'),
		(2, '234bcd', 'Saab'),
		(3, '345cde', 'Mercedes');

create table Employees (
	Id int primary key,
	FirstName varchar(50) not null,
	LastName varchar(50) not null,
	Title varchar(50),
	Notes varchar(200)
);

insert into Employees (Id, FirstName, LastName)
	values
		(1, 'Hannah', 'Johnsson'),
		(2, 'Bernard', 'Star'),
		(3, 'Mickey', 'Mouse');



create table Customers (
	Id int not null,
	DriverLicenceNumber int primary key,
	FullName varchar(50),
	Adress varchar(50),
	City varchar(50),
	ZIPCode varchar(10),
	Notes varchar(200)
);

insert into Customers (Id, DriverLicenceNumber, FullName)
	values
		(1, 1111111, 'Hans John'),
		(2, 2222222, 'Berry Starstruck'),
		(3, 3333333, 'Mo Mo');



create table RentalOrders (
	Id int primary key,
	EmployeeId int not null,
	CustomerId int not null,
	CarId varchar(50) not null,
	TankLevel int,
	KilometersStart int,
	KilometersEnd int,
	TotalKilometers int,
	StartDate date,
	EndDate date,
	TotalDays int,
	RateApplied decimal,
	TaxRate decimal,
	OrderStatus varchar(1),
	Notes varchar(200)
);

alter table RentalOrders
add foreign key (CustomerId) references Customers(DriverLicenceNumber);

alter table RentalOrders
add foreign key (EmployeeId) references Employees(Id);

alter table RentalOrders
add foreign key (CarId) references Cars(PlateNumber, Model);


insert into RentalOrders (Id, TankLevel)
	values
		(1, 20),
		(2, 30),
		(3, 40);
