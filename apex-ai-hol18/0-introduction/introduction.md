# Introduction

## About This Workshop

In this workshop, you secure the Talent Acquisition Portal (TAP) and Employee Self-Service Portal (ESS). You replace the open development experience with authenticated access, role-based authorization, data filtering, session protection, and an administrator audit trail.

> **Security note:** This is a controlled lab. Its local username/password implementation is deliberately simple so you can see each APEX building block. For a production application, use an enterprise identity provider or a centrally managed APEX authentication mechanism, a modern adaptive password hash, TLS, MFA, and an approved audit-retention policy.

Estimated Workshop Time: 20 minutes

## Where We Are

TAP and ESS contain the core recruiting and employee workflows. This workshop adds authentication, authorization, data filtering, session protection, and an administrator audit trail.

## Objectives

In this workshop, you will:

- Configure custom authentication for TAP and ESS.
- Compute the Employee ID based on the logged-in user.
- Create TAP and ESS role-based authorization schemes.
- Restrict pages and navigation entries by persona.
- Filter candidate data for hiring managers and protect sensitive page state.
- Create an ESS administrator audit-log report.

## Applications

**Talent Acquisition Portal (TAP)**: secured for recruiters, hiring managers, and TA administrators.

**Employee Self-Service Portal (ESS)**: secured for employees and HR administrators.

## Prerequisites

- Access to an Oracle APEX workspace with Builder and SQL Workshop privileges.
- TAP and ESS applications from the preceding modules.
- The base TMS schema, including `TMS_EMPLOYEES`, `TMS_JOB_REQUISITIONS`, and the sample job and department rows referenced by the setup script, is available.
- Lab 1 creates `TMS_ROLES` and `TMS_EMPLOYEE_ROLES` and provisions the four active demo accounts used to test each role.
- If your application uses different page numbers, apply each setting to the equivalent page.
- The lab password assigned to every active employee is `apex`.

## Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following files:

- **<a href="files/ess-export11.sql" download="ess-export11.sql">Employee Self-Service Portal</a>**
- **<a href="files/tap-export12.sql" download="tap-export12.sql">Talent Acquisition Portal</a>**
- **<a href="files/role-based-access-setup.sql" download="role-based-access-setup.sql">Role-Based Access Setup Script</a>**

Import the application files into your workspace. In **App Builder**, select **Import**, upload each application file, and follow the steps in the **Import Application** wizard. In Lab 1, upload and run `role-based-access-setup.sql` from **SQL Workshop**.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Lab Modules

| Lab | Primary Application | Est. Time |
| --- | --- | ---: |
| Lab 1: Authenticate TAP and ESS | TAP and ESS | 6 minutes |
| Lab 2: Create Authorization Schemes | TAP and ESS | 4 minutes |
| Lab 3: Protect Pages and Navigation | TAP and ESS | 5 minutes |
| Lab 4: Enforce Row-Level Security | TAP and ESS | 3 minutes |
| Lab 5: Create the ESS Audit Log | ESS | 3 minutes |

## Start the Workshop

Click **Lab 1: Authenticate TAP and ESS** to begin.

## Acknowledgements

- **Author** - Ashwin Rao, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, October, 2026