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
    
    
SELECT table_name, column_name, data_type, column_key
    FROM information_schema.COLUMNS
    WHERE table_schema = 'information_schema'
    and table_name = 'key_column_usage'
    ORDER BY table_name DESC;     
    
Select * from information_schema.COLUMNS;

Select * from  information_schema.key_column_usage;
        
select  table_name as 'foreign_table', column_name as 'foreign_key', concat(referenced_table_name, '.', referenced_column_name) as 'references', 
data_type as 'data_type1', column_key as 'column_key', constraint_name as 'constraint_name' 
from information_schema.key_column_usage, information_schema.COLUMNS where referenced_table_name is not null  
and table_schema = '' and referenced_table_name = ** NOT SPECIFIED **     