create table expenses 
( exp_id			int identity primary key,
  exp_desc          varchar(100) not null,
  exp_amount        money,
  exp_date          datetime
)