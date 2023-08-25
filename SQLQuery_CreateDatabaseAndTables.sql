create database School
use School

create table Student
(Id int identity not null,
Name nvarchar(100) not null,
Address nvarchar(100) not null,
Email nvarchar(75) not null,
Class nvarchar(5) not null)

create table Class
(Id int not null,
Name nvarchar(5) not null)

create table Subjects
(Id int not null,
Name nvarchar(50) not null)

