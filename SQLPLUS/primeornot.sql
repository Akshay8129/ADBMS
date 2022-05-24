set serveroutput on;
declare
a number;			
b boolean;
i number;	
temp boolean;

function prime(n in out number)
return boolean is
begin
				
for i in 2..n/2
	loop
	if mod(n, i) = 0
	then 
return FALSE;
end if;
end loop;

return TRUE;
end;

begin
a :=&a;
b :=prime(a);

	if b
	then
		dbms_output.put_line('This number is prime  :');
	else
		dbms_output.put_line('This number is not prime  :');
	end if;

end;
/		


