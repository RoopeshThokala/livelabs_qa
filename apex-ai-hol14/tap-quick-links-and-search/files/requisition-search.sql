select r.req_id,
       j.title,
       r.status,
       d.name as department_name,
       j.title as result_title,
       'Status: ' || r.status || case when d.name is not null then ' - ' || d.name end as result_description
  from tms_job_requisitions r
  join tms_jobs j on j.job_id = r.job_id
  left join tms_departments d on d.dept_id = r.dept_id;
