# Lab 4: Create the ESS Organisation Tree

## Introduction

Create an ESS page that displays active employees in their manager hierarchy. Each tree node shows the employee name and provides job and department details in a tooltip.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

- Create the Our Organisation page.
- Add a native Tree region.
- Configure hierarchy and node mappings.

## Task 1: Create the organisation page

1. From the ESS Application homepage, click **Create Page**.

    ![Create Page wizard showing Our Organisation under the HR Info navigation and breadcrumb parents.](images/create-page.png ' ')

2. Select **Blank Page**.
    ![Create Page wizard showing Our Organisation under the HR Info navigation and breadcrumb parents.](images/blank-page.png ' ')


3. For Name, enter **Our Organisation**. Set the navigation parent and breadcrumb parent to **HR Info**, and set the icon to `fa-sitemap`.

    ![Create Page wizard showing Our Organisation under the HR Info navigation and breadcrumb parents.](images/create-organisation-page.png ' ')

2. Add a native **Tree** region named **Organisation Structure**.

    ![Our Organisation Page Designer showing the Organisation Structure Tree region.](images/add-organisation-tree-region.png ' ')

## Task 2: Configure the employee hierarchy

1. In the Property Editor, under Source, enter/select the following:
    - Type: **SQL Query**
    - SQL Query:
        ```sql
        <copy>
        SELECT
            e.employee_id AS id,
            e.manager_id AS parent_id,
            e.first_name || ' ' || e.last_name AS title,
            j.title || ' - ' || d.name AS tooltip
        FROM tms_employees e
        LEFT JOIN tms_jobs j
            ON j.job_id = e.job_id
        LEFT JOIN tms_departments d
            ON d.dept_id = e.dept_id
        WHERE e.status = 'Active'
        START WITH e.manager_id IS NULL
        CONNECT BY PRIOR e.employee_id = e.manager_id
        ORDER SIBLINGS BY e.first_name, e.last_name
        </copy>
        ```

    ![Tree region source editor containing the employee manager hierarchy query.](images/configure-organisation-tree-query.png ' ')

2. Switch to **Attributes** tab, select the following:
    - Node Label Column: **TITLE**
    - NODE ID Column: **ID**
    - Parent Key Column: **PARENT_ID**
    - Tooltip: **Database Column**
    - Tooltip Column: **TOOLTIP**
    
    ![Tree region column mappings for ID, parent ID, title, and tooltip.](images/map-organisation-tree-columns.png ' ')

3. Save and run the page. Confirm that **HR Info > Our Organisation** displays active employee hierarchy with job and department tooltips.

    ![Our Organisation runtime tree showing employees and hierarchy tooltips.](images/verify-organisation-tree.png ' ')

## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026
