select e.employee_id, e.first_name, e.last_name, e.email,
       e.first_name || ' ' || e.last_name as result_title,
       'My Profile - ' || e.email as result_description
  from tms_employees e
 where upper(e.email) = upper(:APP_USER);
