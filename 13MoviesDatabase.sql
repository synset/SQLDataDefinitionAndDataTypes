create database Movies;

create table Directors (
	Id int primary key,
	DirectorName varchar(50) not null,
	Notes varchar(max)
);

insert into Directors(Id, DirectorName)
	values
		(1, 'Kevin'),
		(2, 'Bob'),
		(3, 'Steward'),
		(4, 'Mary'),
		(5, 'Hannah');

create table Genres (
	Id int primary key,
	GenreName varchar(50) not null,
	Notes varchar(max)
);


insert into Genres(Id, GenreName)
	values
		(1, 'horror'),
		(2, 'drama'),
		(3, 'comedy'),
		(4, 'thriller'),
		(5, 'fantasy');

create table Categories (
	Id int primary key,
	CategoryName varchar(50) not null,
	Notes varchar(max)
);

insert into Categories(Id, CategoryName)
	values
		(1, 'barn'),
		(2, '7+'),
		(3, '11+'),
		(4, '13+'),
		(5, '16+');

create table Movies (
	Id int primary key,
	Title varchar(50) not null,
	DirectorId int,
	CopyrightYear date,
	Length time,
	GenreId int,
	CategoryId int,
	Rating decimal,
	Notes varchar(max)
);

alter table Movies
add foreign key (DirectorId) references Directors(Id);
alter table Movies
add foreign key (GenreId) references Genres(Id);
alter table Movies
add foreign key (CategoryId) references Categories(Id);

insert into Movies(Id, Title, DirectorId, GenreId, CategoryId)
	values
		(1, 'The Fan', 1, 1, 1),
		(2, 'Men In Black', 2, 2, 2),
		(3, 'In the night', 3, 3, 3),
		(4, 'Halo', 4, 4, 4),
		(5, 'In the country', 5, 5, 5);