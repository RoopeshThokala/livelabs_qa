# Extending Application Capabilities

## About This Workshop

The Employee Self-Service Portal (ESS) and Talent Acquisition Portal (TAP) now contain the core employee and recruiting workflows. In this workshop, you will extend both applications with native Oracle APEX components, reusable email templates, and scheduled automations.

ESS is the primary application. You will create an employee leave calendar, a 30-Day Check-In survey, email templates, scheduled automations, and an administrator-only System Logs page. You will then apply the same component patterns in TAP by creating an interview calendar, notification templates, and recruiting automations.

Estimated Workshop Time: 60 minutes

## Where We Are

Earlier modules created and styled the ESS and TAP applications. This module adds automation and communication features that use the existing `TMS_` data model and application workflows.

## What You Will Build

In ESS, you will build an employee-scoped leave calendar, a check-in survey, five email templates, three scheduled automations, and an administrator System Logs report.

In TAP, you will build an interviewer-scoped calendar, three notification templates, and two scheduled automations.

## Objectives

In this workshop, you will:

- Create native Calendar pages that show data for the signed-in user.
- Build an Interactive Report and form with native Star Rating items.
- Create reusable email templates with static identifiers and placeholders.
- Configure scheduled automations that update data and send email notifications.
- Review automation execution information in APEX.

## Prerequisites

- Complete the earlier modules that create the `TMS_` tables and the ESS and TAP applications.
- Sign in to the Oracle APEX workspace used for the Talent Management System.
- Use the ESS and TAP credentials supplied in your workshop environment when you run the applications.
- Configure instance email before completing the email-template and automation labs. See Lab 3, Task 1.

## Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following applications:

- **<a href="files/ess-export9.sql" download="ess-export9.sql">Employee Self-Service Portal</a>**

- **<a href="files/tap-export10.sql" download="tap-export10.sql">Talent Acquisition Portal</a>**

Import them into your workspace. In **App Builder**, select **Import**, upload each file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Lab Modules

| Lab | Primary Application | Est. Time |
| --- | --- | ---: |
| Lab 1: Create the ESS Leave Calendar | ESS | 10 minutes |
| Lab 2: Create the ESS 30-Day Check-In Survey | ESS | 10 minutes |
| Lab 3: Create ESS Email Templates | ESS | 10 minutes |
| Lab 4: Create ESS Scheduled Automations | ESS | 10 minutes |
| Lab 5: Create the ESS System Logs Page | ESS | 5 minutes |
| Lab 6: Create the TAP Interview Calendar | TAP | 5 minutes |
| Lab 7: Create TAP Email Templates | TAP | 5 minutes |
| Lab 8: Create TAP Scheduled Automations | TAP | 5 minutes |

## Learn More - Useful Links

- [Oracle APEX Product Overview](https://www.oracle.com/apex/)
- [Oracle APEX 26.1 Documentation](https://docs.oracle.com/en/database/oracle/apex/26.1/)
- [Using Calendars](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-calendars.html)
- [Managing Automations](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/managing-automations.html)

## Acknowledgements

- **Author** - Aravind Madhavan, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, October 2026