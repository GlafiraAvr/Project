SET SQL DIALECT 3;
create domain TypeSShift
as char(2)
check ((value = 'V') or (value = 'K')   );




create  table ServantTable (
   id smallint not null,
   shiftnumber smallint not null,
   shiftdate timestamp not null,
   shiftType TypeSShift not null,
   constraint pk_people primary key (id)

);

insert into  ServantTable
(id,shiftnumber, shiftdate,shiftType)
values
(1,1,current_timestamp,'V');

insert into  ServantTable
(id,shiftnumber, shiftdate,shiftType)
values
(2,1,current_timestamp,'K');

