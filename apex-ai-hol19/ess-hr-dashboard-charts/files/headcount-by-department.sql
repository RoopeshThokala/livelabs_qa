select d.name as dept, count(*) as headcount
  from tms_employees e join tms_departments d on d.dept_id = e.dept_id
 where e.status = 'Active' group by d.name order by headcount desc;
