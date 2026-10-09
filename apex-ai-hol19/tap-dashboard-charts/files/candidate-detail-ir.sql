select c.candidate_id, c.req_id, c.first_name || ' ' || c.last_name as candidate_name,
       d.name as department_name, c.email, c.phone, c.resume_blob, c.source,
       c.current_stage as stage, c.applied_date,
       trunc(sysdate - c.applied_date) as days_since_applied, c.diversity_flag,
       c.ai_score, c.created_by, c.created_at, c.updated_by, c.updated_at
  from tms_candidates c
  left join tms_job_requisitions r on c.req_id = r.req_id
  left join tms_departments d on r.dept_id = d.dept_id
 where (:P4_REQ_ID is null or c.req_id = :P4_REQ_ID)
   and (:P4_STAGE is null or c.current_stage = :P4_STAGE)
   and (c.req_id in (select req_id from tms_job_requisitions where requested_by = :APP_EMPLOYEE_ID)
        or :IS_TA_ADMIN = 'Y');
