# Lab 5: Configure ESS Navigation, Links, and Search

## Introduction

Apply the same navigation patterns to ESS. Configure menu groups, breadcrumbs, Quick Links, and a user-scoped global search.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

- Organize ESS navigation and breadcrumbs.
- Add ESS Home Quick Links.
- Create profile and task searches limited to the signed-in user.

## Task 1: Configure the ESS navigation menu

1. Open **ESS** > **Shared Components** > **Navigation Menu**. 

    ![ESS Navigation Menu showing the new parent entries and icon CSS classes.](images/nav-menu.png ' ')

2. Create the following parent entries with corresponding attributes.

    | List Entry Label | Sequence | Icon | Target Type |
    |--- |--- |--- | --- |
    | My Work | 60 | fa-briefcase | No Target |
    | Leave | 70 |fa-calendar | No Target |
    | Personal | 80 |fa-user | No Target |
    | HR Info | 90 | fa-book | No Target |
    | Admin | 100 | | No Target |

    ![ESS Navigation Menu showing the new parent entries and icon CSS classes.](images/create-ess-navigation-parents.png ' ')

    For example, to create My Work entry, click **Create List Entry**. Enter/select the details as given in the table above.

    ![ESS Navigation Menu showing the new parent entries and icon CSS classes.](images/create-my-work.png ' ')

2. Assign Home and My Onboarding Tasks to **My Work**; Leave Request to **Leave**; and My Profile and My Payslip to **Personal**.

    ![ESS navigation hierarchy showing existing pages assigned to parent entries.](images/assign-ess-navigation-children.png ' ')

    For example, click edit for **My Onboarding Tasks**. Update Parent List Entry to **My Work**.
    ![ESS navigation hierarchy showing existing pages assigned to parent entries.](images/edit-onboarding.png ' ')

    ![ESS navigation hierarchy showing existing pages assigned to parent entries.](images/assign-parent-entry.png ' ')


3. Run ESS and confirm the parent groups and child page links in the sidebar.

    ![ESS runtime sidebar displaying the grouped navigation menu.](images/verify-ess-navigation-runtime.png ' ')

## Task 2: Configure ESS breadcrumbs and Quick Links

1. Open **ESS** > **Shared Components** > **Breadcrumbs**. Open the existing **Breadcrumb**. 
    ![ESS Breadcrumbs configuration ](images/nav-breadcrumb.png ' ')

2. Click **New Entry +**.
    ![ESS Breadcrumbs configuration ](images/new-entry.png ' ')

2. Add no-target parent entries for **My Work**, **Leave**, and **Personal**. One example is shown below:

    ![ESS Breadcrumbs configuration with My Work, Leave, Personal, and HR Info parent entries.](images/create-ess-breadcrumb-parents.png ' ')

2. Set page parents: 
    - Home and My Onboarding Tasks under **My Work**
    - Leave Request under **Leave**
    - My Profile and My Payslip under **Personal**

    ![ESS breadcrumb hierarchy showing parent entries for the application pages.](images/configure-ess-breadcrumbs.png ' ')

3. For example, select **My Onboarding Tasks** and set Parent Entry to **My Work (Page 5)**.
    ![ESS breadcrumb hierarchy showing parent entries for the application pages.](images/set-parent.png ' ')



## Task 3: Add ESS Quick Links

1. Open **ESS** > **Shared Components** > **Lists**. Click **Create**.

    ![Navigate to Lists](images/create-list.png ' ')

2. Create a static list named **ESS Quick Links**. Enter/select the following:
    - Name: **ESS Quick Links**
    - Type: **Static**

    Click **Next**.
    ![Lists shared component with the ESS Quick Links static list being created.](images/create-list-details.png ' ')


3. Add the following 4 entries:

    | List Entry Label  |  Target Page ID or custom URL |
    | --- | --- |
    | New Leave Request | 5 |
    | My Payslip  | 6 |
    | My Profile | 4 |
    | HR Policy |  |

    Click **Next**.
    ![Lists shared component with the TAP Quick Links static list being created.](images/list-entries.png ' ')

5. Click **Create List**.
    ![Create list dialog](images/create-list-confirm.png ' ')


6. Select ESS Quick Links. From the right side List Details, select **Grid Edit**. 
    ![Lists shared component with the ESS Quick Links static list being created.](images/grid-edit.png ' ')

7. In the modal Dialog Wizard, add the below icons:

    | Entry  |  Icon |
    | --- | --- |
    | New Leave Request | fa-calendar-plus |
    | My Payslip  | fa-file-text |
    | My Profile | fa-user |
    | HR Policy | fa-book  |
    
    Click **Save**.

    ![Grid list entries](images/edit-icons.png ' ')

8. Click **Edit Page 1**.

    ![ESS Quick Links list entries](images/edit-page1.png ' ')

9. On ESS Home, add a **Quick Links** List region sourced from ESS Quick Links. 
    Right-click **Body** and select **Create Region**.

    ![ESS Home Page Designer showing the Quick Links media-list region.](images/create-region.png ' ')

10. Enter/select the following in the Property Editor:
    - Name: Quick Links
    - Type: List
    - Source > List: ESS Quick Links
    ![Property Editor](images/region-details1.png ' ')

    - Template Options:
        - Style: Remove UI Decoration

        ![Property Editor](images/region-details2.png ' ')

11. Switch to the Attributes tab in the Property Editor. Enter/select the following:
    - List Template: **Media List**
        ![Property Editor](images/attributes1.png ' ')
    - Template Options:
        - Apply Theme Colors: **Check** the box
        ![Property Editor](images/attributes2.png ' ')

12. **Save and Run**. Verify that all four links open their expected pages.

    ![Property Editor](images/save-and-run.png ' ')

    ![ESS Home page displaying the Quick Links media list.](images/verify-ess-quick-links.png ' ')


## Task 4: Create ESS global search

1. Navigate to **Shared Components** > **Search Configurations**. Click **Create**.
    ![Shared Components page](images/create-search-config1.png ' ')


2. In the Create Search Configuration dialog, enter/select the following:
    - Name: **ESS My Profile Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Search Configurations page](images/create-profile-search1.png ' ')

4. For Source Type, select **SQL Query** and enter the following query:

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
WHERE UPPER(e.email) = UPPER(:APP_USER);
    </copy>
    ```

    Click **Next**.

    ![Search Configurations page](images/create-profile-search2.png ' ')

5. Enter/select the following:
    - Primary Key Column: **EMPLOYEE_ID(Number)**
    - Title Column: **RESULT_TITLE(Varchar2)**
    - Description Column: **RESULT_DESCRIPTION(Varchar2)**
    - Icon Source: **Icon Class**
    - Icon CSS Classes: **fa-user**

    Click **Create Search Configuration**.

    ![Search Configurations page](images/create-profile-search3.png ' ')

6. Click on the **Link** tab. Enter/select the following:
    - Link Type: **Redirect to Page in this Application**
    - Page: **4**

    Click **Apply Changes**.

    ![Search Configurations page](images/create-profile-search4.png ' ')


7. Let's create another Search Configuration. Click **Create**.
    ![Search Configurations page](images/create-search-config2.png ' ')

8. In the Create Search Configuration dialog, enter/select the following:
    - Name: **Ess My Tasks Search**
    - Search Type: **Standard**

    Click **Next**.

    ![Search Configurations page](images/create-task-search1.png ' ')

9. For Source Type, select **SQL Query** and enter the following query:

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
WHERE UPPER(e.email) = UPPER(:APP_USER);
    ```

    Click **Next**.

    ![Search Configurations page](images/create-task-search2.png ' ')

10. Enter/select the following:
    - Primary Key Column: **TASK_ID(Number)**
    - Title Column: **RESULT_TITLE(Varchar2)**
    - Description Column: **RESULT_DESCRIPTION(Varchar2)**
    - Icon Source: **Initials**

    Click **Create Search Configuration**.

    ![Search Configurations page](images/create-task-search3.png ' ')

11. Click on the **Link** tab. Enter/select the following:
    - Link Type: **Redirect to Page in this Application**
    - Page: **2**

    Click **Apply Changes**.

    ![Search Configurations page](images/create-task-search4.png ' ')


12. Navigate to the **Application Home page**.
    ![Home page](images/nav-app-home.png ' ')

13. Click **Create Page**.
    ![Create Page wizard](images/create-page.png ' ')


14. Select **Search Page**.
    ![Create Page wizard configured to create the TAP Search page with both search configurations.](images/create-ess-search-page.png ' ')

15. In the Create Search Page dialog, enter the following details:
    - Name: **Search**
    - Search Configurations: Check **ESS My Profile Search** and **ESS My Tasks Search**
    - Use Navigation: Toggle the button to **OFF**.

    Click **Create Page**.

    ![Create Page wizard configured to create the TAP Search page with both search configurations.](images/search-page-details.png ' ')

16. Navigate to **Shared Components** to add the page to the Navigation Bar.
    ![Page Designer](images/nav-shared-components.png ' ')


17. Select **Navigation Bar List**.
    ![Shared Components](images/nav-bar-list.png ' ')

18. Select **Navigation Bar**.
    ![Shared Components](images/open-nav-bar.png ' ')

19. Click **Create List Entry**.
    ![Shared Components](images/create-list-entry.png ' ')

20. Enter/select the following:
    - List Entry Label: **Search**
    - Icon: **fa-search**
    - Target Type: **Page in this Application**
    - Page: **7**

    Click **Create List Entry**.

    ![Navigation Bar List entry configured for the TAP Search page.](images/add-ess-search-navigation-bar.png ' ')

21. Run the page. 
    ![Shared Components](images/save-and-run2.png ' ')

22. Login as user **ravi.menon@acme.example**. In the search bar, type **IT** and observe the results.
    ![Search result](images/ess-search-result.png ' ')


## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026 