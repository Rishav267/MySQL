DELIMITER $$
CREATE PROCEDURE InsertDetails(IN ID CHAR(20), IN UNAME CHAR(30), IN FNAME CHAR(30), IN LNAME CHAR(30), IN AGE INT,
 IN GENDER CHAR(10), IN EMAIL CHAR(50),IN NUM INT)
 BEGIN
 INSERT INTO memberinfo (member_id,username,firstname,lastname,age,gender,email,phonenumber) VALUES (ID,UNAME,FNAME,LNAME,AGE,GENDER,EMAIL,NUM);
 END $$
 DELIMITER ;