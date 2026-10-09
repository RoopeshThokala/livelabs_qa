# Lab 1: Build TAP Recruitment Charts

## Introduction

Update Candidate Pipeline to accept a stage filter, then add a recruitment funnel and a time-to-hire trend to TAP Home.

Estimated Time: 15 minutes

### Objectives

In this lab, you will:

- Add a stage filter to Candidate Pipeline.
- Create funnel and line charts on TAP Home.
- Filter charts by date and drill from a funnel stage to Candidate Pipeline.

## Task 1: Prepare Candidate Pipeline for chart drill-through

1. Open TAP application and navigate to the **Candidate Pipeline** page.
    ![Navigate to page](images/nav-candidate-pipeline.png ' ')

2. In the left pane, right-click **Body** and select **Create Page Item**. 
    ![page designer](images/create-page-item.png ' ')

3. In the Property Editor, enter/select the following:
    Name: **P4_STAGE**
    Type: **Hidden**

    ![P4_STAGE hidden page item with session state maintenance enabled.](images/create-p4-stage-item.png ' ')

4. In the left pane Rendering tab, expand Body and select **Applied** region. In the Property Editor, enter the following:

    - **Source > SQL Query**: Replace with the following: 

        ```sql
        <copy>
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
        </copy>
        ```

    - Page Items to Submit: **P4\_REQ\_ID**

    ![Candidate List region source editor containing the stage and requisition filter query.](images/update-candidate-list-source.png ' ')

5. Next, select the Candidates region in the left pane. In the Property Editor, enter the following:
    - **Source > SQL Query**: Replace with the following: 

    ```sql
    <copy>
    select 
        c.candidate_id, 
        c.req_id, 
        c.first_name || ' ' || c.last_name as candidate_name,
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
    </copy>
    ```

    - Page Items to Submit: **P4\_REQ\_ID**

    ![Candidate Detail IR source editor containing the stage filter and authorization condition.](images/update-candidate-detail-source.png ' ')



## Task 2: Create the funnel and trend charts

1. On TAP **Home Page 1**, drag a **Chart** region under the metric cards. In the Property Editor, for Name, enter **Recruitment Funnel**.
    ![Page Designer showing the Recruitment Funnel chart region under the metric cards.](images/drag-drop-chart.png ' ')

2. Switch to Attributes tab in the Property Editor and for **Type**, select **Funnel**.
    ![Page Designer showing the Recruitment Funnel chart region under the metric cards.](images/funnel-chart.png ' ')

2. Select the series under Recruitment Funnel. In the Property Editor, enter/select the following:
    - Name: **Recruitment Funnel**
    - Under Source:
        - Location: Local Database
        - Type: SQL Query
        - SQL Query:
            ```sql
            <copy>
            select current_stage as stage, count(*) as cnt, round(count(*) * 100.0 / sum(count(*)) over (), 1) as pct
            from tms_candidates
            where applied_date between nvl(:P1_FROM_DATE, applied_date) and nvl(:P1_TO_DATE, applied_date)
            group by current_stage
            order by decode(current_stage, 'Applied', 1, 'Screening', 2, 'Interview', 3, 'Offer', 4, 'Hired', 5, 6);
            </copy>
            ```
        
        ![Recruitment Funnel series source and mappings with the default Employees sample series replaced.](images/configure-recruitment-funnel-series.png ' ')


3. Under Column Mapping, select the following:
    - Label: **STAGE**
    - Value: **CNT**
    - Link > Type: **Redirect to Page in this Application**

    ![Recruitment Funnel series source and mappings with the default Employees sample series replaced.](images/configure-recruitment-funnel-series2.png ' ')

4. In the Link Builder - Target dialog, enter/select the following:
    - Page: **4**
    - Set Items:
        - Name: **P4_STAGE**
        - Value: **&STAGE.**

        Click OK.

    ![Recruitment Funnel series link targeting Candidate Pipeline and passing P4_STAGE.](images/configure-funnel-drill-through.png ' ')

5. Add a second Chart region named **Average Days to Hire**, set **Start New Row** to **No**.
    ![Average Days to Hire line chart configured next to the Recruitment Funnel.](images/create-average-days-chart.png ' ')

5. Switch to Attributes tab in the Property Editor and for **Type**, select **Line**.
    ![Page Designer showing the chart region under the metric cards.](images/line-chart.png ' ')

6. Select the entry under **Series**, enter/select the following in the Property Editor:
    - Name: **Average Days to Hire (Last 6 Months)**
    - Under Source:
        - Location: **Local Database**
        - Type: **SQL Query**
        - SQL Query:
            ```sql
            <copy>
            select to_char(applied_date, 'Mon-YYYY') as month, round(avg(trunc(hire_date - applied_date))) as avg_days
            from tms_candidates
            where current_stage = 'Hired'
            and applied_date >= add_months(trunc(sysdate, 'MM'), -5)
            and applied_date between nvl(:P1_FROM_DATE, applied_date) and nvl(:P1_TO_DATE, applied_date)
            group by to_char(applied_date, 'Mon-YYYY'), trunc(applied_date, 'MM')
            order by trunc(applied_date, 'MM');
            </copy>
            ```

    ![Average Days to Hire line chart configured next to the Recruitment Funnel.](images/configure-average-days-chart.png ' ')

7. Under Column Mapping, select the following:
    - Label: **MONTH**
    - Value: **AVG_DAYS**

    ![source and mappings with the default Employees sample series replaced.](images/configure-average-days-chart2.png ' ')


## Task 3: Add and test the date filter

1. In the left pane, right-click TAP Metrics and select **Create Region Below**.
    ![create region](images/create-region.png ' ')

2. In the Property Editor, enter/select the following:
    - Name: **Date Filter**
    - Appearance > Template: **Blank with Attributes**

    ![create region](images/region-attributes.png ' ')

3. In the left pane, right-click **Date Filter** and select **Create Page Item**.
    ![create page item](images/create-date-page-item1.png ' ')

4. In the Property Editor, enter/select the following:
    - Name: **P1\_FROM\_DATE**
    - Type: **Date Picker**
    - Label: **From Date**

    ![create page item](images/date-page-item1-details.png ' ')

5. Similarly, create another page item with the following details:
    - Name: **P1\_TO\_DATE**
    - Type: **Date Picker**
    - Label: **To Date**
    - Start New Row: Toggle the button **OFF**

    ![create page item](images/create-date-page-item2.png ' ')

6. In the left pane, right-click **P1\_FROM\_DATE** and select **Create Dynamic Action**.
    ![create dynamic action](images/create-da1.png ' ')

7. In the Property Editor, enter/select the following:
    - Name: **Refresh**
    - Under **When**:
        - Event: **Change**
        - Selection Type: **Item(s)**
        - Item(s): **P1\_TO\_DATE, P1\_FROM\_DATE**

        ![create dynamic action](images/da1-details.png ' ')

8. For True Action, select the following in the Property Editor:
    - Action: **Refresh**
    - Selection Type: **Region**
    - Region: **Recruitment Funnel**

    ![create dynamic action](images/da1-true-action1.png ' ')

9. Right-click **True** and select **Create TRUE Action**.
    ![create dynamic action](images/da1-create-true-action2.png ' ')

10. For the newly created True Action, select the following in the Property Editor:
    - Action: **Refresh**
    - Selection Type: **Region**
    - Region: **Average Days to Hire**

    ![create dynamic action](images/da1-true-action2.png ' ')

11. Similarly, create a **Dynamic Action** on **P1\_TO\_DATE** page item with the following details:
    - Name: Refresh
    - Under **When**:
        - Event: **Change**
        - Selection Type: **Item(s)**
        - Item(s): **P1\_TO\_DATE, P1\_FROM\_DATE**

        ![create dynamic action](images/da2-details.png ' ')

12. For True Action, select the following in the Property Editor:
    - Action: **Refresh**
    - Selection Type: **Region**
    - Region: **Recruitment Funnel**

    ![create dynamic action](images/da2-true-action1.png ' ')

13. Create another True Action, and select the following in the Property Editor:
    - Action: **Refresh**
    - Selection Type: **Region**
    - Region: **Average Days to Hire**

    ![create dynamic action](images/da2-true-action2.png ' ')

14. Save and run TAP. Confirm the date filter refreshes both charts and a funnel stage opens Candidate Pipeline filtered by that stage.

    ![TAP dashboard showing filtered charts and a funnel drill-through result in Candidate Pipeline.](images/verify-tap-dashboard-charts.png ' ')

    ![TAP dashboard showing filtered charts and a funnel drill-through result in Candidate Pipeline.](images/verify-funnel.png ' ')

   

## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026
