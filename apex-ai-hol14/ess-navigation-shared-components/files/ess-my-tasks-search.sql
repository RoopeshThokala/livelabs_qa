select t.task_id, t.task_name, t.status, t.due_date,
       t.task_name as result_title,
       'Status: ' || t.status || case when t.due_date is not null then ' - Due: ' || to_char(t.due_date, 'DD-MON-YYYY') end as result_description
  from tms_onboarding_tasks t
  join tms_employees e on e.employee_id = t.employee_id
 where upper(e.email) = upper(:APP_USER);
