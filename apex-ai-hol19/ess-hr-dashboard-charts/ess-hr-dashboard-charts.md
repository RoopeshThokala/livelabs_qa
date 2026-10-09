# Lab 2: Build ESS HR Dashboard Charts

## Introduction

Add headcount, leave-distribution, and new-hire charts to the ESS Home page. Replace the default chart gallery sample series before you configure each chart.

Estimated Time: 10 minutes

### Objectives

In this lab, you will:

- Add bar, pie, and line charts to ESS Home.
- Map each chart to a query result.
- Apply consistent dashboard styling.

## Task 1: Add the Headcount chart

1. Open ESS Home in Page Designer. Drag a **Chart** region under **Your Onboarding Progress** Metric Card region.

    ![ESS Home Page Designer showing the Headcount by Department chart region.](images/insert-chart.png ' ')

2.  Name it **Headcount by Department**.
    ![ESS Home Page Designer showing the Headcount by Department chart region.](images/create-headcount-chart.png ' ')

3. Switch to Attributes tab and for Type, select Bar.
    ![ESS Home Page Designer showing the Headcount by Department chart region.](images/bar-chart.png ' ')

4. Replace the default Employees sample series with the following:
    - Name: **Headcount**
    - SQL Query:
        ```sql
        <copy>
        select d.name as dept, count(*) as headcount
        from tms_employees e join tms_departments d on d.dept_id = e.dept_id
        where e.status = 'Active' group by d.name order by headcount desc;
        </copy>
        ```

    ![Headcount chart series configured with department labels and headcount values.](images/configure-headcount-chart-series1.png ' ')

5. Under Column Mapping, select the following:
    - Label: **DEPT**
    - Value: **HEADCOUNT**

    ![Headcount chart series configured with department labels and headcount values.](images/configure-headcount-chart-series2.png ' ')

## Task 2: Add leave and new-hire charts

1. Add a **Pie** chart below Headcount named **Leave Requests by Type (Current Year)**. Toggle the **Start New Row** button to **Off**.

    ![Leave Requests by Type pie chart with the legend enabled.](images/create-leave-distribution-chart.png ' ')

2. Switch to Attributes tab. For type, select **Pie**.
    ![Leave Requests by Type pie chart with the legend enabled.](images/pie-chart.png ' ')

3. Select the Series and enter/select the following:
    - Name: **Leave Requests**
    - SQL Query: 
    ```sql
    <copy>
    SELECT lt.name        AS leave_type,
       COUNT(*)       AS requests
    FROM   tms_leave_requests lr
    JOIN   tms_leave_types   lt ON lt.leave_type_id = lr.leave_type_id
    WHERE  lr.status = 'Approved'
    AND  EXTRACT(YEAR FROM lr.start_date) = EXTRACT(YEAR FROM SYSDATE)
    GROUP  BY lt.name;
    </copy>
    ```
    ![Leave Requests by Type pie chart with the legend enabled.](images/configure-series1.png ' ')

4. Under Column Mapping, select the following:
    - Label: **LEAVE_TYPE**
    - Value: **REQUESTS**

    ![Leave Requests by Type pie chart with the legend enabled.](images/configure-series2.png ' ')

    - Legend > Show: Toggle the button to **ON**

    ![Leave Requests by Type pie chart with the legend enabled.](images/configure-series3.png ' ')


5. Add a **Line** chart below Leave Requests (Current Year) named **New Hires – Last 12 Months**. Toggle **Start New Row** to **Off**.

    ![New Hires line chart configured in the third dashboard column.](images/create-new-hires-chart.png ' ')

6. Switch to Attributes tab, set Type to **Line**.
    ![New Hires line chart configured in the third dashboard column.](images/line-chart.png ' ')

6. Select the Series, enter/select the following:
    - Name: **New Hires**
    - SQL Query:
    ```sql
    <copy>
    SELECT TO_CHAR(hire_date,'Mon-YYYY')   AS hire_month,
       COUNT(*)                        AS hires
    FROM   tms_employees
    WHERE  hire_date >= ADD_MONTHS(TRUNC(SYSDATE,'MM'),-11)
    GROUP  BY TO_CHAR(hire_date,'Mon-YYYY'),
            TRUNC(hire_date,'MM')
    ORDER  BY TRUNC(hire_date,'MM')
    </copy>
    ```
    ![New Hires line chart configured in the third dashboard column.](images/configure-new-hire1.png ' ')
    
7. Under Column Mapping, select the following:
    - Label: **HIRE_MONTH**
    - Value: **HIRES**

    ![New Hires line chart configured in the third dashboard column.](images/configure-new-hire2.png ' ')

## Task 3: Apply dashboard styling

1. For each chart region, open **Appearance** > **Template Options** and for Style, select **Remove UI Decoration**. Click **Ok**.

    ![Chart region template options with Remove UI Decoration selected.](images/remove-chart-ui-decoration.png ' ')

2. **Save and Run** the ESS app. Confirm all three charts render with live data.

    ![ESS Home dashboard showing the headcount, leave, and new-hire charts.](images/verify-ess-dashboard-charts.png ' ')

## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026
