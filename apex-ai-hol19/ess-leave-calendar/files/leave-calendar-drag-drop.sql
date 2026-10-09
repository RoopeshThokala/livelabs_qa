declare
    l_new_start date;
    l_old_start date;
    l_old_end date;
    l_duration number;
begin
    if to_number(:APEX$PK_VALUE) > 0 then
        l_new_start := to_date(:APEX$NEW_START_DATE, 'YYYYMMDDHH24MISS');
        select start_date, end_date into l_old_start, l_old_end
          from tms_leave_requests
         where request_id = to_number(:APEX$PK_VALUE)
           and status in ('Submitted', 'Pending');
        l_duration := trunc(l_old_end) - trunc(l_old_start);
        update tms_leave_requests set start_date = trunc(l_new_start), end_date = trunc(l_new_start) + l_duration
         where request_id = to_number(:APEX$PK_VALUE);
    else
        raise_application_error(-20002, 'Public holidays cannot be rescheduled.');
    end if;
exception
    when no_data_found then raise_application_error(-20001, 'Only Submitted or Pending leave requests can be rescheduled.');
end;
