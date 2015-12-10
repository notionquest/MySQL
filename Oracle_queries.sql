Select * from all_tables where table_name like 'DEPA%';

Select * from ALL_TABLES where owner = 'HR';
Select * from ALL_TABLES where  table_name = 'DEPARTMENTS';
Select * from ALL_TAB_COLS where owner = 'HR' and table_name = 'DEPARTMENTS';

Select * from HR.DEPARTMENTS where table_name like 'DEPA%';

Select * from HR.EMPLOYEES;

Select * from USER$;

ALTER USER SCOTT IDENTIFIED BY TIGER ACCOUNT UNLOCK;
ALTER USER HR IDENTIFIED BY HR ACCOUNT UNLOCK;
ALTER USER SYSTEM IDENTIFIED BY MANAGER ACCOUNT UNLOCK;

GRANT CONNECT, RESOURCE to hr;

SELECT ucc.table_name
      ,ucc.constraint_name  
      ,ucc.column_name
      ,ucc.position
      ,uc.status
  FROM user_cons_columns   ucc
      ,user_constraints    uc
 WHERE ucc.constraint_name = uc.constraint_name
   AND ucc.table_name      = uc.table_name
   AND uc.constraint_type  = 'P'
   AND uc.table_name       = UPPER('DEPARTMENTS') ;
   
Select * from ALL_CONSTRAINTS where owner = 'HR' and table_name like 'DEPARTMENTS%' ;
Select * from DBA_CONS_COLUMNS where owner = 'HR' and table_name like 'DEPARTMENTS%' ;
Select * from ALL_TAB_COLUMNS where owner = 'HR' and table_name like 'DEPARTMENTS%' ;
Select * from ALL_TAB_COLS where owner = 'HR' and table_name = 'DEPARTMENTS';
Select * from all_constraints where owner = 'HR' and table_name = 'DEPARTMENTS' and CONSTRAINT_TYPE = 'P';
Select * from ALL_CONS_COLUMNS where owner = 'HR' and table_name = 'DEPARTMENTS' ;


Select ac.column_name, ac.DATA_TYPE from ALL_TAB_COLS ac where ac.COLUMN_NAME in 
(Select atc.column_name  from ALL_CONS_COLUMNS atc, ALL_CONSTRAINTS ac 
where atc.OWNER = ac.OWNER 
and atc.TABLE_NAME = ac.TABLE_NAME 
and ac.CONSTRAINT_NAME = atc.CONSTRAINT_NAME
and atc.owner = 'HR' 
and atc.table_name = 'DEPARTMENTS' 
and ac.CONSTRAINT_TYPE = 'P')
and ac.owner = 'HR'
and ac.table_name = 'DEPARTMENTS';


Select ac.column_name as "column_name", 
ac.DATA_TYPE as "data_type" from 
ALL_TAB_COLS ac where ac.COLUMN_NAME in  
(Select atc.column_name  from ALL_CONS_COLUMNS atc, ALL_CONSTRAINTS ac 
where atc.OWNER = ac.OWNER  and atc.TABLE_NAME = ac.TABLE_NAME  and 
ac.CONSTRAINT_NAME = atc.CONSTRAINT_NAME  and atc.owner = 'HR'  and atc.table_name = 'DEPARTMENTS'  
and ac.CONSTRAINT_TYPE = 'P')  and ac.owner = 'HR'  and ac.table_name = 'DEPARTMENTS' ;