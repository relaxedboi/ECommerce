create database ECommerce;

use ECommerce;

create table users(
username varchar(255) primary key,
passkey varchar(255) not null,
email varchar(255) not null,
ph_number varchar(255) not null
);

create table catagory(
catid int auto_increment primary key,
catname varchar(255) not null,
stock int8 not null
);

create table products(
productid varchar(255) primary key,
productname varchar(255) not null,
size int8 not null,
price int8 not null,
stock int8 not null
);

alter table products
add column catid int not null;

alter table products
ADD FOREIGN KEY (catid) REFERENCES catagory(catid);

create table bookings(
bookingsid varchar(255) primary key,
username varchar(255),
productid varchar(255),
foreign key(productid) references products(productid),
foreign key(username) references users(username)
);

create table cart(
cartid varchar(255) primary key,
username varchar(255),
productid varchar(255),
foreign key(productid) references products(productid),
foreign key(username) references users(username)
);


create table bookingDetails(
bookingsid varchar(255) not null,
foreign key(bookingsid) references bookings(bookingsid),
products varchar(255) not null,
price int8 not null
);


show tables;




