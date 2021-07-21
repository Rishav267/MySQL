DELIMITER $$
CREATE PROCEDURE MemberDetails1(IN ID nvarchar(30))
BEGIN
	SELECT member_id, firstname , lastname , age from memberinfo where member_id = ID;
END$$
DELIMITER ;

