set serveroutput on
DECLARE

a number;
b number;
procedure square(x in number,y out number)is

BEGIN
if x>0 then
y:=x*x;
else
--dbms_output.put_line('enter correct value');
end if;


end;
BEGIN
a:=&a;
square(a,b);

dbms_output.put_line('the square is :' ||b);

END;
/