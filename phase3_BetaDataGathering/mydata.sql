DROP TABLE IF EXISTS  Records,Methods,Dates,Levels;

CREATE TABLE Records (
  rid int(10) unsigned NOT NULL auto_increment PRIMARY KEY,
  score decimal(6,2) NOT NULL default 0,
  spendTime decimal(6,2) NOT NULL default 0,
  rememberRate decimal(6,2) NOT NULL default 0,
  `did` int(10) unsigned NOT NULL,
   CONSTRAINT Dates_fkey FOREIGN KEY (did) REFERENCES Dates(cid) ON DELETE CASCADE,
   `mid` int(10) unsigned NOT NULL,
   CONSTRAINT Methods_fkey FOREIGN KEY (mid) REFERENCES Methods(mid) ON DELETE CASCADE,
   `lid` int(10) unsigned NOT NULL,
   CONSTRAINT Levels_fkey FOREIGN KEY (lid) REFERENCES Levels(lid) ON DELETE CASCADE
);

CREATE TABLE Dates(
  did int(10) unsigned NOT NULL auto_increment PRIMARY KEY,
  dateRecord varchar(50) NOT NULL
);

CREATE TABLE Methods(
  mid int(10) unsigned NOT NULL auto_increment PRIMARY KEY,
  methodName varchar(50) NOT NULL,
  methodDescription varchar(500) NOT NULL
);

CREATE TABLE Levels(
  lid int(10) unsigned NOT NULL auto_increment PRIMARY KEY,
  levelDescription varchar(500) NOT NULL
);


insert into Methods(methodName) values ('App');
insert into Methods(methodName) values ('Reading');
insert into Methods(methodName) values ('Media');

insert into Levels(levelDescription) values ('Very Interesting');
insert into Levels(levelDescription) values ('Interesting');
insert into Levels(levelDescription) values ('Median');
insert into Levels(levelDescription) values ('Boring');
insert into Levels(levelDescription) values ('Very Boring');
