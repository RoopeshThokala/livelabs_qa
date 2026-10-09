select c.candidate_id,
       c.first_name,
       c.last_name,
       c.email,
       c.current_stage,
       c.first_name || ' ' || c.last_name as result_title,
       'Stage: ' || c.current_stage as result_description
  from tms_candidates c;
