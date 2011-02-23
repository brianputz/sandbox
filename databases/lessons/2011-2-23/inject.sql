CREATE TABLE mydb_users (
	username VARCHAR(25) NOT NULL,
	password VARCHAR(25) NOT NULL
);
INSERT INTO mydb_users(username,password)
VALUES ('foo1','bar1'),('foo2','bar2'),('foo3','bar3');
