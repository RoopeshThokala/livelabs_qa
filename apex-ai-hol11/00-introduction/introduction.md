# Introduction

## About this Workshop

In this workshop, you will add server-side logic to Oracle APEX pages in the Talent Acquisition Portal and Employee Self-Service Portal applications.

The previous module configured the form page items. In this module, you will add computations, validations, and processes so APEX can calculate, check, and save values correctly.

Estimated Workshop Time: 15 minutes

## Objectives

In this workshop, you will:

- Review the Oracle APEX page processing order.
- Create the `TAP_UTIL` PL/SQL package for offer salary validation and pipeline helper logic.
- Add validation logic to the Offer Form.
- Add an AJAX Callback process for pipeline statistics on the TAP Home page.
- Create the `ESS_UTIL` PL/SQL package for leave balance logic.
- Add computations, validations, and DML processing to the Leave Request form.

## Applications

- **Talent Acquisition Portal (TAP)**: The primary application for offer validation, pipeline statistics, and candidate stage logic.
- **Employee Self-Service Portal (ESS)**: The secondary application for leave balance checks and leave request processing.

## Prerequisites

- Access to an Oracle APEX workspace.
- The TAP and ESS applications exist from earlier modules.
- The forms from Module 10 have their page items configured.
- Access to SQL Workshop and Page Designer.

## Downloads

Stuck or Missed out on completing the previous labs? Don't worry! You can download the following applications:

- **<a href="files/tap-export5.sql" download="tap-export5.sql">Talent Acquisition Portal</a>**

- **<a href="files/ess-export4.sql" download="ess-export4.sql">Employee Self-Service Portal</a>**

Import them into your workspace. In **App Builder**, select **Import**, upload each file, and follow the steps in the **Import Application** wizard.

> **Note:** Supporting objects are already loaded in the workspace.
>
> **AI Configuration:** Configure a Generative AI Service in the workspace and select it under **Shared Components > AI Attributes** for each application. See **Module 1, Lab 2: Configure Generative AI Service**.

## Start the Workshop

Click **Getting Started** if you need to create an APEX workspace. Otherwise, click **Lab 1: Understanding Oracle APEX Page Processing** to begin.

## Acknowledgements

**Author** - Ankita Beri, Senior Product Manager; Roopesh Thokala, Principal Product Manager

**Last Updated By/Date** - Ankita Beri, July 28, 2026
