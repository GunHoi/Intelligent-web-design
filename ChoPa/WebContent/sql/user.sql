use ChoPadb;
create table USER(
	userID varchar(20),
	userPassword varchar(20),
	userName varchar(20),
	userGender varchar(20),
	userEmail varchar(50),
	primary key(userID)
)DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;