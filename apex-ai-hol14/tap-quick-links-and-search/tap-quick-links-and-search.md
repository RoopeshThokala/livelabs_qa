# Lab 3: Add Quick Links and Global Search

## Introduction

Place common TAP actions on the home page as Quick Links which are easily accessible.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

- Create a TAP Quick Links list.

## Task 1: Create TAP Quick Links List

1. Open **TAP** > **Shared Components** > **Lists**. 
    ![Lists shared component with the TAP Quick Links static list being created.](images/nav-list.png ' ')

2. Click **Create**. 
    ![Lists shared component with the TAP Quick Links static list being created.](images/create-tap-quick-links-list.png ' ')

3. Create a static list named **TAP Quick Links**. Enter/select the following:
    - Name: **TAP Quick Links**
    - Type: **Static**

    Click **Next**.
    ![Lists shared component with the TAP Quick Links static list being created.](images/create-list-details.png ' ')


4. Add the following 4 entries:

    | List Entry Label  |  Target Page ID or custom URL |
    | --- | --- |
    | New Requisition | 2 |
    | Add Candidate  |   5 |
    | Today’s Interviews | 6 |
    | Pending Offers | 8 |

    Click **Next**.
    ![Lists shared component with the TAP Quick Links static list being created.](images/list-entries.png ' ')

5. Click **Create List**.
    ![Create list dialog](images/create-list-confirm.png ' ')


6. Select TAP Quick Links. From the right side List Details, select **Grid Edit**. 
    ![Lists shared component with the TAP Quick Links static list being created.](images/grid-edit.png ' ')

7. In the modal Dialog Wizard, add the below icons:

    | Entry  |  Icon |
    | --- | --- |
    | New Requisitions  |   fa-plus |
    | Add Candidate     |   fa-user-plus |
    | Today’s Interviews |  fa-calendar |
    | Pending Offers  |     fa-envelope |

    Click **Save**.

    ![Grid list entries](images/edit-icons.png ' ')


## Task 2: Display TAP Quick Links on Home Page

1. Click **Edit Page 1**.

    ![TAP Quick Links list entries](images/edit-page1.png ' ')

2. On TAP Home, add a **Quick Links** List region sourced from TAP Quick Links. 
    Right-click **Body** and select **Create Region**.

    ![TAP Home Page Designer showing the Quick Links media-list region.](images/create-region.png ' ')

3. Enter/select the following in the Property Editor:
    - Name: Quick Links
    - Type: List
    - Source > List: TAP Quick Links
    ![Property Editor](images/region-details1.png ' ')

    - Template Options:
        - Style: Remove UI Decoration

        ![Property Editor](images/region-details2.png ' ')

4. Switch to the Attributes tab in the Property Editor. Enter/select the following:
    - List Template: **Media List**
        ![Property Editor](images/attributes1.png ' ')
    - Template Options:
        - Apply Theme Colors: **Check** the box
        ![Property Editor](images/attributes2.png ' ')

4. **Save and Run**. Verify that all four links open their expected pages.

    ![Property Editor](images/save-and-run.png ' ')

    ![TAP Home page displaying the Quick Links media list.](images/verify-tap-quick-links.png ' ')



## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026
