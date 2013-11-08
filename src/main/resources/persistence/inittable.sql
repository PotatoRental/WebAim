create table userAccount(
username varchar(40),
password varchar(20),
firstname varchar(40),
lastname varchar(40),
email varchar(50),
primary key(username)
);

create table schoolUser(
username varchar(40),
foreign key(username) references userAccount(username)
);

create table