create table Users (
	Id int not null identity(1,1) primary key,
	Username nvarchar(30) unique not null,
	Password nvarchar(26) not null,
	ProfilePicture varbinary(900),	
	LastLoginTime datetime,
	IsDeleted char(1)
);

insert into Users(Username, [password], IsDeleted)
	values
		('Kevin', 'password1', 0),
		('Bob', 'password2', 0),
		('Steward', 'password3', 0),
		('Mary', 'password4', 0),
		('Hannah', 'password5', 0);