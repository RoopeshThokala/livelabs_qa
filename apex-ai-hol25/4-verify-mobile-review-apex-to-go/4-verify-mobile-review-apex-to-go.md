# Verify ESS on Mobile and Review APEX To Go

## Introduction

In this lab, you will inspect the existing ESS pages in mobile view and tour Oracle APEX To Go as an end user in mobile view.

Estimated Lab Time: 7 minutes

### Objectives

In this lab, you will:

- Inspect ESS using Chrome's device emulation.
- Check navigation, reports, forms, and the calendar in mobile view.
- Tour the Oracle APEX To Go welcome screens and application home page in mobile view.

### Prerequisites

- Complete Labs 1–3 and have an employee account for ESS.
- Use Chrome to inspect the existing Home, My Onboarding Tasks, Leave Request, and Leave Calendar pages.

## Task 1: Open ESS in Mobile View

1. In your workspace, open **Employee Self-Service Portal**.

2. Click **Run Application** to open ESS in Chrome.

    ![Run Application on the application home page](images/4_1_1_run_application.png " ")

3. Sign in as an employee user.

    ![ESS sign-in page](images/4_1_1_employee_sign_in.png " ")

4. On the ESS Home page, right-click the **Your Onboarding Progress** heading. Select **Inspect**.

    ![ESS Home with the heading to inspect](images/4_1_2_inspect_application.png " ")

    ![Developer Tools panel](images/4_1_2_developer_tools.png " ")

5. In Developer Tools, click **Toggle device toolbar**.

    ![Toggle device toolbar icon](images/4_1_3_toggle_device_toolbar.png " ")

6. On the device toolbar, select **Dimensions**, then select **Responsive**.

7. Enter **390** for the width and **844** for the height. Press **Enter** after each value. Keep these dimensions for the remaining page checks.

    ![Responsive device toolbar set to 390 by 844](images/4_1_4_device_dimensions.png " ")

## Task 2: Verify ESS Home

1. Click **Main Navigation**.

2. Click **Home**.

    ![Home in the navigation menu](images/4_2_1_home_navigation.png " ")

3. Verify the ESS Home layout:

    - The onboarding cards stack vertically.
    - The card text is readable.
    - Regions do not overlap.
    - The application title and welcome heading are not clipped.
    - The page does not require horizontal scrolling.

    ![ESS Home cards and headings in mobile view](images/4_2_2_responsive_home.png " ")

4. Click the **user account** icon in the application header. Then click **Settings**.

    ![Settings in the user account menu](images/4_2_3_account_menu.png " ")

5. Verify that the Settings dialog fits the mobile view and that its controls are accessible. Click **Close** to return to ESS Home.

    ![Settings dialog with the Close button](images/4_2_3_settings_dialog.png " ")

## Task 3: Verify My Onboarding Tasks

1. Click **Main Navigation**.

2. Click the arrow beside **My Work** to expand it.

3. Click **My Onboarding Tasks**.

    ![My Work expanded with My Onboarding Tasks](images/4_3_1_tasks_navigation.png " ")

4. Read the **Task Name** column.

    ![Initial task report with Task Name](images/4_3_2_task_names.png " ")

5. Swipe left inside the report, or move its horizontal scrollbar to the right, to reveal **Due Date** and **Status**.

6. Verify that the values are readable and that the application header remains visible while the report scrolls.

    ![Report scrolled to Due Date and Status](images/4_3_2_report_scrolling.png " ")

7. Click **Create** to open the **Onboarding Task** dialog.

    ![Create button on My Onboarding Tasks](images/4_3_3_create_task.png " ")

8. Verify that the dialog fields stack vertically and that its action buttons are accessible. Click **Cancel** to return to the report.

    ![Onboarding Task dialog with Cancel](images/4_3_3_task_dialog.png " ")

## Task 4: Verify Leave Request

1. Click **Main Navigation**.

2. Expand **Leave**.

3. Click **Leave Request**.

    ![Leave Request in the expanded Leave menu](images/4_4_1_leave_navigation.png " ")

> **Note:** If a load error appears, click **OK** and record it as **Needs Fix**. Continue with the layout checks if the form is accessible. Verify the complete form again after the error is resolved.

4. Click the calendar icon beside **Start Date**. Verify that the date picker fits the mobile view, then press **Escape** to close it.

    ![Start Date calendar icon and date picker](images/4_4_2_date_picker.png " ")

5. Scroll to reach the lower fields and buttons. Verify the following:

    | Field or control | What to check |
    | --- | --- |
    | Leave Type | The list opens and its options are readable. |
    | Start Date and End Date | The inputs and calendar icons are accessible. |
    | Reason | The text area fits the available space. |
    | Submit Leave | The button is visible when you scroll to the bottom of the form. |

    ![Stacked Leave Request fields](images/4_4_2_leave_form.png " ")

6. Enter **Mobile layout check** in **Reason**.

7. Verify that the text remains inside the field and that **Cancel** and **Submit Leave** are visible. Click **Cancel** to return to ESS Home.

    ![Reason field and Cancel on Leave Request](images/4_4_3_reason_cancel.png " ")

## Task 5: Verify Leave Calendar

1. Click **Main Navigation**.

2. Expand **Leave**.

3. Click **Leave Calendar**.

    ![Leave Calendar in the expanded Leave menu](images/4_5_1_calendar_navigation.png " ")

2. In **month** view, check that the month heading, weekday labels, date cells, and navigation buttons fit the mobile view.

    ![Leave Calendar in month view](images/4_5_2_calendar_month.png " ")

4. Click **Previous** to move to the previous month.

    ![Previous month on Leave Calendar](images/4_5_3_calendar_previous.png " ")

5. Click **Next** to move to the next month. Verify that the month heading changes.

    ![Next month and today button on Leave Calendar](images/4_5_3_calendar_next.png " ")

6. Click **today** to return to the current month.

7. Click **list**. Compare the list with **month** view.

8. If leave events are present, verify that their dates and labels are readable. If the calendar shows **No events to display**, record event visibility as **Not Tested**. Repeat this check later for a period containing an employee leave event.

9. Click **month** to return to the calendar grid.

    ![List view and available calendar view buttons](images/4_5_4_calendar_list.png " ")

## Task 6: Tour Oracle APEX To Go in Mobile View

1. Open [Oracle APEX To Go](https://apex.oracle.com/go/apextogo) in a new tab.

2. In the device toolbar, select **Responsive**. Set the width to **390** and the height to **844**.

3. On the **Welcome** screen, click **Next** to continue the tour.

    ![Oracle APEX To Go Welcome screen with Next](images/4_6_1_to_go_welcome.png " ")

2. On **Discover**, read the introduction to the mobile patterns available in the sample application. Click **Next** to continue.

    ![Oracle APEX To Go Discover screen with Next](images/4_6_2_to_go_discover.png " ")

3. On **Get Started**, click **Go!** to continue to the application. Sign in if prompted.

    ![Oracle APEX To Go Get Started screen](images/4_6_3_to_go_get_started.png " ")

4. Explore the **APEXToGo** home screen in mobile view.

    ![APEXToGo home screen in mobile view](images/4_6_4_to_go_home.png " ")

## Summary

You reviewed ESS navigation, cards, report scrolling, form controls, and calendar views in mobile view. You also toured the Oracle APEX To Go welcome screens and application home page in mobile view.

## Learn More

- [Creating Applications for Mobile Devices](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-applications-for-mobile-devices.html)
- [Oracle APEX To Go](https://apex.oracle.com/go/apextogo)
- [Simulate Mobile Devices with Device Mode](https://developer.chrome.com/docs/devtools/device-mode)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, October 2026
