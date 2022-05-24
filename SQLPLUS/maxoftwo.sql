set serveroutput on
DECLARE
a number;
b number;
c number;
function findmax(x in number, y in number)
return number
is
z number;

BEGIN
if x > y then
z:=x;
else
z:=y;
end if;
return z;
end;
begin
a:=&a;
b:=&b;
c:=findmax(a,b);
dbms_output.put_line('maximum of' ||a|| ' and '||b|| ' is ' ||c);


END;
/