select firstName , lastName , employeeNumber from employees where lastName LIKE 'K__g';
select productCode , productName from products where productCode LIKE '%\_20%';
select * from products;
select productCode , productName, buyPrice from products where buyPrice BETWEEN 90 AND 100;
select productCode , productName, buyPrice from products where buyPrice NOT BETWEEN 90 AND 100;
select productCode , productName, buyPrice from products where buyPrice < 20 OR buyPrice>100;

