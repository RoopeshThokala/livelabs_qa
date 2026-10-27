# Configure ESS Navigation, Links, and Search

## Introduction

The Employee Self Service (ESS) application uses the same shared-component patterns as TAP. In this lab, you will organize the navigation menu and breadcrumbs, add Quick Links to the home page, and create searches that return records for the signed-in employee.

Estimated Lab Time: 5 minutes

### Objectives

In this lab, you will:

- Organize ESS navigation and breadcrumbs.
- Add Quick Links to the ESS home page.
- Create employee-scoped profile and task searches.

### Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following application:

- **<a href="../introduction/files/ess-export7.sql" download="ess-export7.sql">Employee Self-Service Portal</a>**

Import it into your workspace. In **App Builder**, select **Import**, upload `ess-export7.sql`, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application export was created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Task 1: Configure the ESS Navigation Menu

In this task, you will create parent entries and organize the existing ESS pages beneath them.

1. In **App Builder**, open the **Employee Self Service** application.

2. Click **Shared Components**. Under **Navigation and Search**, click **Navigation Menu**, then select **Navigation Menu**.

    ![Open the ESS Navigation Menu](images/nav-menu.png " ")

3. Click **Create List Entry**.

4. Create the **My Work** parent entry. Enter/select the following:

    - Parent List Entry: **- No Parent List Item -**
    - List Entry Label: **My Work**
    - Sequence: **60**
    - Icon: **fa-briefcase**
    - Target Type: **- No Target -**

    Click **Create and Create Another**.

    ![Configure the My Work parent navigation entry](images/create-my-work.png " ")

5. Create the remaining parent entries. For each entry, set **Parent List Entry** to **- No Parent List Item -** and **Target Type** to **- No Target -**.

    | List Entry Label | Sequence | Icon |
    | --- | --- | --- |
    | Leave | 70 | fa-calendar |
    | Personal | 80 | fa-user |
    | HR Info | 90 | fa-book |
    | Admin | 100 | Leave blank |

    Click **Create and Create Another** after each entry except **Admin**, then click **Create List Entry** after **Admin**.

    ![Configure the ESS parent navigation entries](images/create-ess-navigation-parents.png " ")

6. Select **My Onboarding Tasks**. Set **Parent List Entry** to **My Work**, then click **Apply Changes**.

    ![Open My Onboarding Tasks for editing](images/edit-onboarding.png " ")

    ![Set My Work as the parent entry](images/assign-parent-entry.png " ")

7. Repeat the same update for the following entries:

    | Navigation Menu Entry | Parent List Entry |
    | --- | --- |
    | Home | My Work |
    | Leave Request | Leave |
    | My Profile | Personal |
    | My Payslip | Personal |

    Click **Apply Changes** after updating each entry.

    ![Assign ESS pages to their parent navigation entries](images/assign-ess-navigation-children.png " ")

## Task 2: Configure ESS Breadcrumbs

In this task, you will create parent breadcrumb entries and set the parent for each existing ESS page.

1. In **Shared Components**, click **Breadcrumbs** and select the existing **Breadcrumb**.

    ![Open the ESS Breadcrumb](images/nav-breadcrumb.png " ")

2. Click **New Entry**. Create no-target parent entries for **My Work**, **Leave**, and **Personal**.

    For each parent entry, set **Parent Entry** to **- No Parent Entry -** and **Target is a** to **- No Target -**. Use **Page 0** for the parent entry.

    ![Create ESS breadcrumb parent entries](images/new-entry.png " ")

    ![Configure the ESS breadcrumb parent entries](images/create-ess-breadcrumb-parents.png " ")

3. Select **My Onboarding Tasks**. Set **Parent Entry** to **My Work (Page 0)**, then click **Apply Changes**.

    ![Set My Work as the parent breadcrumb entry](images/set-parent.png " ")

4. Repeat the same update for the following entries:

    | Breadcrumb Entry | Parent Entry |
    | --- | --- |
    | Home | My Work (Page 0) |
    | Leave Request | Leave |
    | My Profile | Personal |
    | My Payslip | Personal |

    Click **Apply Changes** after updating each entry.

    ![Configure the ESS breadcrumb hierarchy](images/configure-ess-breadcrumbs.png " ")

## Task 3: Add ESS Quick Links

1. In **Shared Components**, click **Lists**, then click **Create**.

    ![Create an ESS Quick Links list](images/create-list.png " ")

2. Create a static list. Enter/select the following:

    - Name: **ESS Quick Links**
    - Type: **Static**

    Click **Next**.

    ![Configure the ESS Quick Links static list](images/create-list-details.png " ")

3. Add the following list entries:

    | List Entry Label | Target Page | Target Page Name |
    | --- | --- | --- |
    | New Leave Request | 5 | Leave Request |
    | My Payslip | 6 | My Payslip |
    | My Profile | 4 | My Profile |
    | HR Policy | Leave blank | --- |

    Click **Next**, then click **Create List**.

    *Note: Page numbers can differ between applications. If a page number differs, select the appropriate target page by using its name in the **Target Page Name** column.*

    ![Add ESS Quick Links list entries](images/list-entries.png " ")

    ![Create the ESS Quick Links list](images/create-list-confirm.png " ")

4. Select **ESS Quick Links** and click **Grid Edit**.

    ![Open Grid Edit for ESS Quick Links](images/grid-edit.png " ")

5. Set the following icons, then click **Save**:

    | List Entry Label | Icon |
    | --- | --- |
    | New Leave Request | fa-calendar-plus |
    | My Payslip | fa-file-text |
    | My Profile | fa-user |
    | HR Policy | fa-book |

    ![Configure ESS Quick Links icons](images/edit-icons.png " ")

6. Open **Page 1: Home** in Page Designer. In the Rendering tree, right-click **Body** and select **Create Region**.

    ![Open the ESS home page in Page Designer](images/edit-page1.png " ")

    ![Create a region on the ESS home page](images/create-region.png " ")

7. Select the new region and enter/select the following in the Property Editor:

    - Identification > Name: **Quick Links**
    - Identification > Type: **List**
    - Source > List: **ESS Quick Links**
    - Appearance > Template Options > Style: **Remove UI Decoration**

    ![Configure the ESS Quick Links region source and template options](images/region-details1.png " ")

    ![Set the ESS Quick Links region style](images/region-details2.png " ")

8. Select the **Attributes** tab. Set **List Template** to **Media List** and **Template Options > Apply Theme Colors** to **On**.

    ![Select the Media List template](images/attributes1.png " ")

    ![Apply theme colors to the Quick Links list](images/attributes2.png " ")

9. Click **Save and Run Page**. Confirm that the available Quick Links open their expected pages.

    ![Save and run the ESS home page](images/save-and-run.png " ")

    ![Verify ESS Quick Links at runtime](images/verify-ess-quick-links.png " ")

## Task 4: Create ESS Global Search

In this task, you will create one search configuration for My Profile and one for My Onboarding Tasks. Both queries use **APP\_USER** to limit results to the signed-in employee.

1. In **Shared Components**, click **Search Configurations**, then click **Create**.

    ![Create an ESS search configuration](images/create-search-config1.png " ")

2. Create the profile search. Enter/select the following:

    - Name: **ESS My Profile Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Set the ESS My Profile Search configuration name and type](images/create-profile-search1.png " ")

3. Set **Source Type** to **SQL Query** and enter the following query:

    ```sql
    <copy>
    SELECT
        e.employee_id,
        e.first_name,
        e.last_name,
        e.email,
        e.first_name || ' ' || e.last_name AS result_title,
        'My Profile - ' || e.email AS result_description
    FROM tms_employees e
    WHERE UPPER(e.email) = UPPER(:APP_USER)
    </copy>
    ```

    Click **Next**.

    ![Enter the ESS My Profile Search SQL query](images/create-profile-search2.png " ")

4. Configure the result columns:

    - Primary Key Column: **EMPLOYEE\_ID (Number)**
    - Title Column: **RESULT\_TITLE (Varchar2)**
    - Description Column: **RESULT\_DESCRIPTION (Varchar2)**
    - Icon Source: **Icon Class**
    - Icon CSS Classes: **fa-user**

    Click **Create Search Configuration**.

    ![Configure ESS My Profile Search result columns](images/create-profile-search3.png " ")

5. Select the **Link** tab. Set **Link Type** to **Redirect to Page in this Application**, set **Page** to **4 - My Profile**, then click **Apply Changes**.

    ![Configure the ESS My Profile Search result link](images/create-profile-search4.png " ")

6. Return to **Search Configurations** and click **Create**. Create the task search with the following values:

    - Name: **ESS My Tasks Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Set the ESS My Tasks Search configuration name and type](images/create-task-search1.png " ")

7. Set **Source Type** to **SQL Query** and enter the following query:

    ```sql
    <copy>
    SELECT
        t.task_id,
        t.task_name,
        t.status,
        t.due_date,
        t.task_name AS result_title,
        'Status: ' || t.status ||
            CASE
                WHEN t.due_date IS NOT NULL
                    THEN ' - Due: ' || TO_CHAR(t.due_date, 'DD-MON-YYYY')
            END AS result_description
    FROM tms_onboarding_tasks t
    JOIN tms_employees e
        ON e.employee_id = t.employee_id
    WHERE UPPER(e.email) = UPPER(:APP_USER)
    </copy>
    ```

    Click **Next**.

    ![Enter the ESS My Tasks Search SQL query](images/create-task-search2.png " ")

8. Configure the result columns:

    - Primary Key Column: **TASK\_ID (Number)**
    - Title Column: **RESULT\_TITLE (Varchar2)**
    - Description Column: **RESULT\_DESCRIPTION (Varchar2)**
    - Icon Source: **Initials**

    Click **Create Search Configuration**.

    ![Configure ESS My Tasks Search result columns](images/create-task-search3.png " ")

9. Select the **Link** tab. Set **Link Type** to **Redirect to Page in this Application**, set **Page** to **2 - My Onboarding Tasks**, then click **Apply Changes**.

    ![Configure the ESS My Tasks Search result link](images/create-task-search4.png " ")

10. Return to the application home page and click **Create Page**. Select **Search Page**.

    ![Open the application home page](images/nav-app-home.png " ")

    ![Open the Create Page wizard](images/create-page.png " ")

    ![Select Search Page](images/create-ess-search-page.png " ")

11. In the Create Search Page wizard, enter/select the following:

    - Name: **Search**
    - Search Configurations: **ESS My Profile Search** and **ESS My Tasks Search**
    - Use Navigation: **Off**

    Click **Create Page**.

    ![Configure the ESS Search page](images/search-page-details.png " ")

12. Click **Shared Components**. Under **Navigation and Search**, click **Navigation Bar List**, then select **Navigation Bar**.

    ![Open Shared Components](images/nav-shared-components.png " ")

    ![Open Navigation Bar List](images/nav-bar-list.png " ")

    ![Select the Navigation Bar list](images/open-nav-bar.png " ")

13. Click **Create List Entry**. Enter/select the following, then click **Create List Entry**:

    - List Entry Label: **Search**
    - Icon: **fa-search**
    - Target Type: **Page in this Application**
    - Page: **7**

    ![Add Search to the ESS Navigation Bar](images/add-ess-search-navigation-bar.png " ")

14. Run the **Employee Self Service** application. Sign in as **ravi.menon@acme.example**, enter **IT** in Search, and review the results.

    ![Run the ESS Search page](images/save-and-run2.png " ")

    ![Verify ESS search results](images/ess-search-result.png " ")

## Summary

You organized the ESS navigation and breadcrumbs, added home-page Quick Links, and created profile and task searches that are limited to the signed-in employee.

You may now proceed to the next lab.

## Acknowledgements

- **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - October 2026
