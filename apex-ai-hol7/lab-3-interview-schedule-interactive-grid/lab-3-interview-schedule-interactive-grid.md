# Build the Interview Schedule as an Interactive Grid

## Introduction

An interview schedule changes quickly, and recruiters should not have to leave the page to keep it accurate. In this lab, you will build an editable grid that puts each interview stage and its working details in one place.

Estimated Lab Time: 10 minutes

### Objectives

In this lab, you will:

- Create an Interactive Grid from the `TMS_INTERVIEW_STAGES` table.
- Keep candidate and requisition identifiers visible but protected from edits.
- Hide audit fields and save a change from the grid.

## Task 1: Add the Interactive Grid

1. In the **Talent Acquisition Portal** application, open the **Interview Schedule** page in Page Designer.

    > **Note:** The page number might differ. Open the page named **Interview Schedule**.

    ![Open the Interview Schedule page](images/interview-schedule-grid-source.png " ")

2. In the Rendering tab, right-click **Body** and select **Create Region**.

    ![Create a region under Body](images/click-create-region.png " ")

3. With the new region selected, enter or select the following in the Property Editor:

    - Under **Identification**:
        - **Name:** **Interview Stages**
        - **Type:** **Interactive Grid**
    - Under **Source**:
        - **Type:** **Table / View**
        - **Table Owner:** **Parsing Schema**
        - **Table Name:** **TMS\_INTERVIEW\_STAGES**

    ![Configure the Interview Stages Interactive Grid](images/set-interactive-grid-properties.png " ")

4. In the Property Editor, select **Attributes**.

5. Under **Edit**, turn on **Enabled**.

    ![Enable Interactive Grid editing](images/enable-edit.png " ")

## Task 2: Configure Editable Columns

1. In the Rendering tab, expand **Interview Stages**, then expand **Columns**.

    ![Expand the Interview Stages columns](images/expand-report-columns.png " ")

2. Select **CANDIDATE\_ID**.

    ![Select the CANDIDATE_ID column](images/select-candidate-id-column.png " ")

3. In the Property Editor, under **Identification**, set **Type** to **Display Only**.

    ![Set CANDIDATE_ID to Display Only](images/update-candidate-id-type.png " ")

4. Set **Identification > Type** to **Display Only** for the following columns:

    | Column | Identification > Type |
    | --- | --- |
    | **REQ\_ID** | **Display Only** |
    | **STAGE\_NAME** | **Display Only** |

    ![Set REQ_ID to Display Only](images/update-req-id-type.png " ")

    ![Set STAGE_NAME to Display Only](images/update-stage-name-type.png " ")

5. In the Rendering tab, select **CREATED\_BY**. Hold **Shift** and select **UPDATED** to select all four audit columns.

6. In the Property Editor, under **Identification**, set **Type** to **Hidden**.

    ![Hide the audit columns](images/update-audit-columns-type.png " ")

7. Click **Save and Run**.

    ![Save and run the Interview Schedule page](images/save-and-run-page.png " ")

8. Verify that the Interview Schedule Interactive Grid appears.

    ![Interview Schedule Interactive Grid at runtime](images/check-interview-schedule-page.png " ")

9. Select a row.

10. Click **Edit**.

11. In the **Interviewer Id** column, enter `4` for the selected row.

    ![Edit an Interviewer Id value](images/interview-schedule-inline-edit.png " ")

12. Click **Save**.

13. Confirm that the change is committed.

    ![Save the edited row](images/interview-schedule-save-edit.png " ")

## Summary

You created an editable Interview Schedule grid with the right balance of visibility and control. Recruiters can see the interview context, keep audit data out of the way, and save schedule changes directly in the grid.

## Acknowledgements

- **Author** - Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, July 2026
