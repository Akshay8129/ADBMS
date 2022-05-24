set serveroutput on;

DECLARE 
a number;
b number;
c number;
procedure findmin(x in number, y in number, z out number)is

BEGIN
if x< y then
  z:=x;
  else
  z:=y;
end if ;
end;

BEGIN
a:=&a;
b:=&b;
findmin(a,b,c);
dbms_output.put_line('minimum of :' ||a|| ' and ' ||b|| ' is ' || c);
END;
/

