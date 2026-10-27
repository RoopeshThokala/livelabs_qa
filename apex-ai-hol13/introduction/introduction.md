# Forms Development

## Introduction

The Talent Acquisition Portal (TAP) and Employee Self Service (ESS) applications already contain individual form pages. In this module, you will complete these forms so recruiters can review candidate information, record interview feedback, and update candidate stages. Employees will be able to update their contact details and upload a profile photo or a supporting document for a leave request.

Estimated Workshop Time: 25 minutes

### Objectives

In this workshop, you will:

- Organize Candidate Profile into two columns and add photo display, CV upload, and CV download.
- Link Candidate Profle to Interview Feedback using a master-detail relationship.
- Create an editable interactive grid for bulk candidate stage updates.
- Extend My Profile and Leave Request pages in the ESS Application with contact details and file uploads.

### Prerequisites

- An Oracle APEX **26.1** workspace with the TAP and ESS applications from the earlier modules.
- The TMS schema and sample data, including candidates, interview stages, employees, jobs, departments, and leave requests.
- TAP **Page 11: Candidate Profile** and **Page 13: Interview Feedback**, with the feedback page configured as a modal dialog.
- ESS **Page 4: My Profile** and **Page 5: Leave Request**.
- An employee test account whose login matches exactly one email address in **TMS\_EMPLOYEES**, ignoring letter case.

*Note: These instructions use the page numbers from the workshop applications. If your page numbers differ, replace the page numbers and item prefixes throughout the tasks. Property labels can vary with your Oracle APEX version; use the Property Editor help for the equivalent setting.*

## Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following applications:

- **<a href="files/tap-export7.sql" download="tap-export7.sql">Talent Acquisition Portal</a>**

- **<a href="files/ess-export6.sql" download="ess-export6.sql">Employee Self-Service Portal</a>**

Import them into your workspace. In **App Builder**, select **Import**, upload each file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## What Carries Forward

Module 14 organizes navigation across TAP and ESS. Keep the pages and item names created here available for that work. Module 18 adds recruiter authorization to Bulk Stage Update; creating a navigation entry alone does not restrict access.

## Acknowledgements

- **Author** - Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - September 2026