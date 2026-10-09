select current_stage as stage, count(*) as cnt,
       round(count(*) * 100.0 / sum(count(*)) over (), 1) as pct
  from tms_candidates
 where applied_date between nvl(:P1_FROM_DATE, applied_date) and nvl(:P1_TO_DATE, applied_date)
 group by current_stage
 order by decode(current_stage, 'Applied', 1, 'Screening', 2, 'Interview', 3, 'Offer', 4, 'Hired', 5, 6);
