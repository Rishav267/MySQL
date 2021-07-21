DELIMITER $$
CREATE FUNCTION PatientCont(val int)
	RETURNS INT deterministic
BEGIN
declare res int default 0;
select count(*) into res from diseasedetail where isrecovered = val;
return res ;
END $$
DELIMITER ;

select PatientCont(0);



