# Introduction

## About This Workshop

The Employee Self-Service Portal (ESS) and Talent Acquisition Portal (TAP) already use Oracle APEX Universal Theme, but they still look like starter applications. Their Home pages also contain placeholder content rather than useful business metrics.

In this module, you will give each application a distinct visual identity and replace the placeholders with live, data-driven components. ESS becomes the warm, approachable portal used by employees, while TAP receives the restrained corporate styling expected by recruiters and hiring managers.

Estimated Workshop Time: 15 minutes

## Where We Are

Earlier modules built the pages, navigation, reports, and forms required for the employee lifecycle. Module 15 marks the point where ESS becomes the primary teaching application. You will now improve its presentation, expose live onboarding information, and add a reusable Template Component.

TAP is the secondary application in this module. You will apply a corporate blue and grey style and add a concise recruiting KPI summary to its Home page.

## What You Will Build

In ESS, you will build and validate:

- An **ESS Light** theme style with a teal and green visual identity.
- An **ESS Dark** theme style that an end user can select at runtime.
- Accessible, state-aware badges on **My Onboarding Tasks**.
- Four Home-page KPI cards: Tasks Pending, HR Documents Completed, Days Until Start, and Leave Days Available.
- A reusable **Onboarding Progress Bar** Template Component.

In TAP, you will build and validate:

- A **TAP Corporate** theme style with a blue and grey palette.
- Four Home-page KPI cards: Active Requisitions, Candidates This Week, Interviews Today, and Offers Pending.

## Objectives

In this workshop, you will:

- Use Theme Roller to create and save application-specific theme styles.
- Allow ESS users to choose between light and dark theme styles.
- Convert an Interactive Grid to an Interactive Report and display semantic status badges.
- Build Metric Card regions from SQL queries.
- Create a Template Component with custom attributes, HTML, and CSS.
- Apply basic accessibility practices so that text, semantics, and ARIA labels communicate meaning without relying only on color.

## Prerequisites

- Complete the earlier modules that create the `TMS_` tables and the ESS and TAP applications.
- Sign in to the Oracle APEX workspace used for the Talent Management System.
- Use the application credentials supplied in your workshop environment when you run ESS or TAP.
- Ensure that the signed-in ESS account matches an email address in `TMS_EMPLOYEES`. If it does not, the user-specific KPI and progress queries correctly return no employee data.

## Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following applications:

- **<a href="files/tap-export9.sql" download="tap-export9.sql">Talent Acquisition Portal</a>**

- **<a href="files/ess-export8.sql" download="ess-export8.sql">Employee Self-Service Portal</a>**

Import them into your workspace. In **App Builder**, select **Import**, upload each file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Learn More - Useful Links

- [Oracle APEX Product Overview](https://www.oracle.com/apex/)
- [Oracle APEX 26.1 Documentation](https://docs.oracle.com/en/database/oracle/apex/26.1/)
- [Universal Theme](https://apex.oracle.com/ut)
- [Oracle APEX Tutorials](https://apex.oracle.com/en/learn/tutorials/)

## Acknowledgements

- **Author** - Shanmukh Kornana, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, October 2026
