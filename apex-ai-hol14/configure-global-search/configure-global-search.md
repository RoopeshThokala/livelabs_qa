# Lab 3: Add Quick Links and Global Search

## Introduction

Configure a Search page that finds candidates and requisitions and opens the right detail page.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

- Configure candidate and requisition search sources.
- Add Search to the TAP navigation bar.

## Task 1: Create Candidate Search Configuration

1. Open **Shared Components** > **Search Configurations**.
    ![Shared Components page](images/nav-search-config.png ' ')

2. Click **Create**.
    ![Search Configurations page](images/create-search-config1.png ' ')

3. In the Create Search Configuration dialog, enter/select the following:
    - Name: **Candidate Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Search Configurations page](images/create-candidate-search1.png ' ')

4. For Source Type, select **SQL Query** and enter the following query:

    ```sql
    <copy>
    SELECT
    c.candidate_id,
    c.first_name,
    c.last_name,
    c.email,
    c.current_stage,
    c.first_name || ' ' || c.last_name AS result_title,
    'Stage: ' || c.current_stage AS result_description
    FROM tms_candidates c;
    </copy>
    ```

    Click **Next**.

    ![Search Configurations page](images/create-candidate-search2.png ' ')

5. Enter/select the following:
    - Primary Key Column: **CANDIDATE_ID(Number)**
    - Title Column: **RESULT_TITLE(Varchar2)**
    - Description Column: **RESULT_DESCRIPTION(Varchar2)**
    - Icon Source: **Icon Class**
    - Icon CSS Classes: **fa-user**

    Click **Create Search Configuration**.

    ![Search Configurations page](images/create-candidate-search3.png ' ')

6. Click on the **Link** tab. Enter/select the following:
    - Link Type: **Redirect to Page in this Application**
    - Page: **11**
    - Set these items: **P11\_CANDIDATE\_ID**
    - With these values: **&CANDIDATE\_ID.**

    Click **Apply Changes**.

    ![Search Configurations page](images/create-candidate-search4.png ' ')



## Task 2: Create Requisition Search Configuration

1. Click **Create**.
    ![Search Configurations page](images/create-search-config2.png ' ')

3. In the Create Search Configuration dialog, enter/select the following:
    - Name: **Requisition Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Search Configurations page](images/create-req-search1.png ' ')

4. For Source Type, select **SQL Query** and enter the following query:

    ```sql
    <copy>
    SELECT
    r.req_id,
    j.title,
    r.status,
    d.name AS department_name,
    j.title AS result_title,
    'Status: ' || r.status ||
        CASE
            WHEN d.name IS NOT NULL
            THEN ' - ' || d.name
        END AS result_description
    FROM tms_job_requisitions r
    JOIN tms_jobs j
    ON j.job_id = r.job_id
    LEFT JOIN tms_departments d
    ON d.dept_id = r.dept_id;
    </copy>
    ```

    Click **Next**.

    ![Search Configurations page](images/create-req-search2.png ' ')

5. Enter/select the following:
    - Primary Key Column: **REQ_ID(Number)**
    - Title Column: **RESULT_TITLE(Varchar2)**
    - Description Column: **RESULT_DESCRIPTION(Varchar2)**
    - Icon Source: **Icon Class**
    - Icon CSS Classes: **fa-file-text**

    Click **Create Search Configuration**.

    ![Search Configurations page](images/create-req-search3.png ' ')

6. Click on the **Link** tab. Enter/select the following:
    - Link Type: **Redirect to Page in this Application**
    - Page: **14**
    - Set these items: **P14\_REQ\_ID**
    - With these values: **&REQ\_ID.**

    Click **Apply Changes**.

    ![Search Configurations page](images/create-req-search4.png ' ')

## Task 3: Create the Search page

1. Navigate to the **Application Home page**.
    ![Home page](images/nav-app-home.png ' ')

2. Click **Create Page**.
    ![Create Page wizard](images/create-page.png ' ')


3. Select **Search Page**.
    ![Create Page wizard configured to create the TAP Search page with both search configurations.](images/create-tap-search-page.png ' ')

4. In the Create Search Page dialog, enter the following details:
    - Name: **Search**
    - Search Configurations: Check **Candidate Search** and **Requisition Search**
    - Use Navigation: Toggle the button to **OFF**.

    Click **Create Page**.

    ![Create Page wizard configured to create the TAP Search page with both search configurations.](images/search-page-details.png ' ')

5. Navigate to **Shared Components** to add the page to the Navigation Bar.
    ![Page Designer](images/nav-shared-components.png ' ')


6. Select **Navigation Bar List**.
    ![Shared Components](images/nav-bar-list.png ' ')

7. Select **Navigation Bar**.
    ![Shared Components](images/open-nav-bar.png ' ')

8. Click **Create List Entry**.
    ![Shared Components](images/create-list-entry.png ' ')

9. Enter/select the following:
    - List Entry Label: **Search**
    - Icon: **fa-search**
    - Target Type: **Page in this Application**
    - Page: **15**

    Click **Create List Entry**.

    ![Navigation Bar List entry configured for the TAP Search page.](images/add-tap-search-navigation-bar.png ' ')

10. Save and Run the page. 
    ![Shared Components](images/save-and-run2.png ' ')


11. Try searching for a candidate like '**Grace Kim**'. Verify that the result opens the Candidate Profile page. Similarly, try searching for a Job Requisiton (like 'Data Analyst') and see what happens.

    ![TAP Search results showing candidate and requisition results.](images/verify-tap-global-search1.png ' ')

    ![TAP Search results showing candidate and requisition results.](images/verify-tap-global-search2.png ' ')



## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026  



    


