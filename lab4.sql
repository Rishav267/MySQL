create table statistics (AttackCount int not null);
insert into statistics values (1,'2021-06-02',50);
insert into statistics values (2,'2021-06-03',5);
insert into statistics values (3,'2021-06-04',30);
insert into statistics values (4,'2021-06-05',25);
insert into statistics values (5,'2021-06-06',55);

select date , count(cardioarrestdetected) As attackCount from cardiodiagnosis group by date;
DROP table statistics;

select * from statistics order by AttackCount DESC;


-- lab 5 --
select memberinfo.firstname, memberinfo.lastname, addressinfo.city from memberinfo inner join addressinfo on
memberinfo.member_id = addressinfo.memberinfo_member_id where city = 'Flora';


-- lab 6 --
select count(firstname) from (select  memberinfo.firstname, cardiodiagnosis.cardio_id from memberinfo inner join cardiodiagnosis
 on memberinfo.member_id = cardiodiagnosis.memberinfo_member_id) as table1 inner join bloodtest on table1.cardio_id = bloodtest.cardiodiagnosis_cardio_id where firstname='Aisha';

-- lab 7 --
select xray.xray_id , xray.date,xray.ca, table1.firstname from xray left join (select memberinfo.firstname , cardiodiagnosis.cardio_id , cardiodiagnosis.date from memberinfo left join cardiodiagnosis
 on memberinfo.member_id = cardiodiagnosis.memberinfo_member_id) as table1 on xray.cardiodiagnosis_cardio_id = table1.cardio_id 
 where table1.firstname = 'Ajay';
