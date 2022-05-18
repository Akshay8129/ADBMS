SET SERVEROUTPUT ON;
DECLARE

num NUMBER:=&num;
rev NUMBER;

BEGIN



rev:=0;

WHILE num>0 LOOP


rev:=(rev*10) + mod(num,10);

num:=floor(num/10);
END LOOP;
DBMS_OUTPUT.PUT_LINE('the reverse of the number is' ||rev);
END;
/						

