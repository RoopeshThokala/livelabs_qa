select lt.name as name, count(*) as requests
  from tms_leave_requests lr join tms_leave_types lt on lt.leave_type_id = lr.leave_type_id
 where lr.status = 'Approved' and extract(year from lr.start_date) = extract(year from sysdate)
 group by lt.name;
