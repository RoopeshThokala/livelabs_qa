# Lab 5: Create the ESS Audit Log

## Introduction

In this lab, you create an HR-administrator-only Interactive Report over the audit log. The report provides a reviewable history of changes recorded in `TMS_AUDIT_LOG`.

Estimated Time: 3 minutes

### Objectives

- Create the ESS **Audit Log** Interactive Report.
- Restrict the page and its navigation entry to HR administrators.
- Confirm that non-administrators cannot open the report.

## Task 1: Create and secure the Audit Log page

1. From **App Builder**, open **Employee Self-Service Portal (ESS)** and click **Create Page**.

    ![Open Create Page in ESS](images/lab5-ess-open-create-page.png " ")

2. In the **Create a Page** dialog, select **Interactive Report** and click **Next**.

    ![Select Interactive Report](images/lab5-select-interactive-report.png " ")

3. In the Interactive Report definition, set **Page Number** to **`20`**, **Name** to **`Audit Log`**, choose **Table** as the source type, and set **Table / View Name** to **`TMS_AUDIT_LOG`**. Keep **Use Navigation** enabled with **Create a new entry**, then click **Create Page**.

    ![Define and create the Audit Log page](images/lab5-define-audit-log-page.png " ")

4. In Page Designer, select the **Page 20: Audit Log** page root. In the Property Editor, expand **Security**, set **Authorization Scheme** to **`IS_HR_ADMIN`**, and click **Save**.

    ![Set Audit Log page authorization](images/lab5-audit-log-page-security.png " ")

5. Return to the ESS application home page, click **Shared Components**, and under **Navigation and Search** click **Navigation Menu**.

    ![Open the ESS Navigation Menu shared component](images/lab5-open-shared-components.png " ")

6. On the **Lists** page, click the **Navigation Menu** list.

    ![Open the Navigation Menu entries](images/lab5-open-navigation-menu-list.png " ")

7. On the Navigation Menu list, click the **edit pencil** for the **Audit Log** entry to open its **List Entry** screen.

     ![Confirm the secured Audit Log navigation entry](images/lab5-audit-log-entry-confirmed.png " ")

8. On the **Authorization** tab, set **Authorization Scheme** to **`IS_HR_ADMIN`**, then click **Apply Changes**.

     ![Authorize the Audit Log navigation entry](images/lab5-authorize-audit-log-entry.png " ")
   

## Task 2: Verify access and audit visibility

1. Sign in to ESS as an HR administrator and open **Audit Log**. Confirm that the report displays audit rows.

    ![Verify the HR-administrator Audit Log report](images/lab5-hr-admin-audit-log.png " ")

2. Sign out and sign in as a non-HR employee. Confirm that **Audit Log** is not shown in the navigation menu.

    ![Verify Audit Log is hidden for a non-HR employee](images/lab5-non-hr-audit-log-hidden.png " ")

## Summary

You have completed the security baseline for TAP and ESS: authenticated users, reusable role checks, protected pages and requests, row-level data filtering, and HR-admin audit visibility.

## Acknowledgements

- **Author** - Ashwin Rao, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Ashwin Rao, August 2026
