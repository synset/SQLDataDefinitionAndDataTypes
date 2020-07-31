--1.Create Database
--(standing in “master”)
create database Minion;

--2.Create Tables
--(standing in Minion)
create table Minion (
	Id int primary key identity,
	name nvarchar(50) not null,
	Age int null
);

create table Towns (
	Id int primary key identity,
	name nvarchar(50) not null
);

--3.Alter Minions Table
alter table Minion
add foreign key (TownId) references Towns(Id);

--4.Insert Records in Both Tables
insert into Towns(name)
	values
		('Sofia'),
		('Peter'),
		('Victoria');

insert into Minion(Name, Age, TownId)
	values
		('Kevin', 22, 1),
		('Bob', 15, 3),
		('Steward', null, 2);

--5.Truncate Table Minions
truncate table Minion;

--6.Drop all tables
drop table Minion;
drop table Towns;