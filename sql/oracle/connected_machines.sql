set linesize 2000
col machine for a32
col username for a32
col osuser for a32
select nvl(username,'BACKGROUND') username,osuser,machine,count(*) 
from v$session 
group by username,osuser,machine 
order by 1,2 nulls last
/
