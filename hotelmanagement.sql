drop database hotel;
create database hotel;
use hotel;
create table customer(
customer_id varchar(100),
name varchar(100),
address varchar(100),
phone_no varchar(100),
check_in date,
check_out date
);

create table room(
	check_in date,
	check_out date,
	status varchar(100) default 'unoccupied',
	room_id varchar(100),
	category varchar(100),
	price varchar(100),
	booking_id varchar(100)
);

create table booking(
	booking_id varchar(100),
	customer_id varchar(100),
	amount varchar(100)
);

insert into customer values('1','naveen','abadf','134','2018/09/21','2018/09/23');
insert into customer values('2','aurangzeb','abadf','134','2018/10/21','2018/10/23');
insert into customer values('3','prakash','abadf','134','2018/08/21','2018/08/23');
insert into customer values('4','vivek','abadf','134','2018/07/21','2018/07/23');


insert into booking values('1', '1',NULL );
insert into booking values('2','2',NULL);
insert into booking values('3','3',NULL);
insert into booking values('4','4',NULL);

insert into room values('2016/02/10','2016/02/12','unoccupied','1','good','1000','1');
	insert into room values('2016/02/10','2019/12/12','unoccupied','2','better','2000','2');
		insert into room values('2016/02/10','2016/02/12','unoccupied','3','best','3000','3');


-- create view assign as
-- select room_id from room,customer where room.check_out < customer.check_in and customer.customer_id ='1';
-- select room_id from assign limit 1;
		update room rr,customer cc set rr.check_in=cc.check_in , rr.check_out=cc.check_out where cc.customer_id='1'
		and rr.room_id in (select room_id from (select * from room)as r,customer c where r.check_out < c.check_in and c.customer_id ='1' limit 1);

























