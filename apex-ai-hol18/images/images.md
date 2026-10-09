# Lab Image Assets

This folder contains the screenshots referenced by the workshop labs. The files use descriptive, URL-safe names that correspond to the TAP and ESS security steps.

## Lab 1

The `lab1-*` files support the SQL Scripts navigation and upload flow, authentication, current-scheme selection, application items, and application computations in `1-authenticate-tap-and-ess.md`. The SQL setup file is included in the workshop as `role-based-access-setup.sql`.

## Lab 2

The `lab2-*` files support the TAP and ESS authorization-scheme creation flows in `2-create-authorization-schemes.md`:

- TAP: open the application, Shared Components, Authorization Schemes, Create, From Scratch, and `IS_RECRUITER` details.
- ESS: open the application, Shared Components, Authorization Schemes, From Scratch, and `IS_HR_ADMIN` details.

## Lab 3

The `lab3-*` files support the page-authorization and navigation-menu flows in `3-protect-pages-navigation-and-session-state.md`:

- TAP: open Job Requisitions, set page authorization, open Shared Components and the Navigation Menu list, edit the Job Requisitions entry, and review the remaining entries.
- ESS: open System Logs, set page authorization, open Shared Components and the Navigation Menu list, edit the Admin and System Logs entries, and review the final entries.

## Lab 4

The `lab4-*` files support the row-level security SQL and persona verification in `4-enforce-row-level-security.md`:

- TAP: open Candidate Pipeline, configure the Candidates query, and compare hiring-manager and TA-administrator results.
- ESS: open Leave Request and Leave Calendar, configure both region queries, and compare recruiter and HR-administrator calendar results.

## Lab 5

The `lab5-*` files support creation and protection of the ESS **Audit Log** page in `5-create-admin-audit-log.md`, including the Page 20 definition, page authorization, navigation authorization, and HR/non-HR verification.

## Acknowledgements

- **Author** - Ashwin Rao, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Ashwin Rao, August 2026
