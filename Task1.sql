drop table [dbo].[Students]

create table [dbo].[Students] (
    [Id] int identity primary key,
	[Name] nvarchar(200),
	[LastName] varchar(255),
	[Birthday] datetime,
	[Registration] nvarchar(100),
	[Gender] nvarchar(100),
	[Group] int,
	[Profession] nvarchar(100),
	[Faculty] nvarchar(100)
)
alter table   [dbo].[Students] 
drop column [Birthday]
alter table [dbo].[Students] 
add  [Birthday] date

insert into [dbo].[Students] ( [Name], [LastName], [Registration], [Gender], [Group], [Profession], [Faculty], [Birthday] )
values ( 'Aydan', 'Nurieva',  'Georgia', 'Qadin', 681, 'Programming', 'IT' ,'2004-03-19'),
        ('Gulzara', 'Ahmadli','Azerbaijan', 'Qadin', 683, 'Programming', 'IT', '2004-12-12'),
		 ( 'Nurgun', 'Orucova',  'Azerbaijan', 'Qadin', 681, 'Programming', 'IT', '2004-09-07'),
		  ( 'Gunel', 'Abbasova',  'Azerbaijan', 'Qadin', 683, 'Programming', 'IT', '2004-08-11'),
		   ( 'Nigar', 'Memmedli',  'Azerbaijan', 'Qadin', 681, 'Programming', 'IT', '2004-03-19');

  select * from [dbo].[Students]
  where [Group] = 683

  select [Name],[LastName] from [dbo].[Students]
  where [Group] = 681

  select [LastName] from [dbo].[Students]
  order by [LastName] asc 

  select * from [dbo].[Students]
  where [Name] not like '%[ey]%'