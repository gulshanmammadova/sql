--1. Academy databazasını yaradın - 2 bala
create database Academy
use Academy

--2. Groups(İd,Name) ve Students(İd,Name,Surname,Groupİd) table-ları yaradın(one-to-many), 
--təkrar qrup adı əlavə etmək olmasın - 5 bal
create table Groups(
 Id int identity primary key,
Name nvarchar(25) unique not Null 
)
create table Students(
 Id int identity primary key,
Name nvarchar(25)  not Null ,
SurName nvarchar(50)  not Null ,
GroupId int  foreign key references   Groups
)
--3. Students table-na Grade (int) kalonunu əlavə etmək - 3 bal
Alter Table Students
Add Grade int 

--4. Groups table-na 3 data(P133,P229,P221), Students table-na 4 data əlavə edin(1 tələbə P229 qrupna, 3 tələbə P133   qrupuna aid olsun) - 5 bal

Insert Into Groups(Name) 
Values
('P133'),
('P229'),
('P221')
Insert Into Students(Name,SurName,GroupId)
Values
('TELEBE2','Surname2',5),
('TELEBE3','Surname3',5),
('TELEBE4','Surname4',5),
('TELEBE1','Surname1',6)
--5. P133 qrupuna aid olan tələbələrin siyahisini gosterin - 10 bal
Select * From Students where (GroupId=5)

--6. Her qrupda neçə tələbə olduğunu göstərən siyahı çıxarmaq - 15 bal

--7. View yaratmaq - tələbə adını, qrupun adını-qrup kimi , tələbə soyadını, tələbənin balını göstərməli - 20 bal

--8. Procedure yazmalı - göndərilən baldan yüksək bal alan tələbələrin siyahısını göstərməlidir - 20 bal

--9. Funksiya yazmalı - göndərilən qrup adina uyğun neçə tələbə olduğunu göstərməlidir - 20 bal