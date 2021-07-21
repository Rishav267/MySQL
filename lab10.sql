DELIMITER $$
CREATE PROCEDURE GETXRAY(IN FNAME CHAR(40),IN DATE CHAR(30))
BEGIN
SELECT xray.xray_id,xray.date,xray.ca,table1.firstname,table1.date from xray left join
(SELECT memberinfo.firstname, cardiodiagnosis.cardio_id, cardiodiagnosis.date from memberinfo right join cardiodiagnosis on
memberinfo.member_id = cardiodiagnosis.memberinfo_member_id) as table1 on xray.cardiodiagnosis_cardio_id = table1.cardio_id where
table1.firstname = FNAME AND table1.date = DATE;
END$$
DELIMITER ;