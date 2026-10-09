case lr.status
  when 'Approved' then 'event-approved'
  when 'Pending' then 'event-pending'
  when 'Submitted' then 'event-submitted'
  when 'Rejected' then 'event-rejected'
end as css_class
