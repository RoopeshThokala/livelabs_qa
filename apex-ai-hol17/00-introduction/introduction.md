# Introduction

## About This Workshop

In this workshop, you will add advanced data-management features to the Employee Self-Service Portal (ESS) and Talent Acquisition Portal (TAP) applications. Earlier modules used simple DML processes to save and retrieve data. This module introduces APEX Collections and REST Data Sources for multi-step workflows and externally sourced data.

Estimated Workshop Time: 30 minutes

## Where We Are

ESS and TAP contain the core employee and recruiting workflows. This workshop adds temporary data staging for wizard pages and synchronizes public holiday data into ESS.

## What You Will Build

In ESS, you will build an onboarding wizard that stages personal information and document uploads in an APEX Collection. You will also synchronize public holiday data from a REST endpoint and show it in the Leave Calendar.

In TAP, you will build an offer wizard that stages offer details before creating the offer and sending its notification.

## Objectives

In this workshop, you will:

- Build an Employee Self-Service onboarding wizard that stages data in an APEX Collection.
- Store onboarding documents across separate collection rows before committing them to database tables.
- Create a REST Data Source for public holidays and synchronize it into a local table.
- Add public holidays to the Leave Calendar.
- Build a Talent Acquisition Portal offer wizard that stages offer data in an APEX Collection.

## Prerequisites

- Complete the earlier modules that create the `TMS_` tables and the ESS and TAP applications.
- Sign in to the Oracle APEX workspace used for the Talent Management System.
- Use the ESS and TAP credentials supplied in your workshop environment when you run the applications.

## Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following applications:

- **<a href="files/ess-export10.sql" download="ess-export10.sql">Employee Self-Service Portal</a>**

- **<a href="files/tap-export11.sql" download="tap-export11.sql">Talent Acquisition Portal</a>**

Import them into your workspace. In **App Builder**, select **Import**, upload each file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Lab Modules

| Lab | Primary Application | Est. Time |
| --- | --- | ---: |
| Lab 1: Build the ESS Onboarding Wizard Using Collections | ESS | 15 minutes |
| Lab 2: Add Public Holidays to the Leave Calendar | ESS | 5 minutes |
| Lab 3: Build the TAP Offer Wizard Using Collections | TAP | 5 minutes |

## Learn More - Useful Links

- [Oracle APEX Product Overview](https://www.oracle.com/apex/)
- [Oracle APEX 26.1 Documentation](https://docs.oracle.com/en/database/oracle/apex/26.1/)
- [Using APEX Collections](https://docs.oracle.com/en/database/oracle/apex/26.1/aeapi/using-apex-collections.html)
- [Managing REST Data Sources](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/managing-REST-data-sources.html)

## Acknowledgements

- **Author** - Ankita Beri, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, October, 2026