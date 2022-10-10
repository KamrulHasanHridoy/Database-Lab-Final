REM   Script: Session 01
REM    

create table Admin(  
    Admin_id integer not null,  
    name varchar(20) not null,  
    email varchar(30) not null,  
    password varchar(10) not null,  
    primary key(Admin_id)  
    );

create table Employees(  
    Employee_id integer not null,  
    name varchar(20) not null,  
    email varchar(30) not null,  
    password varchar(10) not null,  
    mobile varchar(10) not null,  
    blood_group varchar(3) not null,  
    age numeric(2) not null, 
    primary key(Employee_id)  
    );

create table Electric_Bill(  
    Bill_id integer not null,  
    name varchar(20) not null,  
    Type varchar(20) not null, 
    Amount numeric(6) not null, 
    primary key(bill_id)  
    );

create table Consumer(  
    Consumer_id integer not null,  
    name varchar(20) not null, 
    mobile varchar(11) not null,  
    Bill_id integer not null, 
    Address varchar(20) not null, 
    primary key(Consumer_id), 
    foreign key(Bill_id) references Electric_bill(Bill_id) 
    );

insert into Admin values(1,'A','abcd@com','1234');

insert into Admin values(2,'B','abce@com','1234');

insert into Admin values(3,'C','abcf@com','1234');

insert into Admin values(4,'D','abcg@com','1234');

insert into Employees values(1,'Zihad','abcj@com','1234','013333','A+',27);

insert into Employees values(2,'Hossain','abck@com','1234','013333','B+',29);

insert into Employees values(3,'Iqbal','abcl@com','1234','013333','A+',25);

insert into Employees values(4,'Zihad','abcm@com','1234','013333','AB+',33);

insert into Electric_Bill values(1,'W','Commercial',900);

insert into Electric_Bill values(2,'X','Domestic',1300);

insert into Electric_Bill values(3,'Y','Domestic',560);

insert into Electric_Bill values(4,'Z','Commercial',880);

insert into Consumer values(1,'K','0172',1,'Dhaka');

insert into Consumer values(2,'L','0173',2,'Dhaka');

insert into Consumer values(3,'M','0174',3,'Dhaka');

insert into Consumer values(4,'N','0175',4,'Dhaka');

select * from Admin;
 
 
select Employees.name from Employees;;

select Employees.name, Employees.mobile, Employees.blood_group from Employees;;

alter table Employees add location_name varchar(10);

select * from Employees;

update Employees set location_name = 'Dhaka' where Employee_id =1;

update Employees set location_name = 'Khulna' where Employee_id =2;

update Employees set location_name = 'Barisal' where Employee_id =3;

update Employees set location_name = 'Dhaka' where Employee_id =4;

select * from Employees;

describe Employees


alter table Employees rename column mobile to phone;

select * from Employees;

select name, age, phone from Employees order by age;

select name, blood_group, age, phone from Employees order by age;

select count(blood_group) from Employees;

 select avg(age), name  from Employees group by name;

 select max(age) from Employees;

 select min(age) from Employees;

select age,name from Employees where Employees.age <= 30 and Employees.age >=20;

select Admin.name as admin_name, admin.email from Admin;

create view Employees_view as select Employee_id, name, age from Employees;

select name, age from Employees_view order by age;

select avg(age) from Employees_view group by name;

drop view Employees_view;

select Electric_Bill.amount, Electric_Bill.type from Electric_Bill join Consumer on Electric_Bill.bill_id=consumer.bill_id;

select Electric_Bill.amount, Electric_Bill.type from Electric_Bill left join Consumer on Electric_Bill.bill_id=consumer.bill_id;

select Electric_Bill.amount, Electric_Bill.type from Electric_Bill right join Consumer on Electric_Bill.bill_id=consumer.bill_id;

select Electric_Bill.amount, Electric_Bill.type from Electric_Bill Full outer join Consumer on Electric_Bill.bill_id=consumer.bill_id;

