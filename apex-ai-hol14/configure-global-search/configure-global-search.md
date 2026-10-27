# Configure TAP Global Search

## Introduction

Global Search helps recruiters locate candidates and job requisitions from one search page. In this lab, you will create a search configuration for each record type, add the Search page to the navigation bar, and verify that each result opens the appropriate detail page.

Estimated Lab Time: 5 minutes

### Objectives

In this lab, you will:

- Create Candidate Search and Requisition Search configurations.
- Create a Search page that uses both configurations.
- Add Search to the TAP navigation bar and verify the results.

## Task 1: Create Candidate Search

1. In **App Builder**, open the **Talent Acquisition Portal** application.

2. Click **Shared Components**. Under **Navigation and Search**, click **Search Configurations**.

    ![Open Search Configurations in Shared Components](images/nav-search-config.png " ")

3. Click **Create**.

    ![Create a search configuration](images/create-search-config1.png " ")

4. In the Create Search Configuration wizard, enter/select the following:

    - Name: **Candidate Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Set the Candidate Search configuration name and type](images/create-candidate-search1.png " ")

5. Set **Source Type** to **SQL Query** and enter the following query:

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
    FROM tms_candidates c
    </copy>
    ```

    Click **Next**.

    ![Enter the Candidate Search SQL query](images/create-candidate-search2.png " ")

6. Configure the search result columns:

    - Primary Key Column: **CANDIDATE\_ID (Number)**
    - Title Column: **RESULT\_TITLE (Varchar2)**
    - Description Column: **RESULT\_DESCRIPTION (Varchar2)**
    - Icon Source: **Icon Class**
    - Icon CSS Classes: **fa-user**

    Click **Create Search Configuration**.

    ![Configure Candidate Search result columns](images/create-candidate-search3.png " ")

7. Select the **Link** tab and enter/select the following:

    - Link Type: **Redirect to Page in this Application**
    - Page: **11 - Candidate Profile**
    - Set These Items: **P11\_CANDIDATE\_ID**
    - With These Values: **&CANDIDATE\_ID.**

    Click **Apply Changes**.

    ![Configure the Candidate Search result link](images/create-candidate-search4.png " ")

## Task 2: Create Requisition Search

1. Return to **Search Configurations** and click **Create**.

    ![Create another search configuration](images/create-search-config2.png " ")

2. In the Create Search Configuration wizard, enter/select the following:

    - Name: **Requisition Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Set the Requisition Search configuration name and type](images/create-req-search1.png " ")

3. Set **Source Type** to **SQL Query** and enter the following query:

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
                WHEN d.name IS NOT NULL THEN ' - ' || d.name
            END AS result_description
    FROM tms_job_requisitions r
    JOIN tms_jobs j
        ON j.job_id = r.job_id
    LEFT JOIN tms_departments d
        ON d.dept_id = r.dept_id
    </copy>
    ```

    Click **Next**.

    ![Enter the Requisition Search SQL query](images/create-req-search2.png " ")

4. Configure the search result columns:

    - Primary Key Column: **REQ\_ID (Number)**
    - Title Column: **RESULT\_TITLE (Varchar2)**
    - Description Column: **RESULT\_DESCRIPTION (Varchar2)**
    - Icon Source: **Icon Class**
    - Icon CSS Classes: **fa-file-text**

    Click **Create Search Configuration**.

    ![Configure Requisition Search result columns](images/create-req-search3.png " ")

5. Select the **Link** tab and enter/select the following:

    - Link Type: **Redirect to Page in this Application**
    - Page: **14 - Requisition Detail**
    - Set These Items: **P14\_REQ\_ID**
    - With These Values: **&REQ\_ID.**

    Click **Apply Changes**.

    ![Configure the Requisition Search result link](images/create-req-search4.png " ")

## Task 3: Create the Search Page and Navigation Entry

1. Return to the application home page and click **Create Page**.

    ![Open the application home page](images/nav-app-home.png " ")

    ![Open the Create Page wizard](images/create-page.png " ")

2. Select **Search Page**.

    ![Select Search Page](images/create-tap-search-page.png " ")

3. In the Create Search Page wizard, enter/select the following:

    - Name: **Search**
    - Search Configurations: **Candidate Search** and **Requisition Search**
    - Use Navigation: **Off**

    Click **Create Page**.

    ![Configure the TAP Search page](images/search-page-details.png " ")

4. Click **Shared Components**. Under **Navigation and Search**, click **Navigation Bar List**, then select **Navigation Bar**.

    ![Open Shared Components](images/nav-shared-components.png " ")

    ![Open Navigation Bar List](images/nav-bar-list.png " ")

    ![Select the Navigation Bar list](images/open-nav-bar.png " ")

5. Click **Create List Entry**.

    ![Create a Navigation Bar list entry](images/create-list-entry.png " ")

6. Enter/select the following, then click **Create List Entry**:

    - List Entry Label: **Search**
    - Icon: **fa-search**
    - Target Type: **Page in this Application**
    - Page: **15**

    ![Add Search to the TAP Navigation Bar](images/add-tap-search-navigation-bar.png " ")

## Task 4: Run and Verify Global Search

1. Run the **Talent Acquisition Portal** application.

    ![Run the TAP Search page](images/save-and-run2.png " ")

2. Search for a candidate, such as **Grace Kim**, and select the result. Confirm that the Candidate Profile page opens.

    ![Verify candidate search results](images/verify-tap-global-search1.png " ")

3. Search for a requisition, such as **Data Analyst**, and select the result. Confirm that the Requisition Detail page opens.

    ![Verify requisition search results](images/verify-tap-global-search2.png " ")

## Summary

You created candidate and requisition search configurations, added them to a Search page, and added Search to the TAP navigation bar. Recruiters can now open the relevant detail page directly from a search result.

You may now proceed to the next lab.

## Acknowledgements

- **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - October 2026
