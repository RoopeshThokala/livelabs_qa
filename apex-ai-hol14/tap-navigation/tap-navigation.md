# Lab 1: Restructure TAP Navigation

## Introduction

Create a grouped navigation menu for TAP app. Keep contextual pages available through report links and buttons rather than adding them to the main menu.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

- Create parent navigation entries.
- Assign TAP pages to menu groups.
- Add icons and verify the runtime menu.

## Task 1: Create the parent entries

1. From the **TAP** application, navigate to **Shared Components** > **Navigation Menu**.

    ![TAP Shared Components page with Navigation Menu selected.](images/open-tap-navigation-menu.png ' ')

2. Select **Navigation Menu**.

    ![TAP Shared Components page with Navigation Menu selected.](images/select-navigation-menu.png ' ')

3. Select **Create List Entry**.

    ![TAP Shared Components page with Navigation Menu selected.](images/create-list-entry.png ' ')

3. Create the following parent entries with corresponding attributes.

    | List Entry Label | Sequence | Icon | Target Type |
    |--- |--- |--- | --- |
    | Recruitment | 120 | fa-briefcase | No Target |
    | Hiring Process | 130 |fa-tasks | No Target |

    ![Navigation menu entries configured as parent items with no target.](images/create-tap-parent-recruitment.png ' ')

    ![Navigation menu entries configured as parent items with no target.](images/create-tap-parent-hiring.png ' ')



## Task 2: Assign TAP pages and verify the menu

1. Assign Recruitment Metrics Hub, Job Openings, Job Requisitions, and Candidate Pipeline to **Recruitment**. 
    Select **edit** for Recruitment Metrics Hub, change the Parent List Entry to **Recruitment**. Click **Apply Changes**.

    ![Navigation menu hierarchy showing TAP pages assigned to their parent entries.](images/edit-entry.png ' ')

    ![Navigation menu hierarchy showing TAP pages assigned to their parent entries.](images/child-recruitment1.png ' ')

    Similarly, for entries **Job Openings** and **Job Requisitions**, change the Parent List Entry to **Recruitment**.

    ![Navigation menu hierarchy showing TAP pages assigned to their parent entries.](images/child-recruitment2.png ' ')

    ![Navigation menu hierarchy showing TAP pages assigned to their parent entries.](images/child-recruitment3.png ' ')

2. Next, assign Parent List Entry to **Hiring Process** for entries  **Interview Schedule** and **Bulk Stage Update**.
    ![Navigation menu hierarchy showing TAP pages assigned to their parent entries.](images/child-hiring1.png ' ')

    ![Navigation menu hierarchy showing TAP pages assigned to their parent entries.](images/child-hiring2.png ' ')

3. Finally, assign Parent List Entry to **Offers** for **Offer Management** entry.

    ![Navigation menu hierarchy showing TAP pages assigned to their parent entries.](images/child-offer.png ' ')

2. Delete the following entries from the Navigation list entries:
    - Requisition Detail
    - Candidate Profile 
    - Offers

    ![Navigation menu with contextual pages removed from the main menu.](images/remove-req-detail.png ' ')

3. Run TAP and confirm that the left sidebar groups and links open the expected pages.

    ![TAP runtime navigation sidebar showing Recruitment, Hiring Process, Offers, and Admin groups.](images/verify-tap-navigation-runtime.png ' ')

## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026

