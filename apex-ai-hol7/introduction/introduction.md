# Developing Reports

## Introduction

The Talent Acquisition Portal has the data recruiters need, but each team needs a clearer way to act on it. In this module, you will turn that data into practical workspaces: a candidate report for review, an AI-assisted requisition search, an editable interview schedule, and a job board for open roles. You will then give employees a simpler way to manage their own onboarding tasks in the Employee Self-Service Portal.

Estimated Workshop Time: 40 minutes

### Objectives

In this module, you will:

- Create report experiences for candidates, requisitions, interviews, and job openings in TAP.
- Add natural-language search context to the Job Requisitions report.
- Configure editable grids for interview scheduling and employee onboarding tasks.

## Prerequisites

- An Oracle APEX 26.2 workspace.
- Complete the earlier modules that create the TAP and ESS applications and their TMS tables.
- Sign in to the APEX workspace that contains both applications.

> **Note:** Screenshots were captured with Oracle APEX 26.1. Minor user interface differences may appear in Oracle APEX 26.2.

## Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following applications:

- **<a href="files/tap-export2.sql" download="tap-export2.sql">Talent Acquisition Portal</a>**
- **<a href="files/ess-export2.sql" download="ess-export2.sql">Employee Self-Service Portal</a>**

Import them into your workspace. In **App Builder**, select **Import**, upload each file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Summary

By the end of this module, TAP will support the key moments in a recruiter’s day, from reviewing candidates to publishing open roles. ESS will also give employees a focused, editable view of their onboarding work.

## Acknowledgements

- **Author** - Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, July 29, 2026
