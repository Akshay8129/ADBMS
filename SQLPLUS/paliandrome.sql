set serveroutput on;
declare


	n number:=&n;
	m number;
	temp number:=0;
	rem number;

begin
	
	m:=n;
	
	
	while n>0
	loop
		rem:=mod(n,10);
		temp:=(temp*10)+rem;
		n:=trunc(n/10);
	end loop;
	
	if m = temp
	then
		dbms_output.put_line('its a paliandrome');
	else
		dbms_output.put_line('it is not a paliandrome');
	end if;
end;
/


