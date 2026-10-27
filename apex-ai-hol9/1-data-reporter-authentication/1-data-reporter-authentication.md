# What Is Data Reporter and Who Is It For? Set Up the Authentication Scheme

## Introduction

Oracle APEX Data Reporter separates governed data preparation from business-user reporting. A Data Reporter administrator exposes approved tables or views through datasets, editors build and publish reports, and viewers consume those reports in a focused reporting application.

In this lab, you review the role of Data Reporter and configure its authentication scheme.

Estimated Lab Time: 10 minutes

### Where We Are

The Talent Management System schema and operational applications already exist. HAA is still a temporary application. Before rebuilding it, Data Reporter must use an authentication scheme that supports the workshop's role-based users.

### Objectives

In this lab, you will:

- Identify the responsibilities of Data Reporter administrators, editors, and viewers.
- Configure **Oracle APEX Accounts** as the current Data Reporter authentication scheme.
- Open Data Reporter from the APEX workspace and verify the setting.

## Task 1: Understand the Data Reporter Roles

The three Data Reporter roles used in this module are:

| Role | Module User | Responsibility |
| --- | --- | --- |
| Administrator | `DR_ADMIN` | Manages datasets, reporting applications, users, and role assignments. |
| Editor | `DR_EDITOR` | Creates, configures, and publishes reports in an assigned reporting application. |
| Viewer | `DR_USER` | Opens published reports and uses their search, filter, chart, and group-by features. |

The dataset is the governance boundary. It exposes only the database objects required for reporting. In this module, the dataset contains three views rather than the underlying operational tables.

## Task 2: Configure the Data Reporter Authentication Scheme

> **Note:** This is a one-time instance-level task. If you cannot open APEX Administration Services, ask your instance administrator or workshop instructor to complete these steps.

1. Sign in to **APEX Administration Services** as an Instance Administrator.

    ![Sign-in to Oracle APEX Admin](images/sign-in-admin.png " ")

2. Select **Manage Instance**.

  ![Sign-in to Oracle APEX Admin](images/navigate-to-manage-instance.png " ")

3. Select **Security**.

  ![Sign-in to Oracle APEX Admin](images/select-security.png " ")

4. Locate **Authentication Control**.

5. Review **Development Environment Authentication Schemes** with your instance administrator. This workshop requires a Data Reporter environment that supports **Oracle APEX Accounts** so that the named workshop accounts can authenticate.

6. Under **Development Environment Settings**, locate **Data Reporter Authentication Scheme**.

  ![Sign-in to Oracle APEX Admin](images/set-dr-auth-scheme.png " ")

7. If **Oracle APEX Accounts** is available, select it. If it is already selected, leave it unchanged.

    If **Oracle APEX Accounts** is unavailable, stop and ask your instructor for a compatible workshop environment. Do not substitute another identity provider while retaining the account-creation steps in Lab 3. The available schemes depend on the supplied environment. The [Oracle APEX authentication guide](https://docs.oracle.com/en/database/oracle/apex/26.2/aeadm/configuring-authentication-scheme-for-data-reporter.html) documents the standard configuration options.

8. Select **Apply Changes** if you changed the setting.

9. Sign out of APEX Administration Services.

10. Sign in to the workshop workspace.

11. On the APEX workspace home page, select **Data Reporter**.

    If the welcome page asks an instance administrator to configure authentication, have the administrator complete the setup before proceeding to Lab 2.

    ![Open Data Reporter](images/01-open-data-reporter.png " ")

12. Review the Data Reporter home page.

    If a reporting application is already present, its **Authentication Scheme** column must display **Oracle APEX Accounts**. Your page may initially contain no reporting applications; you create HAA in Lab 2.

    ![Verify the Data Reporter authentication scheme](images/02-data-reporter-home.png " ")

> **Note:** If Data Reporter redirects to an unexpected identity provider or the workshop accounts cannot sign in, ask the instance administrator to verify the selected Data Reporter authentication scheme and its compatibility with the workshop accounts.

## Summary

You reviewed the Data Reporter personas and configured **Oracle APEX Accounts** as the current authentication scheme.

## Acknowledgements

- **Author** - Shanmukh Kornana, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
