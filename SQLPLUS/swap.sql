set serveroutput on
DECLARE

a number;
b number;
c number;
procedure swap(x in out number,y in out number,z in out number)as

BEGIN
z:=x;
x:=y;
y:=z;

end;
BEGIN
a:=&a;
b:=&b;
swap(a,b,c);

dbms_output.put_line('the swaped numbers are a='||a);
dbms_output.put_line('b='||b);

END;
/