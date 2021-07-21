DELIMITER $$
CREATE PROCEDURE listP(IN min_age int)
begin
declare id varchar(20);
declare uname varchar(30);
declare fname varchar(30);
declare uage int;
declare flag int default 0;
declare cur cursor for select member_id, username , firstname , age from memberinfo;
declare continue handler for not found set flag = 1;

open cur;
loop1 : loop
	fetch cur into id,uname,fname,uage;
    if flag = 1 then
      leave loop1;
	end if;
	if uage>min_age then
	  select id,uname,fname,uage;
	end if;
end loop loop1;
close cur;
end $$
delimiter ;

call listP(35);