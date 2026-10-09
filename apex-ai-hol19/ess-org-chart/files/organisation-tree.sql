select e.employee_id as id, e.manager_id as parent_id,
       e.first_name || ' ' || e.last_name as title,
       j.title || ' - ' || d.name as tooltip
  from tms_employees e
  left join tms_jobs j on j.job_id = e.job_id
  left join tms_departments d on d.dept_id = e.dept_id
 where e.status = 'Active'
 start with e.manager_id is null
 connect by prior e.employee_id = e.manager_id
 order siblings by e.first_name, e.last_name;
