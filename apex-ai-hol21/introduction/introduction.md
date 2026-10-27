# Workflow and Business Process Automation

## Introduction

Data now flows through TAP and ESS, and AI can assist with decisions. This module adds the human review, handoff, and completion controls needed for business processes that cannot be fully automated.

You create a routed requisition-approval workflow in TAP and a parallel employee-onboarding workflow in ESS. Both workflows use native APEX task definitions, workflow parameters and variables, **Human Task - Create** activities, **Unified Task List** pages, and **Workflow Console** pages.

Estimated Workshop Time: 3 hours 45 minutes

### Objectives

In this workshop, you will:

- Route a TAP requisition to the HR administrator or department head based on headcount.
- Start and complete approval tasks from a Unified Task List.
- Create an ESS onboarding workflow that waits for two **Human Task - Create** activities in a **Parallel Flow**.
- Monitor workflow instances and diagnose their state in a **Workflow Console**.

### Prerequisites

- Complete the earlier TAP and ESS modules, including the Job Requisition form, employee data, authorization schemes, and email templates.
- Have access to the TAP and ESS applications as the users and roles identified in the labs.
- Have a department with one manager whose employee record has a valid email address, and active employees for testing.
- Ensure that each TAP workflow instance receives `TMS_JOB_REQUISITIONS.REQ_ID` as its **Requisition ID** parameter.

### Downloads

Stuck or missed out on completing the earlier labs? Don't worry! You can download the following files:

- **<a href="files/tap-export15.sql" download="tap-export15.sql">Talent Acquisition Portal</a>**
- **<a href="files/ess-export14.sql" download="ess-export14.sql">Employee Self-Service Portal</a>**

Import the application for the lab that you are completing. In **App Builder**, select **Import**, upload the export file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.

## Acknowledgements

- **Author** - Aravind Madhavan, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
