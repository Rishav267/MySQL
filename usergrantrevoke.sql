create user 'test'@'localhost' identified by '1234';
grant all on company to 'test'@'localhost';
show grants for test;

revoke all , grant option from test@localhost;
