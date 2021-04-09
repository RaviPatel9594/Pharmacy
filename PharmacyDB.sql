create database PharmacyDB;

use PharmacyDB;

CREATE TABLE `CustomerInfo` (
  `CustomerId` int primary key not null auto_increment,
  `Name` varchar(40) not null ,
  `Phone` int not null ,
  `Age` int,
  `PostalAddress` varchar(40)
);

alter table CustomerInfo
add DOB date;

CREATE TABLE `Invoice` (
  `Id` int primary key not null auto_increment,
  `TimeStamp` datetime,
  `Mrp` float,
  `DiscountedTotal` float
);

CREATE TABLE `Admin` (
  `username` varchar(40) not null primary key ,
  `Password` varchar(40) not null
);

CREATE TABLE `Medicines` (
  `Id` int not null primary key auto_increment,
  `Name` varchar(40) not null,
  `GenericName` varchar(40) not null,
  `Mrp` float not null,
  `MfgDate` Date not null,
  `ExpDate` Date not null,
  `Category` varchar(40),
  `Quantity` varchar(40) not null,
  `Strength` varchar(40),
  `Company` varchar(40),
  `StockAvailable` int,
  `Description` varchar(100),
  `Supplier` varchar(40),
  `Discount` int
);

CREATE TABLE `Contains` (
  `MedicineId` int not null ,
  `InvoiceId` int not null,
  `Quantity` int,
  foreign key (MedicineId) references Medicines(id) on delete cascade,
  foreign key (InvoiceId) references Invoice(id) on delete cascade
);


alter table invoice
Add CustomerId int not null,
ADD CONSTRAINT FK_InvoiceCustomerInfo
FOREIGN KEY (CustomerId) REFERENCES CustomerInfo(CustomerId) on delete cascade;

show tables ;

Insert into Medicines 
values(5,'Gluformin G1','Gluformin G1',110,'2017-06-15','2019-06-15','Tablet',10,'5mg','Detol',55,'Nice Medicine','B&B',10);
select * from  Medicines;

create table InvoiceData(
invoiceID int not null,
medCode varchar(40) not null,
medName varchar(40) not null,
price float not null,
Quantity int(11) not null,
discount int,
foreign key (invoiceID) references Invoice(ID) on delete cascade
);
delete from invoice where id=1;
select *from medicines;
select Max(id) from invoice;
select * from customerinfo;
 
insert into invoice(TimeStamp,mrp,discountedtotal,customerid)
values(current_timestamp(),145,130,1);