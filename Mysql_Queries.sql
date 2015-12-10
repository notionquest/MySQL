select
	concat(table_name, '.', column_name) as 'foreign_table_and_column',
    table_name as 'foreign_table',
    column_name as 'foreign_key',
    concat(referenced_table_name, '.', referenced_column_name) as 'references',
    constraint_name as 'constraint name'
from
    information_schema.key_column_usage
where
    referenced_table_name is not null
    and table_schema = 'classicmodels'
    and referenced_table_name = 'customers';
    
select
    concat(table_name, '.', column_name) as 'foreign key',
    concat(referenced_table_name, '.', referenced_column_name) as 'references',
    constraint_name as 'constraint name'
from
    information_schema.key_column_usage
where
    referenced_table_name is not null
    and table_schema = 'classicmodels'
    and referenced_table_name = 'customers';
    
SELECT table_name, column_name, data_type, column_key
    FROM information_schema.COLUMNS
    WHERE table_schema = 'classicmodels'
    and table_name = 'orders'
    limit 5
    ORDER BY table_name DESC;
    
SELECT table_name, column_name, data_type, column_key
    FROM information_schema.COLUMNS
    WHERE table_schema = 'classicmodels'
    and table_name = 'orders'
    and column_key = 'PRI'
    ORDER BY table_name DESC;   
    
    
SELECT col.table_name, col.column_name, col.data_type, col.column_key
    FROM information_schema.COLUMNS col, information_schema.key_column_usage cu
    WHERE col.table_schema = 'classicmodels'
    and col.table_name = 'customers'
    and col.table_name = cu.table_name
    and col.column_name = cu.column_name
    ORDER BY col.table_name DESC;     
    
Select * from information_schema.COLUMNS;

Select * from  information_schema.key_column_usage;
        
select  table_name as 'foreign_table', column_name as 'foreign_key', concat(referenced_table_name, '.', referenced_column_name) as 'references', 
data_type as 'data_type1', column_key as 'column_key', constraint_name as 'constraint_name' 
from information_schema.key_column_usage, information_schema.COLUMNS where referenced_table_name is not null  
and table_schema = '' and referenced_table_name = ** NOT SPECIFIED **     



select
	concat(cu.table_name, '.', cu.column_name) as 'foreign_table_and_column',
    cu.table_name as 'foreign_table',
    cu.column_name as 'foreign_key',
    concat(cu.referenced_table_name, '.', cu.referenced_column_name) as 'references',
    cu.constraint_name as 'constraint name',
    col.data_type as 'data_type',
    col.column_key as 'column_key'
from
    information_schema.key_column_usage cu, information_schema.COLUMNS col
where
    referenced_table_name is not null
    and cu.table_schema = 'classicmodels'
    and cu.referenced_table_name = 'customers'
    and cu.table_schema = col.table_schema
    and cu.table_name = col.table_name
    and cu.column_name = col.column_name;
    
Select table_name from information_schema.tables where table_schema = 'classicmodels';

Select * from classicmodels.productlines;

Delete from classicmodels.productlines where productline is null ; commit;

Update classicmodels.productlines set image  = load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\motor_cycle_rsv4.png")
, htmlDescription = 'motor_cycle_rsv4'
where productLine = 'Motorcycles';
Update classicmodels.productlines set image  = load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\blue_car.png") 
, htmlDescription = 'blue car'
where productLine = 'Classic Cars';
Update classicmodels.productlines set image  = load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\airplane.png") 
, htmlDescription = 'aero plane'
where productLine = 'Planes';
Update classicmodels.productlines set image  = load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\ship.png") 
, htmlDescription = 'ship image'
where productLine = 'Ships';
Update classicmodels.productlines set image  = load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\trains.png") 
, htmlDescription = 'train image'
where productLine = 'Trains';
Update classicmodels.productlines set image  = load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\trucks.png") 
, htmlDescription = 'truck image'
where productLine = 'Trucks and Buses';
Update classicmodels.productlines set image  = load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\vintage_cars.png") 
, htmlDescription = 'vintage car'
where productLine = 'Vintage Cars';
commit;

Insert into classicmodels.productlines values ('Car Logo', 'Car Logo Pic', 'Logo', load_File("D:\\Sampath\\MS\\Dissertation\\MySQL\\Models\\cognizant_logo.png"));
commit;

Select column_name, data_type from information_schema.COLUMNS 
where table_schema = 'classicmodels' and table_name = 'payments' and column_key = 'PRI';

Select * from information_schema.COLUMNS 
where table_schema = 'classicmodels' and table_name = 'customers' and column_key is not null;

Select c.* from information_schema.COLUMNS c,  information_schema.TABLE_CONSTRAINTS tc
where c.c.table_schema = 'classicmodels' and c.table_name = 'customers' and column_key is not null;

Select * from information_schema.TABLE_CONSTRAINTS 
where table_name = 'customers';

Select * from classicmodels.customers;
Select * from classicmodels.payments;

select amount, paymentDate, customerNumber, checkNumber from  classicmodels.payments 
where customerNumber > '103' and checkNumber > 'OM314933' order by customerNumber , checkNumber limit 10;

select concat(cu.table_name, '.', cu.column_name) as 'foreign_table_and_column', 
cu.table_name as 'foreign_table', cu.column_name as 'foreign_key', 
concat(cu.referenced_table_name, '.', cu.referenced_column_name) as 'references', 
cu.constraint_name as 'constraint name', col.data_type as 'data_type', col.column_key as 'column_key' 
from  information_schema.key_column_usage cu, information_schema.COLUMNS col 
where referenced_table_name is not null 
and col.column_key = 'PRI'
and cu.table_schema = 'classicmodels' and cu.referenced_table_name = 'employees' and 
cu.table_schema = col.table_schema and cu.table_name = col.table_name;

Select * from information_schema.REFERENTIAL_CONSTRAINTS where referenced_table_name = 'customers';