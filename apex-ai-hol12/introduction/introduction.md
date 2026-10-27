# Introduction

## Introduction

**About this Workshop**

In this workshop, you will configure Oracle APEX Dynamic Actions in the Talent Acquisition Portal and Employee Self-Service Portal applications.

The previous module configured the form page items. In this workshop, you will use Dynamic Actions to refresh regions, calculate and display values, provide validation feedback, and open an AI Assistant without a full page submit.

Estimated Workshop Time: 20 minutes

## Objectives

In this workshop, you will:

- Build a real-time Talent Acquisition Portal salary-band progress indicator.
- Refresh Talent Acquisition Portal candidate regions when a requisition changes.
- Add a Talent Acquisition Portal recruiter AI Assistant action.
- Display Employee Self-Service Portal leave balances and warn when a request exceeds the balance.
- Configure the Employee Self-Service Portal onboarding and task-state interactions described in the module.

## Applications

**Talent Acquisition Portal (TAP)**: The primary application for offer validation, pipeline statistics, and candidate stage logic.

**Employee Self-Service Portal (ESS)**: The secondary application for leave balance checks and leave request processing.

## Prerequisites

- An Oracle APEX 26.2 workspace.
- The TAP and ESS applications exist from earlier modules.
- The forms from Module 11 have their page items configured.
- Access to SQL Workshop and Page Designer.

> **Note:** Screenshots were captured with Oracle APEX 26.1. Minor user interface differences may appear in Oracle APEX 26.2.

## Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following applications:

- **<a href="files/tap-export6.sql" download="tap-export6.sql">Talent Acquisition Portal</a>**

- **<a href="files/ess-export5.sql" download="ess-export5.sql">Employee Self-Service Portal</a>**

Import them into your workspace. In **App Builder**, select **Import**, upload each file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Learn More

- [Oracle APEX Dynamic Actions](https://docs.oracle.com/en/database/oracle/apex/26.2/htmdb/managing-dynamic-actions.html)

## Acknowledgements

- **Author** - Ashwin Rao, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
