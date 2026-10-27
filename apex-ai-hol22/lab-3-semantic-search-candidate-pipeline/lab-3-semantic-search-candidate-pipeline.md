# Implement Semantic Search on the Candidate Pipeline in TAP

## Introduction

This lab adds semantic search to the Candidate Pipeline in TAP. You will create a vector search configuration, add a search page item, and validate ranking against natural-language skills queries such as low-code Oracle application developer, cloud infrastructure engineer, and AI database developer.

Estimated Lab Time: 10 minutes

### Objectives

In this lab, you will:

- Create an Oracle AI Vector Search configuration for the candidate table.

- Add a semantic search input to the Candidate Pipeline page.

- Connect the search region to the vector source.

- Validate result ranking with natural-language searches.

### Prerequisites

- Complete Labs 1 and 2 to create the vector provider and generate candidate embeddings.
- Access to the **Talent Acquisition Portal** application.

### Downloads

Stuck or missed out on completing the earlier labs? Don't worry! You can download the following file:

- **<a href="../introduction/files/tap-export16.sql" download="tap-export16.sql">Talent Acquisition Portal</a>**

Import it into your workspace. In **App Builder**, select **Import**, upload `tap-export16.sql`, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application export was created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Vector Provider:** Before running this lab, configure the vector provider. See **Module 22, Lab 1: Search Configuration and Vector Providers**.

## Task 1: Create the Vector Search Configuration

1. In **App Builder**, open the **Talent Acquisition Portal (TAP)** application.

2. On the Application home page, click **Shared Components**.

    ![Open TAP Shared Components](images/open-tap-shared-components.png " ")

3. Under **Navigation and Search**, select **Search Configurations**.

    ![Opening Search Configurations in Shared Components](images/open-tap-search-configurations.png " ")

4. Click **Create**.

    ![Create a search configuration](images/tap-search-configurations-list.png " ")

5. On the **Create Search Configuration** page, enter/select the following:

    - **Name:** **Candidate Semantic Search**

    - **Search Type:** **Oracle AI Vector Search**

6. Click **Next**.

    ![Configuring Candidate Semantic Search vector search settings](images/create-candidate-search-configuration.png " ")

7. On the **Source** page, enter/select the following:

    - **Vector Provider:** **ONNX Model**, created in Lab 1 with Static ID `db-onnx-model`.
    - **Source Type:** **Table**
    - **Table / View Owner:** Select the schema that contains `TMS_CANDIDATES`.
    - **Table / View Name:** **TMS_CANDIDATES**

    > **Note:** The screenshots show this vector provider named **DB ONNX Model**. Select the provider created in Lab 1.

8. Click **Next**.

    ![Configuring Candidate Semantic Search vector search settings](images/select-candidate-search-source.png " ")

9. On the **Column Mapping** page, enter/select the following:

    - **Primary Key:** **CANDIDATE_ID (Number)**

    - **Vector Column:** **SKILLS_VECTOR (Vector)**

    - **Title Column:** **FIRST_NAME (Varchar2)**

    - **Description Column:** **SKILLS_TEXT (Varchar2)**

10. Click **Create Search Configuration**.

    ![Configuring Candidate Semantic Search vector search settings](images/map-candidate-search-columns.png " ")

## Task 2: Add the Search Item and Region to the Candidate Pipeline Page

1. In the breadcrumb, click the **Application ID** to return to the Application home page.

    ![Return to the Application home page](images/candidate-search-configuration-created.png " ")

2. Select the **4: Candidate Pipeline** page.

    > **Note:** Your page number might differ. Open the page named **Candidate Pipeline** and use its page number in place of `4` in page item names such as `P4_SEMANTIC_SEARCH` and `P4_REQ_ID`.

    ![Opening Page 4 Candidate Pipeline in Page Designer](images/open-candidate-pipeline-page.png " ")

3. In the **Rendering** tab, right-click **Body** and select **Create Page Item**.

4. Drag the new page item above **P4\_REQ\_ID**.

    In the **Property Editor**, enter/select the following:

    - Under **Identification**:

        - **Name:** **P4\_SEMANTIC\_SEARCH**

        - **Type:** **Text Field**

    - **Label > Label:** **Search Candidates**

    - **Appearance > Value Placeholder:** **Search candidates by skills or experience...**

    ![Creating P4_SEMANTIC_SEARCH text field item](images/create-semantic-search-page-item.png " ")

5. In the **Rendering** tab, right-click **Body** and select **Create Region**.

6. Drag the new region below **P4\_SEMANTIC\_SEARCH**.

    In the **Property Editor**, enter/select the following:

    - Under **Identification**:

        - **Name:** **Semantic Candidate Search**

        - **Type:** **Search**

    ![Adding Search region to Candidate Pipeline page](images/create-semantic-candidate-search-region.png " ")

7. With **Semantic Candidate Search** selected, click the **Attributes** tab in the **Property Editor** and enter/select the following:

    - Under **Settings**:

        - **Search Page Item:** **P4_SEMANTIC_SEARCH**

        - **Search as You Type:** **Toggle ON**

        - **Minimum Characters:** **3**

    ![Configuring search region attributes and search as you type](images/configure-semantic-search-region.png " ")

8. In the **Rendering** tab, expand **Semantic Candidate Search > Search Sources** and select **New**.

    In the **Property Editor**, enter/select the following:

    - Under **Identification**:

        - **Name:** **Candidate Semantic Search**

        - **Search Configuration:** **Candidate Semantic Search**

    ![Configure the Candidate Semantic Search source](images/add-candidate-search-source.png " ")

9. Click **Save and Run**.

    ![Saving the Page Designer changes to Candidate Pipeline page](images/save-and-run-candidate-search-page.png " ")

## Task 3: Test Semantic Candidate Ranking

1. On the **Candidate Pipeline** page, enter **low code Oracle application developer** in **Search Candidates**.

    Candidates with skills such as Oracle APEX, PL/SQL, ORDS, REST APIs, and Oracle Database should rank higher in the results.

    ![Candidate Pipeline showing search results for low-code Oracle developer role](images/candidate-pipeline-low-code-results.png " ")

2. Replace the search text with **cloud infrastructure engineer**.

    Candidates with OCI Compute, OCI Networking, IAM, Object Storage, and cloud architecture experience should rank higher.

    ![Candidate Pipeline showing search results for cloud infrastructure engineer role](images/candidate-pipeline-cloud-results.png " ")

3. Replace the search text with **AI semantic search database developer**.

    Candidates with Oracle AI Database, AI Vector Search, VECTOR, ONNX embedding models, SQL, and PL/SQL should rank higher.

    ![Candidate Pipeline showing search results for AI and vector-focused database developer role](images/candidate-pipeline-ai-results.png " ")

## Summary

The Candidate Pipeline now supports semantic search using the vector embeddings generated from candidate skill descriptions. The ranking aligns with the meaning of the prompt rather than exact word matching alone.

## Acknowledgements

- **Author** - Ankita Beri, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
