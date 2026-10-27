# Enable Push Notifications for Overdue Onboarding Tasks

## Introduction

In this lab, you will enable push notifications in Employee Self-Service Portal (ESS), subscribe an employee's device, and add a **Send Push Notification** action to the existing **Task Overdue** automation.

Estimated Lab Time: 12 minutes

### Objectives

In this lab, you will:

- Enable push notifications and configure credentials.
- Create the notification settings pages and subscribe a device.
- Address each notification to the employee identified by the automation query.
- Review the execution log and verify receipt on the subscribed device.

### Prerequisites

- Have the **Task Overdue** automation created in Module 16 and an employee account for ESS.
- Use a device and browser that support web push. Open ESS over HTTPS; install it if required by the device.
- Ensure the instance's email configuration supports the automation's existing **Send E-Mail** action. An error in that action can stop execution before the push action runs.

### Downloads

Stuck or missed out on completing the earlier labs? Don't worry! You can download the following file:

- **<a href="../0-introduction/files/ess-export17.sql" download="ess-export17.sql">Employee Self-Service Portal</a>**

Import it into your workspace. In **App Builder**, select **Import**, upload `ess-export17.sql`, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application export was created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Vector Provider:** Before running this lab, configure the vector provider. See **Module 22, Lab 1: Search Configuration and Vector Providers**.

## Task 1: Enable Push Notifications

1. In your workspace, open **Employee Self-Service Portal**.

2. On the Application home page, click the **Shared Components** icon.

    ![Open Shared Components](images/3_1_1_shared_components.png " ")

3. Under **User Interface**, click **Progressive Web App**.

    ![Open Progressive Web App](images/3_1_2_progressive_web_app.png " ")

4. Click **Push Notifications**.

5. Set **Enable Push Notifications** to **On**.

    ![Enable Push Notifications](images/3_1_3_enable_push_notifications.png " ")

## Task 2: Configure Push Notification Credentials

1. Under **Credentials**, click **Generate Credentials** to create a public/private key pair.

    ![Generate Credentials](images/3_2_1_generate_credentials.png " ")

> **Note:** Regenerating the credentials requires users to subscribe again.

2. In the confirmation dialog, click **Generate Credentials**.

    ![Confirm Generate Credentials](images/3_2_2_confirm_generate_credentials.png " ")

3. Verify that the generated credential is selected in **Credentials**. In **Contact Email**, you can enter the application owner's email address for the push service provider to use if it needs to contact the owner.

    ![Credentials and Contact Email](images/3_2_3_credentials_contact_email.png " ")

## Task 3: Add the Push Notification Settings Pages

1. Next to **Settings Page**, click **Add Settings Page**. If a settings page is already selected, continue to Step 3.

    ![Add Settings Page](images/3_3_1_add_settings_page.png " ")

2. In **Create Push Notification Settings Page**, configure the following values, then click **Create**. Use unused page numbers if these numbers are already assigned to other pages.

    | Section | Property | Value |
    | --- | --- | --- |
    | User Settings Page | Page Source | Create a new page |
    | User Settings Page | Page Number | `20000` |
    | Push Notifications Settings Page | Page Number | `20010` |

    ![Configure and create the settings pages](images/3_3_2_create_settings_pages.png " ")

3. Verify that **Settings Page** shows **20010. Push Notifications**, or the page number you selected. Click **Apply Changes**.

    ![Verify Settings Page and Apply Changes](images/3_3_3_apply_changes.png " ")

## Task 4: Subscribe the Employee's Device

1. In the breadcrumb, click the application name to return to the Application home page.

2. Click **Run Application**. Use the device on which you want to receive notifications.

    ![Run Application](images/3_4_1_run_application.png " ")

3. Enter the employee username and password, then click **Sign In**. The authenticated username, represented by `APP_USER`, identifies the notification recipient.

    ![Sign in to ESS](images/3_4_2_employee_sign_in.png " ")

4. Click the employee account menu in the application header, then click **Settings**.

    ![Open the employee account menu and Settings](images/3_4_3_open_settings.png " ")

5. In **Settings**, click **Push Notifications**.

    ![Open Push Notifications](images/3_4_4_push_notifications.png " ")

6. Select **Enable push notifications on this device**.

    ![Enable notifications on this device](images/3_4_5_enable_device_notifications.png " ")

7. When the browser requests notification permission, click **Allow**.

    ![Allow notifications in the browser](images/3_4_5_allow_notifications.png " ")

8. Verify that **Enable push notifications on this device** is selected. Keep the device connected for the notification test. Each receiving device must be subscribed separately.

    ![Verify the subscribed device](images/3_4_6_device_enabled.png " ")

## Task 5: Review the Existing Overdue Task Automation

1. Return to ESS in App Builder. Click the **Shared Components** icon.

    ![Return to Shared Components](images/3_5_1_shared_components.png " ")

2. Under **Workflows and Automations**, click **Automations**.

    ![Open Automations](images/3_5_2_automations.png " ")

3. Click **Task Overdue**.

    ![Open Task Overdue](images/3_5_3_open_task_overdue.png " ")

4. Click **Settings**. Verify that **Actions Initiated On** is **Query**.

    ![Verify Actions Initiated On](images/3_5_4_actions_initiated_query.png " ")

5. Click **Source**. Review the SQL query and confirm that it returns these columns. Preserve the other columns and conditions used by the existing actions.

    | Result column | Purpose |
    | --- | --- |
    | `EMPLOYEE_EMAIL` | ESS username receiving the notification |
    | `TASK_NAME` | Task name in the notification title |
    | `DUE_DATE` | Due date of the selected task |
    | `TASK_ID` | Task identifier used by the status update action |

    In the course schema, employee email comes from `TMS_EMPLOYEES.EMAIL`. Its value must match the authenticated ESS username. ESS shows the employee username in uppercase, so use `UPPER(e.email) AS employee_email` for that result column. Preserve the query's other columns and conditions. Use the recipient from each query row; the automation has no interactive employee session from which to obtain the recipient.

    ![Review the query result columns](images/3_5_5_source_columns.png " ")

6. Click **Action Execution**. Verify that **Execute Actions When** is **Rows returned**.

    ![Verify Rows returned](images/3_5_6_rows_returned.png " ")

## Task 6: Add the Send Push Notification Action

1. Click **Actions**, then **Add Action**.

    ![Add an automation action](images/3_6_1_add_action.png " ")

2. On **Edit Action**, configure the following values, then click **Create**. Execution sequence `30` places the push action after **Update Status** (`10`) and **Send E-Mail** (`20`).

    | Property | Value |
    | --- | --- |
    | Name | `Send Overdue Task Push Notification` |
    | Type | Send Push Notification |
    | Execution Sequence | `30` |
    | To | `&EMPLOYEE_EMAIL.` |
    | Title | `Overdue Task: &TASK_NAME.` |
    | Body | `This task is overdue. Please complete it today.` |

    Keep the final period in each substitution string. APEX replaces the strings with values from the current query row. Leave **Link Target** at its default to open ESS when the employee clicks the notification.

    ![Configure the push action and click Create](images/3_6_2_create_push_action.png " ")

3. Verify that **Send Overdue Task Push Notification** appears after the existing actions. Click **Save Changes**.

    ![Verify action order and Save Changes](images/3_6_3_save_changes.png " ")

## Task 7: Test the Automation and Verify Delivery

1. In **SQL Workshop**, open **SQL Commands**.

2. Run the following read-only query to review the tasks selected by the automation. If your Module 16 query differs, use the same conditions as that query.

    ```sql
    <copy>
    SELECT t.task_id,
           t.task_name,
           t.due_date,
           UPPER(e.email) AS employee_email
      FROM tms_onboarding_tasks t
      JOIN tms_employees e ON e.employee_id = t.employee_id
     WHERE t.due_date < TRUNC(SYSDATE)
       AND t.status NOT IN ('Completed', 'Cancelled', 'Overdue')
     ORDER BY e.email, t.task_id;
    </copy>
    ```

3. Return to **App Builder**. Open **Employee Self-Service Portal**, then select **Shared Components**, **Automations**, and **Task Overdue**.

4. Click **Save and Run**. Keep the existing schedule configuration for this manual test.

    ![Save and run the automation](images/3_7_2_save_and_run.png " ")

5. In the breadcrumb, click **Automations**. Then click **Execution Log**.

    ![Open Execution Log](images/3_7_3_open_execution_log.png " ")

6. Locate the latest run with **Automation Static ID** `task-overdue`. Verify the following:

    - **Status** is **Success**.
    - **Successful Rows** is greater than zero.
    - **Error Rows** is `0`.

    The number of successful rows depends on the eligible tasks in your workspace.

    ![Review the execution result and Messages column](images/3_7_3_execution_log.png " ")

7. Click the number in the run's **Messages** column to open **Log Messages**.

8. Review the messages. If none were logged, the page shows **No detail messages available for this execution.**

> **Note:** A successful execution does not confirm that the device received the notification.

    ![Review Log Messages](images/3_7_4_log_messages.png " ")

9. On the subscribed device, verify that a notification appears with the following title and body. Confirm that the task name matches a task selected for this employee.

    ```text
    Overdue Task: <Task Name>
    This task is overdue. Please complete it today.
    ```

10. Click the notification and verify that ESS opens. Sign in if prompted. Open **My Work → My Onboarding Tasks** from the application navigation menu and confirm that the notified task has **Overdue** status.

## Summary

You configured push notifications and notification settings pages, subscribed an employee's device, and added a **Send Push Notification** action to the existing **Task Overdue** automation. You reviewed execution results and tested receipt and application opening on the subscribed device.

## Learn More

- [Delivering Push Notifications](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/delivering-push-notifications.html)
- [Letting Users Manage Notification Settings](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/letting-users-manage-notification-settings.html)
- [Opting-In to Receive Push Notifications](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/opting-receive-push-notifications.html)
- [Editing an Existing Automation](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/editing-an-existing-automation.html)

## Acknowledgements

- **Author** - Shanmukh Kornana, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, October 2026