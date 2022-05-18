set serveroutput on;
 declare

	n number:=&n;
	s number:=0;
	r number;
	len number;
	m number;

begin
	m := n;

	len := length(to_char(n));
	
	
	while n>0
	loop
		r := mod(n , 10);
		s := s + power(r , len);
		n := trunc(n / 10);
	end loop;
	
	if m = s
	then
		dbms_output.put_line('it is an amstrong number');
	else
		dbms_output.put_line('it is not an amstrong number');
	end if;
	
end;
/
-- End program
