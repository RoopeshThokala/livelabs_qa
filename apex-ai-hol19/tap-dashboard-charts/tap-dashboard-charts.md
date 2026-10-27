# Build TAP Recruitment Charts

## Introduction

In this lab, you update Candidate Pipeline to accept a stage filter, then add a recruitment funnel and a time-to-hire trend to TAP Home.

Estimated Lab Time: 15 minutes

### Where We Are

TAP displays Candidate Pipeline data. You will add a stage filter, recruitment charts, a date filter, and funnel drill-through on the TAP Home page.

### Objectives

In this lab, you will:

- Add a stage filter to Candidate Pipeline.
- Create funnel and line charts on TAP Home.
- Filter charts by date and drill from a funnel stage to Candidate Pipeline.

### Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following application:

- **<a href="../introduction/files/tap-export13.sql" download="tap-export13.sql">Talent Acquisition Portal</a>**

Import it into your workspace. In **App Builder**, select **Import**, upload `tap-export13.sql`, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application export was created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Task 1: Prepare Candidate Pipeline for chart drill-through

1. Open the TAP application and navigate to the **Candidate Pipeline** page.

    > **Note:** If your page number differs, select the page named **Candidate Pipeline**.

    ![Open the TAP Candidate Pipeline page.](images/nav-candidate-pipeline.png ' ')

2. In the Rendering pane, right-click **Body** and select **Create Page Item**.

    ![Create the P4_STAGE page item.](images/create-page-item.png ' ')

3. In the Property Editor, enter/select the following:

    - Name: **P4_STAGE**
    - Type: **Hidden**

    ![P4_STAGE hidden page item with session state maintenance enabled.](images/create-p4-stage-item.png ' ')

4. In the left pane Rendering tab, expand Body and select the **Applied** region. In the Property Editor, enter the following:

    - **Source > SQL Query**: Replace with the following:

        ```sql
        <copy>
select
  c.candidate_id,
  c.req_id,
  c.first_name || ' ' || c.last_name as candidate_name,
  d.name as department_name,
  c.current_stage,
  'Applied: ' || to_char(c.applied_date, 'DD-Mon-YYYY') as applied_on
from
  tms_candidates c
  left join tms_job_requisitions r on c.req_id = r.req_id
  left join tms_departments d on r.dept_id = d.dept_id
where
  (
    :P4_REQ_ID is null
    or c.req_id = :P4_REQ_ID
  )
  and (
    :P4_STAGE is null
    or c.current_stage = :P4_STAGE
  )
order by
  c.applied_date desc;
        </copy>
        ```

    - Page Items to Submit: **P4\_REQ\_ID**

    ![Candidate List region source editor containing the stage and requisition filter query.](images/update-candidate-list-source.png ' ')

5. Next, select the **Candidates** region in the left pane. In the Property Editor, enter the following:
    - **Source > SQL Query**: Replace with the following:

    ```sql
    <copy>
    SELECT
    c.candidate_id,
    c.req_id,
    c.first_name || ' ' || c.last_name         AS candidate_name,
    d.name                                     AS department_name,
    c.email,
    c.phone,
    c.resume_blob,
    c.source,
    c.current_stage                            AS stage,
    c.applied_date,
    TRUNC(SYSDATE - c.applied_date)            AS days_since_applied,
    c.diversity_flag,
    c.ai_score,
    c.created_by,
    c.created,
    c.updated_by,
    c.updated
    FROM   tms_candidates       c
LEFT  JOIN tms_job_requisitions r ON c.req_id = r.req_id
LEFT  JOIN tms_departments       d ON r.dept_id = d.dept_id
WHERE  ( :P4_REQ_ID IS NULL
          OR c.req_id = Lower(:P4_REQ_ID) )
       AND ( c.req_id IN (SELECT r.req_id
                          FROM   tms_job_requisitions r
                          WHERE  lower(r.requested_by) = lower(:APP_USER))
              OR EXISTS (SELECT 1
                         FROM   tms_roles r
                                JOIN tms_employee_roles er
                                  ON er.role_id = r.role_id
                         WHERE  r.role_code = 'TA_ADMIN'
                                AND er.employee_id = :APP_EMPLOYEE_ID) )
  AND ( :P4_STAGE    IS NULL OR c.current_stage = :P4_STAGE );
    </copy>
    ```

    - Page Items to Submit: **P4\_REQ\_ID**

    ![Candidate Detail IR source editor containing the stage filter and authorization condition.](images/update-candidate-detail-source.png ' ')

## Task 2: Create the funnel and trend charts

1. Navigate to **Page 1: Home**, drag a **Chart** region under the metric cards. In the Property Editor, for Name, enter **Recruitment Funnel**.

    > **Note:** If your page number differs, select the TAP Home page.

    ![Page Designer showing the Recruitment Funnel chart region under the metric cards.](images/drag-drop-chart.png ' ')

2. Name the newly created region as **Recruitment Funnel**. Switch to the Attributes tab in the Property Editor and for **Type**, select **Funnel**.

    ![Page Designer showing the Recruitment Funnel chart region under the metric cards.](images/funnel-chart.png ' ')

3. Select the series under Recruitment Funnel. In the Property Editor, enter/select the following:
    - Name: **Recruitment Funnel**
    - Under Source:
        - Location: Local Database
        - Type: SQL Query
        - SQL Query:
            ```sql
            <copy>
SELECT current_stage                          AS stage,
       Count(*)                               AS cnt,
       Round(Count(*) * 100.0 / Sum(Count(*))
                                  OVER (), 1) AS pct
FROM   tms_candidates
WHERE  applied_date BETWEEN Nvl(:P1_FROM_DATE, applied_date) AND
                            Nvl(:P1_TO_DATE, applied_date)
GROUP  BY current_stage
ORDER  BY Decode(current_stage, 'Applied', 1,
                                'Screening', 2,
                                'Interview', 3,
                                'Offer', 4,
                                'Hired', 5,
                                6);
            </copy>
            ```

        ![Recruitment Funnel series source and mappings with the default Employees sample series replaced.](images/configure-recruitment-funnel-series.png ' ')

4. Under Column Mapping, select the following:
    - Label: **STAGE**
    - Value: **CNT**
    - Link > Type: **Redirect to Page in this Application**

    ![Recruitment Funnel series source and mappings with the default Employees sample series replaced.](images/configure-recruitment-funnel-series2.png ' ')

5. In the Link Builder - Target dialog, enter/select the following:
    - Page: **4 : Candidate Pipeline**
    - Set Items:
        - Name: **P4_STAGE**
        - Value: **&STAGE.**

        Click OK.

    ![Recruitment Funnel series link targeting Candidate Pipeline and passing P4_STAGE.](images/configure-funnel-drill-through.png ' ')

6. Add a second Chart region named **Average Days to Hire** and set **Start New Row** to **No**.
    ![Average Days to Hire line chart configured next to the Recruitment Funnel.](images/create-average-days-chart.png ' ')

7. Switch to the Attributes tab in the Property Editor and for **Type**, select **Line**.
    ![Page Designer showing the chart region under the metric cards.](images/line-chart.png ' ')

8. Select the entry under **Series** and enter/select the following in the Property Editor:
    - Name: **Average Days to Hire (Last 6 Months)**
    - Under Source:
        - Location: **Local Database**
        - Type: **SQL Query**
        - SQL Query:
            ```sql
            <copy>
SELECT TO_CHAR(applied_date,'Mon-YYYY')      AS month,
          ROUND(AVG(TRUNC(SYSDATE - applied_date))) AS avg_days
   FROM   tms_candidates
   WHERE  current_stage = 'Hired'
     AND  applied_date >= ADD_MONTHS(TRUNC(SYSDATE,'MM'), -5)
     AND  applied_date BETWEEN NVL(:P1_FROM_DATE, applied_date)
                          AND NVL(:P1_TO_DATE  , applied_date)
   GROUP  BY TO_CHAR(applied_date,'Mon-YYYY'),
             TRUNC(applied_date,'MM')
   ORDER  BY TRUNC(applied_date,'MM')
            </copy>
            ```

    ![Average Days to Hire line chart configured next to the Recruitment Funnel.](images/configure-average-days-chart.png ' ')

9. Under Column Mapping, select the following:
    - Label: **MONTH**
    - Value: **AVG_DAYS**

    ![source and mappings with the default Employees sample series replaced.](images/configure-average-days-chart2.png ' ')


## Task 3: Add and test the date filter

1. In the Rendering pane, right-click **TAP Metrics** and select **Create Region Below**.

    ![Create the Date Filter region.](images/create-region.png ' ')

2. In the Property Editor, enter/select the following:
    - Name: **Date Filter**
    - Appearance > Template: **Blank with Attributes**

    ![Configure the Date Filter region.](images/region-attributes.png ' ')

3. In the Rendering pane, right-click **Date Filter** and select **Create Page Item**.

    ![Create the P1_FROM_DATE page item.](images/create-date-page-item1.png ' ')

4. In the Property Editor, enter/select the following:
    - Name: **P1\_FROM\_DATE**
    - Type: **Date Picker**
    - Label: **From Date**

    ![Configure the P1_FROM_DATE page item.](images/date-page-item1-details.png ' ')

5. Create another page item with the following details:
    - Name: **P1\_TO\_DATE**
    - Type: **Date Picker**
    - Label: **To Date**
    - Start New Row: Toggle the button **OFF**

    ![Create the P1_TO_DATE page item.](images/create-date-page-item2.png ' ')

6. In the Rendering pane, right-click **P1\_FROM\_DATE** and select **Create Dynamic Action**.

    ![Create the P1_FROM_DATE dynamic action.](images/create-da1.png ' ')

7. In the Property Editor, enter/select the following:
    - Name: **Refresh**
    - Under **When**:
        - Event: **Change**
        - Selection Type: **Item(s)**
        - Item(s): **P1\_TO\_DATE, P1\_FROM\_DATE**

        ![Configure the P1_FROM_DATE dynamic action.](images/da1-details.png ' ')

8. For True Action, select the following in the Property Editor:
    - Action: **Refresh**
    - Selection Type: **Region**
    - Region: **Recruitment Funnel**

    ![Configure the first P1_FROM_DATE true action.](images/da1-true-action1.png ' ')

9. Right-click **True** and select **Create TRUE Action**.
    ![Create the second P1_FROM_DATE true action.](images/da1-create-true-action2.png ' ')

10. For the newly created True Action, select the following in the Property Editor:
    - Action: **Refresh**
    - Selection Type: **Region**
    - Region: **Average Days to Hire**

    ![Configure the second P1_FROM_DATE true action.](images/da1-true-action2.png ' ')

11. Save and run TAP. Confirm the date filter refreshes both charts and a funnel stage opens Candidate Pipeline filtered by that stage.

    ![TAP dashboard showing filtered charts and a funnel drill-through result in Candidate Pipeline.](images/verify-tap-dashboard-charts.png ' ')

    ![TAP dashboard showing filtered charts and a funnel drill-through result in Candidate Pipeline.](images/verify-funnel.png ' ')

## Summary

You added a stage filter to Candidate Pipeline, created recruitment funnel and average-days-to-hire charts, and added a date filter that refreshes both charts. The funnel drill-through opens Candidate Pipeline for the selected stage.

You may now **proceed to the next lab**.

## Acknowledgements

- **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
