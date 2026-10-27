# Create ESS Email Templates

## Introduction

In this lab, you create email templates for leave, onboarding, and probation events. Each template has a static identifier. Automations populate its placeholders from a query row.

Estimated Lab Time: 10 minutes

### Where We Are

ESS has leave and onboarding workflows that need consistent employee communications. You will create reusable email templates that the scheduled automations in the next lab can select by static identifier.

### Objectives

In this lab, you will:

- Verify instance email prerequisites.
- Create five ESS email templates.
- Use stable static identifiers and placeholders.

## Task 1: Configure Instance Email

1. Ask your instance administrator to configure instance email:

    - In **Administration Services**, configure the SMTP host and port.
    - Set a default From address, such as `noreply@acme.example`.

2. Follow the [Oracle email setup guidance](https://docs.oracle.com/en/database/oracle/apex/26.1/aeadm/configuring-email.html) for your instance.

3. If you use Oracle APEX Service (`https://www.oracleapex.com`), ignore this task. The service manages instance email.

4. Confirm that the application can send a test email before you continue.

## Task 2: Create the ESS Templates

> **Note:** The screenshots show **Leave Approved**. Follow the same field layout for each subsequent template, using the values and content provided in its numbered step.

1. In **Employee Self-Service Portal (ESS)**, navigate to **Shared Components**.

    ![Task 2: Shared components](images/task-02-step-01-shared-components.png)

2. Under **User Interface**, select **Email Templates**.

    ![Task 2: Email template](images/task-02-step-02-email-template.png)

3. Click **Create Email Template**.

    ![Task 2: Create email template](images/task-02-step-03-create-email-template-03.png)

4. Configure the following attributes:

    - Under **Identification**:
        - Template Name: **Leave Approved**
        - Email Subject: **HR approved your leave request**

    - **HTML Format** > **Body**: Copy and paste the following HTML code:

        ```html
        <copy>
        <p>Hello <strong>#EMPLOYEE_NAME#</strong>,</p>

        <p>HR approved your <strong>#LEAVE_TYPE#</strong> leave from <strong>#START_DATE#</strong> to <strong>#END_DATE#</strong>.</p>

        <p>Please enjoy your time off and remember to hand over any critical tasks in advance.</p>

        <p>HR Team</p>
        </copy>
        ```

    ![Leave Approved identification and HTML body settings](images/task-02-step-04-leave-approved-html.png)

    - **Plain Text Format** > **Content**: Copy and paste the following text:

        ```text
        <copy>
        Hello #EMPLOYEE_NAME#,

        HR approved your #LEAVE_TYPE# leave from #START_DATE# to #END_DATE#.

        Please enjoy your time off and remember to hand over any critical tasks in advance.

        HR Team
        </copy>
        ```

    - Click **Create Email Template** to save the template.

    ![Leave Approved plain-text content and Create Email Template button](images/task-02-step-04-leave-approved-plain-text.png)

5. Click **Create Email Template** to begin the next template.

6. Configure the following attributes:

    - Under **Identification**:
        - Template Name: **Leave Rejected**
        - Email Subject: **HR could not approve your leave request**

    - **HTML Format** > **Body**: Copy and paste the following HTML code:

        ```html
        <copy>
        <p>Hello <strong>#EMPLOYEE_NAME#</strong>,</p>

        <p>HR could not approve your recent leave request.</p>

        <p><em>Reason:</em> #REJECTION_REASON#</p>

        <p>If you believe this is an error or have questions, please contact HR.</p>
        </copy>
        ```

    - **Plain Text Format** > **Content**: Copy and paste the following text:

        ```text
        <copy>
        Hello #EMPLOYEE_NAME#,

        HR could not approve your recent leave request.

        Reason: #REJECTION_REASON#

        If you have questions, please contact HR.
        </copy>
        ```

    - Click **Create Email Template** to save the template.

    ![Leave Rejected plain-text content and Create Email Template button](images/leave-rejected-email-template.png)

7. Click **Create Email Template** to begin the next template. Configure the following attributes:

    - Under **Identification**:
        - **Template Name:** Task Overdue Notification
        - **Email Subject:** Action needed: Overdue onboarding task

    - **HTML Format** > **Body**: Copy and paste the following HTML code:

        ```html
        <copy>
        <p>Hello <strong>#EMPLOYEE_NAME#</strong>,</p>

        <p>Your onboarding task <strong>"#TASK_NAME#"</strong> was due on <strong>#DUE_DATE#</strong> and is now <span style="color:#ef4444;">overdue</span>.</p>

        <p>Please complete it as soon as possible or reach out to your manager if you need help.</p>
        </copy>
        ```

    - **Plain Text Format** > **Content**: Copy and paste the following text:

        ```text
        <copy>
        Hello #EMPLOYEE_NAME#,

        Your onboarding task "#TASK_NAME#" was due on #DUE_DATE# and is now OVERDUE.

        Please complete it as soon as possible or reach out to your manager if you need help.
        </copy>
        ```

    - Click **Create Email Template** to save the template.

    ![Task Overdue Email Template](images/task-overview-email-template.png)

8. Click **Create Email Template** to begin the next template. Configure the following attributes:

    - Under **Identification**:
        - **Template Name:** Welcome to Acme Corp
        - **Email Subject:** Welcome to Acme Corp, #EMPLOYEE_NAME#!

    - **HTML Format** > **Body**: Copy and paste the following HTML code:

        ```html
        <copy>
        <h2 style="margin-bottom:0">Welcome to Acme Corp, #EMPLOYEE_NAME#!</h2>

        <p>We look forward to your first day on <strong>#START_DATE#</strong>.</p>

        <ul>
                <li><strong>Department:</strong> #DEPT_NAME#</li>
                <li><strong>Manager:</strong> #MANAGER_NAME#</li>
        </ul>

        <p>Please sign in to the Employee Self-Service portal to view your onboarding tasks and upload any required documents.</p>

        <p>If you have questions before you start, just reply to this email.</p>

        <p>HR Team</p>
        </copy>
        ```

    - **Plain Text Format** > **Content**: Copy and paste the following text:

        ```text
        <copy>
        WELCOME TO ACME CORP, #EMPLOYEE_NAME#!

        We look forward to your first day on #START_DATE#.

        Department: #DEPT_NAME#
        Manager: #MANAGER_NAME#

        Sign in to the ESS portal to view your onboarding tasks and upload documents.

        If you have questions before you start, just reply to this email.

        HR Team
        </copy>
        ```

    - Click **Create Email Template** to save the template.

    ![Welcome Email Template](images/welcome-email-template.png)

9. Click **Create Email Template** to begin the next template. Configure the following attributes:

    - Under **Identification**:
        - **Template Name:** Probation Alert
        - **Email Subject:** Probation ends soon for #EMPLOYEE_NAME#

    - **HTML Format** > **Body**: Copy and paste the following HTML code:

        ```html
        <copy>
        <p><strong>Probation Review Reminder</strong></p>

        <p>Employee: <strong>#EMPLOYEE_NAME#</strong><br>
        Hire Date: <strong>#HIRE_DATE#</strong><br>
        Probation End Date: <strong>#PROBATION_END#</strong></p>

        <p>The probation period ends in <strong>7 days</strong>. Schedule the confirmation meeting and update the system with the outcome.</p>

        <p>HR Team</p>
        </copy>
        ```

    - **Plain Text Format** > **Content**: Copy and paste the following text:

        ```text
        <copy>
        PROBATION REVIEW REMINDER

        Employee: #EMPLOYEE_NAME#
        Hire Date: #HIRE_DATE#
        Probation End Date: #PROBATION_END#

        The probation period ends in 7 days.
        Please schedule the confirmation meeting and update the system.

        HR Team
        </copy>
        ```

    - Click **Create Email Template** to save the template.

    ![Probation Alert Email Template](images/probation-alert-email-template.png)

    ![Probation Alert Plain text Email Template](images/probation-alert-plaintext-template.png)

10. Verify the static identifiers:

    - Return to **Email Templates**.
    - Confirm that all five static identifiers appear.

    ![Task 2: Verify email templates](images/task-02-step-09-check-templates-exists.png)

11. The static identifier is what you reference with `p_template_static_id` in `APEX_MAIL.SEND` or select in a native **Send E-Mail** action.

    ![Task 2: Sample API usage](images/task-02-step-10-sample-api-usage.png)

## Summary

You created five ESS email templates with stable static identifiers and row-specific placeholders. The next lab uses these templates in native Send E-Mail automation actions.

You may now **proceed to the next lab**.

## Acknowledgements

- **Author** - Aravind Madhavan, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, October 2026
