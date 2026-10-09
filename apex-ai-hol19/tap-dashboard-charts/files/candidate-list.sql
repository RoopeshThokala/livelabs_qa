select c.candidate_id, c.req_id,
       c.first_name || ' ' || c.last_name as candidate_name,
       d.name as department_name, c.current_stage,
       'Applied: ' || to_char(c.applied_date, 'DD-Mon-YYYY') as applied_on
  from tms_candidates c
  left join tms_job_requisitions r on c.req_id = r.req_id
  left join tms_departments d on r.dept_id = d.dept_id
 where (:P4_REQ_ID is null or c.req_id = :P4_REQ_ID)
   and (:P4_STAGE is null or c.current_stage = :P4_STAGE)
 order by c.applied_date desc;
