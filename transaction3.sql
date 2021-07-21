Start transaction;
delete from orders;
rollback;
SET FOREIGN_KEY_CHECKS = 0;
