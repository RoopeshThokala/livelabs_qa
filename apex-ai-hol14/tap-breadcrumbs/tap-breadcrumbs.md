# Lab 2: Add TAP Breadcrumbs

## Introduction

Configure a hierarchy that makes related TAP pages easy to trace. For example, Candidate Profile becomes a child of Candidate Pipeline, and Requisition Detail becomes a child of Job Openings.

Estimated Time: 3 minutes

### Objectives

In this lab, you will:

- Add top-level breadcrumb entries.
- Set parent entries for existing pages.
- Reorder and test breadcrumb paths.

## Task 1: Create breadcrumb parents

1. Open **TAP** > **Shared Components** > **Breadcrumbs**.

    ![TAP Breadcrumbs shared component with the existing breadcrumb selected.](images/open-tap-breadcrumbs.png ' ')

2. Open the existing TAP **Breadcrumb**.
     ![TAP Breadcrumbs shared component with the existing breadcrumb selected.](images/select-breadcrumb.png ' ')

3. Add **Recruitment** and **Hiring Process** as new entries with **No Target**. Click **New Entry +**.

    ![Breadcrumb entry dialog creating the Recruitment parent entry with no target.](images/new-entry.png ' ')

4. Enter/select the following:
    - Page: 0
    - Parent Entry: - No Parent Entry -
    - Sequence: 10
    - Short Name: Hiring Process
    - Target is a: - No Target -

    Click Create and Create Another.

    ![Breadcrumb entry dialog creating the Recruitment parent entry with no target.](images/new-entry-hiring-process.png ' ')
    

5. Similarly, create a new entry for **Recruitment**.

    ![Breadcrumb entry dialog creating the Recruitment parent entry with no target.](images/new-entry-Recruitment.png ' ')

    

## Task 2: Configure the hierarchy

1. In the **Breadcrumbs** tab, set parent entries so that the entries follow the hierarchy shown in the table:
    | Breadcrumb Entry | Parent Entry |
    | --- | --- |
    | Home	| No Parent |
    | Recruitment |	No Parent |
    | Recruitment Metrics Hub |	Recruitment |
    | Job Openings | Recruitment |
    | Bulk Stage Update | Recruitment |
    | Requisition Detail |	Job Openings |
    | Job Requisitions | Recruitment |
    | Candidate Pipeline |	Recruitment |
    | Candidate Profile	| Candidate Pipeline |
    | Interview Feedback | Candidate Profile |
    | Hiring Process |	No Parent |
    | Interview Schedule | Hiring Process |
    | Offers | No Parent |
    | Offer Management | Offers |


    ![Breadcrumb entries showing Recruitment and its candidate-related hierarchy.](images/configure-hierarchy.png ' ')

2. For example, to set Hiring Process as the Parent Entry for Interview Schedule, select **Interview Schedule** and set Parent Entry to **Hiring Process (Page 0)**.

    ![Breadcrumb entries showing Hiring Process and Offers hierarchy.](images/parent-entry-interview-schedule.png ' ')


4. Run the app and open each affected page in Page Designer, verify its breadcrumb entry, and test paths such as **Recruitment > Job Requisition > Requisition Detail**.

    ![TAP runtime page displaying the Recruitment, Candidate Pipeline, and Candidate Profile breadcrumb path.](images/verify-tap-breadcrumb-path.png ' ')

## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026

