select to_char(applied_date, 'Mon-YYYY') as month,
       round(avg(trunc(hire_date - applied_date))) as avg_days
  from tms_candidates
 where current_stage = 'Hired'
   and applied_date >= add_months(trunc(sysdate, 'MM'), -5)
   and applied_date between nvl(:P1_FROM_DATE, applied_date) and nvl(:P1_TO_DATE, applied_date)
 group by to_char(applied_date, 'Mon-YYYY'), trunc(applied_date, 'MM')
 order by trunc(applied_date, 'MM');
