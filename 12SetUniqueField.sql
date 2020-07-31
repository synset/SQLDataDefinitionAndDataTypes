alter table Users
drop constraint PK_Users;

alter table Users
add constraint PK_Users primary key (Id);

alter table Users
add constraint chck_Username check (len(Username)>=3);