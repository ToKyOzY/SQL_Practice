CREATE TABLE workers 
(  
  id int, 
  name varchar(20),
  title varchar(60),
  manager_id int 
);
INSERT INTO workers VALUES(1, 'Ali Can', 'Dev', 2);
INSERT INTO workers VALUES(2, 'John Davis', 'QA', 3);
INSERT INTO workers VALUES(3, 'Angie Star', 'Dev Lead', 4);
INSERT INTO workers VALUES(4, 'Amy Sky', 'CEO', 5 );

select * from workers;

--1)tabloya company_industry isminde sütun ekleyiniz
alter table workers add company_industry varchar(20);

--2)tabloya worker_adress sütunu ve default olarak da 'Miami , FL, USA' adresini ekleyin
alter table workers add worker_adress varchar(100) default 'Miami , FL, USA';
select * from workers

--3)tablodaki worker_adress sütununu silin
alter table workers drop column worker_adress;

--4)tablodaki company_industry sütununu, company_profess olarak degistirin
alter table workers rename company_industry to company_profess;

--5)tablonun ismini employees olarak degistirin
alter table workers rename to employees;
select * from employees;

--6)Tablodaki title sütununa data tipini varchar(50) olarak degistiriniz
alter table employees alter column title type varchar(50);
select * from employees;

--Tablodaki title sütununa 'UNIQUE' kısıtlaması ekleyiniz
alter table employees add constraint title unique (title);--olmayacak cunku ceo'dan 2 tane var

