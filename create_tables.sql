create database assign1;
use assign1;
create table employees(
	name varchar(10),
	employer varchar(10),
	company varchar(20)
);
create table employers(
	name varchar(10),
	company varchar(20)
);
create table salaries(
	money int,
	employee varchar(10)
);
create table experiences(
	name varchar(10),
	years int
);
create table favdrink(
	name varchar(10),
	drink varchar(20)
);
