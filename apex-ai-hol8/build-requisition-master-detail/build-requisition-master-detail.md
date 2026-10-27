# Build the Requisition Master-Detail Page

## Introduction

Create a Requisition Detail page that displays requisition information above an editable Interactive Grid of candidates. Then update the Job Openings card action to open this page.

Estimated Lab Time: 15 minutes

### Objectives

In this lab, you will learn how to:

- Create the Requisition Detail page and requisition ID item.
- Add a read-only requisition report and editable candidate grid.
- Link Job Openings cards to the new master-detail page.

## Task 1: Create the Page and Master Region

1. From the application home page, select **Create Page**.

    ![Select Create Page](images/create-page.png " ")

2. Select **Blank Page**.

    ![Select Blank Page](images/blank-page.png " ")

3. In the Create Blank Page wizard, enter/select the following:

    - **Page Number:** **14**
    - **Name:** **Requisition Detail**
    - **Icon:** **fa-file-o**

4. Select **Create Page**.

    ![Create the Requisition Detail page](images/create-requisition-detail-page.png " ")

5. In the Rendering tab, right-click **Body**.

6. Select **Create Page Item**.

    ![Create a page item under Body](images/create-page-item1.png " ")

7. In the Property Editor, enter/select the following:

    - **Identification > Name:** **P14_REQ_ID**
    - **Identification > Type:** **Hidden**

    ![Configure the hidden requisition ID item](images/create-p14-req-id.png " ")

8. In the Rendering tab, right-click **Body**.

9. Select **Create Region**.

    ![Create a region under Body](images/create-region1.png " ")

10. In the Property Editor, enter/select the following:

    - **Identification > Name:** **Requisition Info**
    - **Identification > Type:** **Classic Report**
    - **Source > Type:** **SQL Query**
    - **Source > SQL Query:**

        ```sql
        SELECT r.req_id,
               j.title,
               d.name AS department,
               r.headcount,
               r.status,
               TO_CHAR(r.open_date, 'DD-Mon-YYYY') AS open_since
          FROM tms_job_requisitions r
          JOIN tms_jobs j
            ON r.job_id = j.job_id
          JOIN tms_departments d
            ON r.dept_id = d.dept_id
         WHERE r.req_id = :P14_REQ_ID
        ```

    ![Configure the Requisition Info Classic Report](images/requisition-detail-master-region.png " ")

## Task 2: Add the Editable Interactive Grid

1. In the Rendering tab, right-click **Body**.

2. Select **Create Region**.

    ![Create the Candidates region](images/create-region2.png " ")

3. In the Property Editor, enter/select the following:

    - **Identification > Name:** **Candidates**
    - **Identification > Type:** **Interactive Grid**
    - **Source > Type:** **SQL Query**
    - **Source > SQL Query:**

        ```sql
        SELECT candidate_id,
               first_name || ' ' || last_name AS name,
               current_stage,
               applied_date
          FROM tms_candidates
         WHERE req_id = :P14_REQ_ID
        ```

    ![Configure the Candidates Interactive Grid region](images/add-editable-candidates-region.png " ")

4. In the Property Editor, select the **Attributes** tab.

5. Under **Edit**, set **Enabled** to **On**.

    ![Enable Interactive Grid editing](images/enable-grid-editing.png " ")

6. In the Rendering tab, expand **Columns** under the **Candidates** region.

7. Select **CANDIDATE_ID**.

8. In the Property Editor, under **Source**, set **Primary Key** to **On**.

    ![Set Candidate ID as the primary key](images/set-candidate-id-primary-key.png " ")

9. In the Rendering tab, select **CANDIDATE_ID**, **NAME**, and **APPLIED_DATE**.

10. In the Property Editor, set **Identification > Type** to **Display Only**.

    ![Configure the read-only candidate columns](images/editable-candidates-grid.png " ")

11. Select **Save**.

    ![Save the Requisition Detail page](images/save.png " ")

## Task 3: Update the Job Openings Link

1. In Page Designer, use Page Finder to open the page named **Job Openings**.

    > **Note:** The page number can differ between applications. Select the page by its name, **Job Openings**.

    ![Find the Job Openings page](images/search-job-openings-page.png " ")

2. In the Rendering tab, expand the **Job Openings** region.

3. Under **Actions**, select **View Applicants**.

4. In the Property Editor, under **Behavior**, select the target picker.

    ![Open the View Applicants target](images/select-link-view-applicants.png " ")

5. In the Link Builder, enter/select the following:

    - **Page:** **14**
    - Under **Set Items**:
        - **Name:** **P14_REQ_ID**
        - **Value:** **&REQ_ID.**

6. Select **OK**.

    ![Target the Requisition Detail page](images/target-requisition-detail2.png " ")

7. Select **Save and Run Page**.

    ![Save and run the Job Openings page](images/save-and-run.png " ")

8. Select **View Applicants** for a job card.

9. Confirm that requisition information appears above the editable candidate grid.

    ![Select View Applicants for a job card](images/job-card-select.png " ")

    ![Requisition Detail page with the editable candidate grid](images/requisition-detail-runtime.png " ")

## Summary

You created the Requisition Detail page with a Classic Report and editable Interactive Grid, then linked Job Openings cards to the page.

### Acknowledgements

- **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
