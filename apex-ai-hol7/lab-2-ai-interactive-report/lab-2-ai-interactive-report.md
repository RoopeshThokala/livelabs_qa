# Enable Natural Language Support for Job Requisitions

## Introduction

Recruiters often start with a question, not a set of filters. In this lab, you will make the Job Requisitions report understand the language of the hiring team, so a plain-English request can become a useful report filter.

Estimated Lab Time: 5 minutes

### Objectives

In this lab, you will:

- Enable Natural Language Support on Job Requisitions.
- Give the department and status columns clear business context.
- Test a recruiter-style natural-language request.

## Task 1: Enable Natural Language Support

1. From the **Candidate Pipeline** page, open **Page Finder**.

2. Select the **Job Requisitions** page.

    > **Note:** The page number might differ. Open the page named **Job Requisitions**.

    ![Select the Job Requisitions page](images/select-job-requistions-page.png " ")

3. In the Rendering tab, select the **Job Requisitions** region.

    ![Select the Job Requisitions region](images/click-job-requisitions.png " ")

4. In the Property Editor, select **Attributes**.

5. Under **Generative AI**, turn on **Natural Language Support**.

    ![Enable Natural Language Support](images/enable-ai-interactive-report.png " ")

## Task 2: Add Column Context

Column context helps the AI interpret business terms in a prompt.

1. In the Rendering tab, expand **Job Requisitions**, then expand **Columns**.

    ![Expand the Job Requisitions report columns](images/expand-report-columns.png " ")

2. Select **DEPT\_ID**.

    ![Select the DEPT_ID column](images/select-dept-id-column.png " ")

3. In the Property Editor, expand **Generative AI** if necessary.

    ![Open the Generative AI section](images/open-generative-ai-section-for-qty-to-target.png " ")

4. For **Column Context**, enter `Organizational department name (e.g., Sales, Engineering, HR)`.

    ![Enter the DEPT_ID column context](images/enter-dept-id-column-context.png " ")

5. In the Rendering tab, select **STATUS**.

    ![Select the STATUS column](images/select-status-column.png " ")

6. In the Property Editor, under **Generative AI**, enter `Requisition status; values include Open, Filled, Pending Approval, Draft` for **Column Context**.

    ![Enter the STATUS column context](images/enter-status-column-context.png " ")

## Task 3: Test a Natural-Language Filter

1. Click **Save and Run**.

    ![Save and run the Job Requisitions page](images/save-and-run-page.png " ")

2. In the **Search or ask a question** field, enter **Show me Engineering requisitions open for more than 30 days**.

    ![Enter a natural-language request](images/job-requisitions-natural-language-filter.png " ")

3. Press **Enter**. The Assistant opens and processes the request.

    ![Assistant processing the natural-language request](images/job-requisitions-natural-language-filter-1.png " ")

4. Verify that APEX applies filters for department, status, and open date, and shows the matching requisition.

    ![Applied filters for the natural-language request](images/job-requisitions-filter-result.png " ")

    ![Assistant response for the natural-language request](images/job-requisitions-filter-result-1.png " ")

## Summary

You enabled Natural Language Support and explained the meaning of the department and status fields. Recruiters can now start with a natural-language question and quickly focus the Job Requisitions report.

## Acknowledgements

- **Author** - Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, July 29, 2026
