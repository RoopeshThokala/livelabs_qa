# Customize the Candidate Pipeline Report

## Introduction

The Candidate Pipeline page contains an Interactive Report that users can customize at run time. In this lab, you highlight important candidate stages, configure the report layout, and save an Active Candidates report.

Estimated Lab Time: 10 minutes

### Objectives

In this lab, you will learn how to:

- Highlight report values.
- Configure report columns, sorting, and control breaks.
- Create and save a named report.

## Task 1: Configure the Primary Report

1. Run the **Talent Acquisition Portal** application.

2. From the navigation menu, select **Candidate Pipeline**.

3. On the **Candidates** report, select **Actions**.

4. Select **Format** and then select **Highlight**.

    ![Open the Highlight dialog](images/open-highlight-dialog.png " ")

5. In the **Highlight** dialog, enter/select the following:

    - **Column:** **Stage**
    - **Operator:** **=**
    - **Expression:** **Rejected**
    - **Background Color:** **#FFD6D2**

6. Select **Apply**.

    ![Configure the Rejected highlight](images/rejected-row-highlight.png " ")

7. Repeat steps 3 through 6 to add a highlight for candidates in the **Hired** stage.

8. In the **Highlight** dialog, enter/select the following for the **Hired** stage:

    - **Column:** **Stage**
    - **Operator:** **=**
    - **Expression:** **Hired**
    - **Background Color:** **#D0F1CC**

9. Select **Apply**.

    ![Configure the Hired highlight](images/hired-row-highlight.png " ")

10. Select **Actions**.

11. Select **Columns**.

    ![Open the Columns dialog](images/hide-default-columns.png " ")

12. In the **Columns** dialog, move **Email** and the audit columns to **Do Not Display**.

13. Select **Apply**.

    ![Configure the displayed columns](images/hide-default-columns.png " ")

14. Select **Actions**.

15. Select **Data** and then select **Sort**.

    ![Open the Sort dialog](images/open-sort-dialog.png " ")

16. In the **Sort** dialog, enter/select the following:

    - **Column:** **Applied Date**
    - **Direction:** **Descending**

17. Select **Apply**.

    ![Configure the Applied Date sort](images/applied-date-descending-sort.png " ")

18. Select **Actions**.

19. Select **Format** and then select **Control Break**.

    ![Open the Control Break dialog](images/control-break.png " ")

20. In the **Control Break** dialog, enter/select the following:

    - **Column:** **Stage**
    - **Direction:** **Ascending**

21. Select **Apply**.

    ![Configure the Stage control break](images/control-break.png " ")

22. Select **Actions**.

23. Select **Report** and then select **Save Report**.

    ![Open the Save Report dialog](images/save-default-report-settings.png " ")

24. In the **Save Report** dialog, select **As Default Report Settings**.

25. Select **Apply**.

    ![Save the report as the default](images/save-default-report-settings.png " ")

26. In the confirmation dialog, select **Primary**.

27. Select **Apply**.

    ![Set the report as the primary default](images/select-primary-report.png " ")

## Task 2: Create the Active Candidates Report

1. On the **Candidates** report, select **Actions**.

2. Select select **Filter**.

    ![Open the Filter dialog](images/open-filter.png " ")

3. In the **Filter** dialog, enter/select the following:

    - **Column:** **Stage**
    - **Operator:** **Not in**
    - **Expression:** **Hired,Rejected**

4. Select **Apply**.

    ![Filter out Hired and Rejected candidates](images/filter-active-candidates.png " ")

5. Select **Actions**.

6. Select **Report** and then select **Save Report**.

    ![Open the Save Report dialog](images/name-active-candidates-report.png " ")

7. In the **Save Report** dialog, enter/select the following:

    - **Save:** **As Named Report**
    - **Name:** **Active Candidates**

8. Select **Apply**.

    ![Save the Active Candidates report](images/active-candidates-saved-report.png " ")

    ![Active Candidates named report](images/active-candidates-report.png " ")

## Summary

You customized the Candidate Pipeline Interactive Report, saved the layout as the primary default report, and created the **Active Candidates** named report.


### Acknowledgements

- **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
