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



