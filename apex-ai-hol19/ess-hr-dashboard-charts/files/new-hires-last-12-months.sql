select to_char(hire_date, 'Mon-YYYY') as month, count(*) as hires
  from tms_employees where hire_date >= add_months(trunc(sysdate, 'MM'), -11)
 group by to_char(hire_date, 'Mon-YYYY'), trunc(hire_date, 'MM') order by trunc(hire_date, 'MM');
