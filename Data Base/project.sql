show databases;
Create database test;
Use test;
CREATE TABLE `members` (
`id` int(10) unsigned NOT NULL auto_increment,
`first_name` varchar(45) NOT NULL,
`last_name` varchar(45) NOT NULL,
`email` varchar(45) NOT NULL,
`uname` varchar(45) NOT NULL,
`pass` varchar(45) NOT NULL,
`regdate` date NOT NULL,
PRIMARY KEY  (`id`)
);
CREATE TABLE `admin` (
`uname` varchar(45) NOT NULL ,
`pass` varchar(45) NOT NULL,
PRIMARY KEY  (uname)
);
insert into admin values("sandeep","123");
select * from admin;




