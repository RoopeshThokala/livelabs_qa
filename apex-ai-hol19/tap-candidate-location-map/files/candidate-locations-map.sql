select candidate_id, first_name || ' ' || last_name as candidate_name,
       current_stage, geo_lat, geo_lng
  from tms_candidates
 where geo_lat is not null and geo_lng is not null;
