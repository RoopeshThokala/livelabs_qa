# Introduction

## About this Workshop

This workshop guides you through building and configuring pages and regions in the Talent Acquisition Portal (TAP) and Employee Self-Service (ESS) applications. You create a Candidate Profile page, add Open Requisitions and candidate Cards regions to the Candidate Pipeline page, and add a hiring banner to the Global Page so it appears across TAP pages.

You also create a Dynamic Content region that displays the active candidate count, inspect page rendering with APEX Debug, and personalize the ESS Home page with the current user and onboarding progress content. By the end, you will have configured pages and regions for candidate management and employee self-service.

Estimated Workshop Time: 35 minutes

## Objectives

In this workshop, you will learn how to:

- Create a blank page and review the Page Designer panes.
- Add and configure Static Content, Dynamic Content, and Cards regions.
- Use SQL and PL/SQL to provide content for regions.
- Add a banner to the Global Page so it appears across TAP pages.
- Personalize ESS content with the `&APP_USER.` substitution string.
- Enable APEX Debug and review page-rendering details.

## Prerequisites

- An Oracle APEX 26.1 workspace running on an Oracle Database 19c or later. This workshop requires APEX 26.1. Some features, instructions, and screenshots may differ or not be available in prior releases.

> **Note:** The application ID in the screenshots may vary. Please ignore the application ID.

## Downloads

If you are stuck or the applications are not working as expected, you can download and install the completed applications as follows:

1. Download the [Talent Acquisition Portal export](files/talent-acquisition-portal-app.sql).

2. Import the **Talent Acquisition Portal** export into your APEX workspace. Follow the steps in the **Import Application** wizard.

3. Download the [Employee Self Service Portal export](files/employee-self-service-portal-app.sql).

4. Import the **Employee Self Service Portal** export into your APEX workspace. Follow the steps in the **Import Application** wizard.

## Learn More - Useful Links

- [Oracle APEX 26.1 Documentation](https://docs.oracle.com/en/database/oracle/apex/26.1/)
- [Managing Pages in an Application](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/managing-pages-in-an-application.html)
- [About Page Designer](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/about-page-designer.html)
- [About Regions](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/about-regions.html)
- [Oracle APEX Tutorials](https://apex.oracle.com/en/learn/tutorials/)
- [Oracle APEX Community](https://apex.oracle.com/community/)
- [Oracle APEX Discussion Forum](https://forums.oracle.com/ords/apexds/domain/dev-community/category/application_express)

You may now **proceed to the next lab**.

## Acknowledgements

- **Author** - Sahaana Manavalan, Senior Product Manager
- **Last Updated By/Date** - Sahaana Manavalan, Senior Product Manager, July 2026
