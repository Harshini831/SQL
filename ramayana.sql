create database abc;

use abc;
create table ramayana(id int primary key,name varchar(50),role varchar(30),kingdom varchar(40),age int,weapon varchar(50),strength int,allies varchar(100),Enemy varchar(50),status varchar(50),location varchar(50));
desc ramayana;
insert into ramayana values(1,'rama','hero','ayodya',25,'bow and arrow',95,'lakshman and hanuman','ravana and surpanaka','alive','forest');
insert into ramayana values(2,'sita','heroine','janakpur',24,'none',70,'rama and lakshman','ravana ','kidnapped','ashoka vatika');
select * from ramayana;
insert into ramayana values(3,'ravana','villan','janakapura',50,'sword',100,'kumbakarana','rama and hanuman','deceased','lanka');
insert into ramayana values(4,'lakshmana','sidekick','ayodya',24,'sword',85,'rama and hanuman','ravana','alive','forest');
insert into ramayana values(5,'hanuman','devote','kishkindha',30,'mace',100,'rama and lakshmana','ravana','alive','lanka');
insert into ramayana values(6,'bharata','hero','ayodya',23,'none',75,'shatrughna','ravana','alive','ayodhya');
insert into ramayana values(7,'shatrughna','hero','ayodya',22,'sword',80,'bharata and lakshman','ravana','alive','ayodhya');
insert into ramayana values(8,'vibhishana','ally','lanka',40,'sword',85,'rama','ravana','alive','lanka');
insert into ramayana values(9,'surpanaka','villain','lanka',35,'none',60,'ravana','rama and lakshmana','deceased','lanka');
insert into ramayana values(10,'jatayu','ally','unknown',60,'claws',90,'rama and lakshmana','ravana','deceased','forest');

select * from ramayana where status='alive';
select name,status from ramayana where status='alive';

update ramayana set strength=110 where id=5;

alter table ramayana add Power_level varchar(10);
desc ramayana;

select strength,name,allies from ramayana having strength>80;

select kingdom,count(kingdom) from ramayana group by kingdom;

select name,role from ramayana having role='hero' or role='villan';

update ramayana set location='ayodya' where name='rama,sita';

alter table ramayana modify column location varchar(100);

select age,allies,name from ramayana having age<40;

select status,count(status) from ramayana group by status;




