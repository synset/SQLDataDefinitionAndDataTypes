create database Hotel

create table Employees (
	Id int primary key,
	FirstName varchar(50),
	LastName varchar(50),
	Title varchar(50),
	Notes varchar(200)
);

create table Customers (
	AccountNumber int primary key,
	FirstName varchar(50),
	LastName varchar(50),
	PhoneNumber int,
	EmergencyName varchar(50),
	EmergencyNumber int,
	Notes varchar(200)
);

create table RoomStatus (
	RoomStatus char(1) primary key,
	Notes varchar(200)
);

create table RoomTypes (
	RoomType varchar(50) primary key,
	Notes varchar(200)
);

create table BedTypes (
	BedType varchar(50) primary key,
	Notes varchar(200)
);

create table Rooms (
	RoomNumber int primary key,
	RoomType varchar(50),
	BedType varchar(50),
	Rate decimal,
	RoomStatus char(1),
	Notes varchar(200)
);

create table Payments (
	Id int primary key,
	EmployeeId int,
	PaymentDate date,
	AccountNumber int,
	FirstDateOccupied date,
	LastDateOccupied date, 
	TotalDays int,
	AmountCharged decimal,
	TaxRate decimal,
	TaxAmount decimal,
	PaymentTotal decimal,
	Notes varchar(200)
);
create table Occupancies (
	Id int not null primary key,
	EmployeeId int,
	DateOccupied date,
	AccountNumber int,
	RoomNumber int,
	RateApplied decimal,
	PhoneCharge decimal,
	Notes varchar(200)
);

alter table Rooms
add foreign key (RoomType) references RoomTypes(RoomType);

alter table Rooms
add foreign key (BedType) references BedTypes(BedType);

alter table Rooms
add foreign key (RoomStatus) references RoomStatus(RoomStatus);

alter table Payments
add foreign key (EmployeeId) references Employees(Id);

alter table Occupancies
add foreign key (EmployeeId) references Employees(Id);

alter table Occupancies
add foreign key (AccountNumber) references Customers(AccountNumber);

alter table Occupancies
add foreign key (RoomNumber) references Rooms(RoomNumber);


insert into Employees (Id, FirstName, LastName)
	values
		(1, 'Hannah', 'Johnsson'),
		(2, 'Bernard', 'Star'),
		(3, 'Mickey', 'Mouse');

insert into Customers (AccountNumber, FirstName, LastName)
	values
		(2435, 'Mary', 'Hansson'),
		(8673, 'Benny', 'Queen'),
		(6832, 'Sally', 'Sanders');

insert into RoomStatus (RoomStatus)
	values
		(0),
		(1),
		(2);

insert into RoomTypes (RoomType)
	values
		('single'),
		('double'),
		('family');

insert into BedTypes (BedType)
	values
		('king'),
		('queen'),
		('single');

insert into Rooms (RoomNumber)
	values
		(100),
		(101),
		(102);

insert into Payments (Id)
	values
		(0001),
		(0002),
		(0003);

insert into Occupancies (Id)
	values
		(0010),
		(0020),
		(0030);