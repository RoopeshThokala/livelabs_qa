# Implementing Semantic Search in APEX Apps

## Introduction

In many real-world applications, users do not search using exact keywords. They describe intent, ask a question in natural language, or search using a concept instead of a phrase that matches one field exactly. This workshop shows how to implement semantic search in Oracle APEX so your application understands meaning, not just text.

You will configure the database embedding model, prepare candidate and HR policy data for vector search, and then add semantic search to the TAP and ESS applications. By the end of the workshop, you will have a working example that ranks results based on similarity to the user's intent instead of a direct keyword match.

Estimated Workshop Time: 45 minutes

### Objectives

In this workshop, you will:

- Configure the ONNX embedding model and APEX vector provider.
- Prepare data for semantic search in the candidate and HR policy tables.
- Create an Oracle AI Vector Search configuration in TAP.
- Build an HR Policy Search page in ESS.
- Validate natural-language queries against semantic ranking.

### Prerequisites

To build semantic search in your APEX applications, you need:

- An Oracle Cloud Infrastructure (OCI) account. See [Oracle Cloud Free Tier](https://www.oracle.com/cloud/free/).

- The privileges required to create and manage an Autonomous Database instance in your compartment.

- Oracle AI Database 26ai or later, as required for an Oracle Vector Search configuration in [Oracle APEX 26.1](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-an-oracle-vector-search.html).
> **Note:** This workshop assumes you are using Oracle APEX 26.1. The instructions and screenshots might differ in other releases.

### Downloads

Stuck or missed out on completing the earlier labs? Don't worry! You can download the following files:

- **<a href="files/tap-export16.sql" download="tap-export16.sql">Talent Acquisition Portal</a>**
- **<a href="files/ess-export15.sql" download="ess-export15.sql">Employee Self-Service Portal</a>**

Import the application for the lab that you are completing. In **App Builder**, select **Import**, upload the export file, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application exports were created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.

## Learn More

- [Creating an Oracle Vector Search](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-an-oracle-vector-search.html)

- [Oracle Database Vector Search](https://docs.oracle.com/en/database/oracle/oracle-database/23ai/)

- [Creating a Search Page Manually](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-a-search-page-manually.html)

## Acknowledgements

- **Author** - Ankita Beri, Senior Product Manager; Roopesh Thokala, Principal Product Manager

- **Last Updated By/Date** - Ankita Beri, August 2026
