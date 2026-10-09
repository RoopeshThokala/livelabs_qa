# Introduction

## Introduction

**About this Workshop**

In this workshop, you secure the Talent Acquisition Portal (TAP) and Employee Self-Service Portal (ESS). You replace the open development experience with authenticated access, role-based authorization, data filtering, session protection, and an administrator audit trail.

> **Security note:** This is a controlled lab. Its local username/password implementation is deliberately simple so you can see each APEX building block. For a production application, use an enterprise identity provider or a centrally managed APEX authentication mechanism, a modern adaptive password hash, TLS, MFA, and an approved audit-retention policy.

Estimated Workshop Time: 20 minutes

## Objectives

In this workshop, you will:

- Configure custom authentication for TAP and ESS.
- Compute the Employee ID based on logged-in user.
- Create TAP and ESS role-based authorization schemes.
- Restrict pages and navigation entries by persona.
- Filter candidate data for hiring managers and protect sensitive page state.
- Create an ESS administrator audit-log report.

## Applications

**Talent Acquisition Portal (TAP)**: secured for recruiters, hiring managers, and TA administrators.

**Employee Self-Service Portal (ESS)**: secured for employees and HR administrators.

## Prerequisites

- Access to an Oracle APEX workspace with Builder and SQL Workshop privileges.
- TAP and ESS applications from the preceding modules.
- The base TMS schema, including `TMS_EMPLOYEES`, `TMS_JOB_REQUISITIONS`, and the sample job and department rows referenced by the setup script, is available.
- Lab 1 creates `TMS_ROLES` and `TMS_EMPLOYEE_ROLES` and provisions the four active demo accounts used to test each role.
- TAP page numbers match the pages identified in this lab. If your application differs, apply the same setting to the equivalent page.
- The lab password assigned to every active employee is `apex`.

## Start the Workshop

Click **Lab 1: Authenticate TAP and ESS** to begin.

## Acknowledgements

- **Author** - Ashwin Rao, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Ashwin Rao, August 2026
