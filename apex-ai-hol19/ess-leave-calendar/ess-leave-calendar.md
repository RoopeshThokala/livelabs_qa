# Enable ESS Leave Calendar Rescheduling

## Introduction

In this lab, you update the native ESS Leave Calendar so submitted and pending requests can be dragged to a new date, while approved, rejected, and public-holiday entries remain protected.

Estimated Lab Time: 5 minutes

### Where We Are

ESS displays leave requests and public holidays in the Leave Calendar. You will enable drag and drop for submitted and pending leave requests and keep the other calendar entries protected.

### Objectives

In this lab, you will:

- Add Submitted leave-request styling.
- Enable drag and drop with validation PL/SQL.
- Test rescheduling while preserving leave duration.

## Task 1: Update the calendar styling and settings

1. Return to **App Builder**, open **Employee Self-Service Portal (ESS)**. Navigate to the **Leave Calendar** page in Page Designer.

2. Under **Body**, select **Leave Calendar** and replace **Source > SQL Query** with the following:
    ```sql
    <copy>
    SELECT
    lr.request_id                 AS event_id,
    lt.name || ': ' || lr.status  AS event_title,
    lr.start_date                 AS start_date,
    lr.end_date + 1               AS end_date,   -- all-day inclusive
    CASE lr.status
      WHEN 'Approved' THEN 'event-approved'
      WHEN 'Pending'  THEN 'event-pending'
      WHEN 'Submitted' THEN 'event-submitted'
      WHEN 'Rejected' THEN 'event-rejected'
    END                            AS css_class
    FROM tms_leave_requests lr
    JOIN tms_leave_types    lt ON lt.leave_type_id = lr.leave_type_id
    JOIN tms_employees      e  ON e.employee_id   = lr.employee_id
    WHERE (
        lr.employee_id = :APP_EMPLOYEE_ID
        OR EXISTS (
            SELECT 1
            FROM tms_roles r
            JOIN tms_employee_roles er
                ON er.role_id = r.role_id
            WHERE r.role_code = 'HR_ADMIN'
            AND er.employee_id = :APP_EMPLOYEE_ID
        )
        )
    UNION ALL

    SELECT
        ROWNUM * -1                   AS event_id,      -- negative to avoid colliding with request_id PKs
        ph.localname                  AS event_title,
        ph.date_                      AS start_date,
        ph.date_ + 1                  AS end_date,       -- all-day inclusive, same convention as leave rows
        'event-holiday'               AS css_class
    FROM public_holidays_sync ph
    </copy>
    ```

    ![Leave Calendar SQL source with the Submitted status CSS class expression.](images/update-leave-calendar-sql.png ' ')

3. Switch to the **Attributes** tab. Under **Settings**, enter/select the following:
    - Primary Key Column: **EVENT_ID** 
    - Drag and Drop: **On**
    - Drag and Drop PL/SQL Code:
        ```sql
        <copy>
DECLARE
    l_request_id NUMBER;
    l_new_start  DATE;
    l_new_end    DATE;
    l_old_start  DATE;
    l_old_end    DATE;
    l_delta      NUMBER;
BEGIN
    l_request_id := TO_NUMBER(:APEX$PK_VALUE);

    IF l_request_id <= 0 THEN
        RAISE_APPLICATION_ERROR(
            -20002,
            'Public holidays cannot be rescheduled.'
        );
    END IF;

    l_new_start :=
        TRUNC(TO_DATE(:APEX$NEW_START_DATE, 'YYYYMMDDHH24MISS'));

    SELECT start_date, end_date
      INTO l_old_start, l_old_end
      FROM tms_leave_requests
     WHERE request_id = l_request_id
       FOR UPDATE;

    IF :APEX$NEW_END_DATE IS NOT NULL THEN
        l_new_end :=
            TRUNC(TO_DATE(:APEX$NEW_END_DATE, 'YYYYMMDDHH24MISS')) - 1;
    END IF;

    IF l_new_start <> TRUNC(l_old_start) THEN
        l_delta   := l_new_start - TRUNC(l_old_start);
        l_new_end := TRUNC(l_old_end) + l_delta;
    ELSIF l_new_end IS NULL THEN
        l_new_end := l_new_start + (TRUNC(l_old_end) - TRUNC(l_old_start));
    END IF;

    UPDATE tms_leave_requests
       SET start_date = l_new_start,
           end_date   = l_new_end
     WHERE request_id = l_request_id;

    IF SQL%ROWCOUNT = 0 THEN
        RAISE_APPLICATION_ERROR(-20003, 'Leave request was not found.');
    END IF;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RAISE_APPLICATION_ERROR(-20003, 'Leave request was not found.');
END;
        </copy>
        ```
    ![Calendar settings with EVENT_ID as the primary key and drag and drop enabled.](images/enable-calendar-drag-drop.png ' ')

4. For **CSS Class**, select **CSS_CLASS**.

5. Add the following CSS for submitted leave requests:

    ```css
    <copy>
    .event-submitted {
        background-color: #3b82f6;
        border-color: #3b82f6;
    }
    </copy>
    ```

    ![Stylesheet editor containing the event-submitted CSS class.](images/add-submitted-calendar-css.png ' ')

## Task 2: Save and Run the App

1. Save and run the page. Drag a Submitted or Pending request and confirm its dates change while the original leave duration is preserved.

2. Attempt to drag an Approved, Rejected, or Public Holiday entry and confirm the expected protection error occurs.

    ![Leave Calendar showing a validation message for a protected event.](images/verify-calendar-protected-events.png ' ')

## Summary

You updated the ESS Leave Calendar query and settings so submitted and pending leave requests can be rescheduled. Approved, rejected, and public-holiday entries remain protected.

You may now **proceed to the next lab**.

## Acknowledgements

- **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
