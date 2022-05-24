set serveroutput on;
create or replace trigger display_salary_changes
before delete or insert or update on customers
for each row
when (NEW.ID > 0)
declare
sal_diff number;
begin
sal_diff:= :NEW.salary - :OLD.salary;
dbms_output.put_line('old salary:'||:OLD.salary);
dbms_output.put_line('new salary:'||:NEW.salary);
dbms_output.put_line('salary diffrence'||sal_diff);
end;
/



set serveroutput on;
declare
total_rows number(2);
begin
update customers
set salary = salary + 5000;
if sql%notfound 
then
dbms_output.put_line('no customers updated');
elsif sql%found 
then
total_rows :=sql%rowcount;
dbms_output.put_line(total_rows || 'customers updated');
end if;
end;
/