use abc;
create table customer (cid int primary key auto_increment,
 name varchar(30),email varchar(50));
insert into customer values(1,'harsh','harsh@gmail.com');
insert into customer (cid,name,email) values(2,'prathap','prathap@gmail.com'),
(3,'akshu','akshu@gmail.com');
select * from customer;
create table orders (oid int primary key,product varchar(20),
cid int,foreign key(cid) references customer (cid),total int);
insert into orders (oid,product,cid,total) values 
(1,'phone',1,20000),(2,'watch',2,30000),(3,'book',3,40000),(4,'bottle',2,2000);
select * from orders;
create table orderlog (oid int,foreign key(oid) references orders(oid),cid int,
foreign key (cid) references customer(cid),orderdate date);
delimiter $$
use abc $$
create trigger after_insert_orders
after insert on orders 
for each row
begin 
insert into orderlog(oid,cid,date)select i.oid,i.cid,now()
from inserted i;
end
$$ 
delimiter ;

select * from orderlog;
drop trigger after_insert_orders;
INSERT INTO orderlog (oid,cid, orderdate) 
VALUES (1,2, '2025-01-07 '),
       (2,1, '2025-01-07 ');


