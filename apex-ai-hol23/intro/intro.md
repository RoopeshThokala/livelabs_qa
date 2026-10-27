# Getting Started with APEXlang

## Introduction

In this module, you will export the Talent Acquisition Portal (TAP) application to APEXlang. You will review the exported project, add a static content region, validate the project, and verify the imported change in APEX.

In Module 4, you used an Application Blueprint to create a TAP comparison application. In this module, you will export the TAP application developed in the preceding modules and review how its pages, regions, items, processes, validations, and workflows are represented in APEXlang.

Estimated Workshop Time: 45 minutes

### Objectives

In this workshop, you will:

- Export TAP from SQL Developer for VS Code to an APEXlang project.
- Identify familiar APEX components in the exported specification.
- Add a static content region and validate the APEXlang project.
- Import the updated application and verify the change in Page Designer and at runtime.

### Prerequisites

This workshop assumes that you have completed the preceding APEX UI modules and have access to the TAP application and the lab database connection.

You need:

- Visual Studio Code.
- Oracle SQL Developer for VS Code.
- A database connection.
- A local folder where you can export the TAP project.

### Downloads

Stuck or missed out on completing the earlier labs? Don't worry! You can download the following files:

- **<a href="files/tap-export17.sql" download="tap-export17.sql">Talent Acquisition Portal</a>**
- **<a href="files/ess-export16.sql" download="ess-export16.sql">Employee Self-Service Portal</a>**

Import the application that you need. In **App Builder**, select **Import**, upload the export file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Vector Provider:** Before running the labs, configure the vector provider. See **Module 22, Lab 1: Search Configuration and Vector Providers**.
> - The hands-on steps in this module use TAP.

## Labs

| Lab | Focus | Estimated Time |
| --- | --- | --- |
| Lab 1 | Set up the environment | 15 minutes |
| Lab 2 | Set up the APEXlang skills repository | 5 minutes |
| Lab 3 | Export TAP and review the APEXlang project | 10 minutes |
| Lab 4 | Add a new component and validate the project | 10 minutes |
| Lab 5 | Import TAP and verify the change | 5 minutes |

## What Carries Forward

The exported TAP project contains the updated APEXlang source files. Module 24 uses APEXlang specifications to make further changes to the applications.

## Acknowledgements

- **Author** - Ankita Beri, Senior Product Manager
- **Last Updated By/Date** - Ankita Beri, September 2026
