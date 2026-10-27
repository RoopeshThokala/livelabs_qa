# APEX Components Overview

## Introduction

In this lab, you will tour the Oracle APEX development components, browse the Gallery, and install a sample application. The goal is to become familiar with the components you will use to build the TAP and ESS applications.

Estimated Lab Time: 20 minutes

### Objectives

In this lab, you will learn how to:

- Tour App Builder, SQL Workshop, and Team Development.
- Compare Gallery sample apps with starter apps.
- Install and run a Gallery sample application.
- Review its navigation, page layouts, forms, and report features.

### Prerequisites

- Complete Module 2, **Using SQL Workshop**.
- Access to an Oracle APEX workspace.

## Task 1: Tour the Oracle APEX Product Components

App Builder is the main development area for creating, running, and maintaining APEX applications.

1. On the APEX workspace home page, select **App Builder**.

    ![Select App Builder](images/111_click_App_Builder.png " ")

2. Review the **App Builder** home page:

    - **Create** starts the application creation process.
    - **Import** imports an existing application.
    - **Dashboard** displays workspace usage and activity.
    - **Workspace Utilities** provides workspace maintenance and monitoring tools.

    Existing applications appear below these options.

    ![Review the App Builder home page](images/112_show_Inside_App_builder.png " ")

3. Open an existing application.

    The screenshot shows **APEXToGo**. The applications in your workspace might differ.

    ![Open an existing application](images/113_Open_an_Application.png " ")

    > **Note:** If no applications are listed, continue with Step 6. You will install and explore **APEXToGo** in Task 3.

4. Review the application home page:

    - **Run Application** opens the runtime application.
    - **Supporting Objects** manages installation scripts and supporting database objects.
    - **Shared Components** contains reusable application-wide definitions.
    - **Utilities** provides diagnostic and maintenance tools.
    - **Export / Import** moves application definitions between environments.
    - The page grid lists the pages that make up the application, including home, report, form, and supporting pages.

    ![Review the application home page](images/114_show_inside_Application.png " ")

5. Select the **Oracle** logo in the upper-left corner to return to the workspace home page.

    ![Return to the APEX workspace home page](images/115_back_to_APEX_Home.png " ")

6. On the workspace home page, select **SQL Workshop**.

    SQL Workshop provides tools to inspect database objects, run SQL and PL/SQL, manage scripts, and use database utilities.

    ![Select SQL Workshop](images/121_Open_SLQ_Workshop.png " ")

7. Select **Object Browser**.

    ![Open Object Browser](images/122_click_object_browser.png " ")

8. Review **Object Browser**.

    Use it to inspect or create tables, views, packages, procedures, functions, sequences, triggers, and other schema objects.

    ![Review Object Browser](images/123_inside_object_browser.png " ")

9. Select the **back arrow** next to **Object Browser** to return to the SQL Workshop home page.

    ![Return to SQL Workshop](images/124_back_to_SQL_workshop.png " ")

10. Select **SQL Commands**.

    ![Open SQL Commands](images/125_open_SQL_commands.png " ")

11. Review **SQL Commands**.

    The command editor runs SQL or PL/SQL and displays the results below it.

    ![Review the SQL Commands editor and results](images/127_show_SQL_commands.png " ")

12. Select the **back arrow** next to **SQL Commands** to return to the SQL Workshop home page.

    ![Return to SQL Workshop](images/126_click_back_SQL_workshop.png " ")

13. Select **SQL Scripts**.

    ![Open SQL Scripts](images/128_open_SQL_scripts.png " ")

14. Review **SQL Scripts**.

    The script repository stores reusable scripts and shows their size, execution results, and run option.

    ![Review SQL Scripts](images/129_show_SQL_scripts.png " ")

15. Select the **back arrow** next to **SQL Scripts** to return to the SQL Workshop home page.

    ![Return from SQL Scripts](images/1210_back_to_SQL_workshop.png " ")

16. Select **Utilities**.

    ![Open SQL Workshop Utilities](images/1211_open_Utilities.png " ")

17. Review the available tools, including **Data Workshop**, **Data Generator**, **Quick SQL**, **Sample Datasets**, **Generate DDL**, and **Recycle Bin**.

18. Select the **back arrow** next to **Utilities** to return to the SQL Workshop home page.

    ![Review SQL Workshop Utilities](images/1212_back_SQL_workshop.png " ")

19. Select the **Oracle** logo to return to the workspace home page.

20. On the workspace home page, select **Team Development** in the right-side panel.

    Team Development provides issue tracking inside APEX.

    ![Select Team Development](images/131_click_team_development.png " ")

21. If the Team Development welcome page appears, keep the sample setup options selected.

22. Select **Complete Set Up**.

23. Review the **Issues** page and its summary counters.

    Teams can use this area to record issues, assign work, discuss progress, and capture feedback. The **Utilities** page provides tools for managing issues, templates, milestones, labels, uploaded files, and user notifications.

    ![Review Team Development](images/133_show_team_development.png " ")

24. Select the **Oracle** logo to return to the workspace home page.

    ![Return to the APEX home page](images/132_back_to_APEX_home.png " ")

## Task 2: Browse Gallery Applications

Gallery applications provide working examples and reusable starting points.

1. On the workspace home page, select **Gallery**.

    ![Open Gallery](images/211_open_gallery.png " ")

2. Review the **Sample Apps** tab.

    Sample apps are complete applications that demonstrate APEX features, page patterns, and user experiences.

    ![Browse Gallery sample apps](images/212_show_sample_apps.png " ")

3. Select **Starter Apps**.

    Starter apps provide a foundation that you can adapt for a business application. Gallery also includes **Utility Apps** and **Custom Apps** tabs.

    ![Browse Gallery starter apps](images/213_show_starter_apps.png " ")

## Task 3: Install and Explore a Gallery Sample Application

Install **APEXToGo** and explore its navigation, pages, and controls.

1. Select **Sample Apps**.

2. Locate the **APEXToGo** card and select **Install**.

    > **Note:** If APEXToGo is already installed, continue with Step 3.

    ![Install APEXToGo](images/311_click_install_APEGOTO_app.png " ")

3. When installation finishes, select the **Run** icon on the **APEXToGo** card.

    ![Run the installed APEXToGo application](images/312_click_run_APEGOTO_app.png " ")

4. On the first welcome page, review the message.

5. Select **Next**.

    ![Continue from the first welcome page](images/313_click_Next.png " ")

6. Review the message about mobile application patterns.

7. Select **Next**.

    ![Continue from the mobile-patterns page](images/314_click_Next.png " ")

8. Select **Go!**.

    ![Finish the APEXToGo introduction](images/315_click_Go.png " ")

9. If the sign-in page appears, enter your workspace username for **Username**.

10. Select **Sign In**.

    ![Sign in to APEXToGo](images/316_enter_username.png " ")

11. Review the application home page.

    Notice the primary navigation and the restaurant cards.

    ![Review the APEXToGo home page](images/317_show_app.png " ")

12. Select **Search** in the primary navigation.

    ![Open application search](images/321_click_search.png " ")

13. Enter **grill** in the search field.

    Matching restaurants appear as you type.

    ![Search for grill restaurants](images/323_search_grill.png " ")

14. In the search results, select **APEX Mex Grill**.

    ![Select APEX Mex Grill](images/323_search_select_grill.png " ")

15. Review the restaurant page.

    Notice the page header, restaurant summary, menu sections, item descriptions, prices, and action controls.

    ![Review the restaurant and menu page](images/324_show_mexican_grill.png " ")

16. Select **Orders**.

17. Review the **In Progress** and **Past Orders** tabs and the status information shown for each order.

    ![Review the Orders page](images/325_view_orders.png " ")

18. Select **Search**.

19. Enter **grill** in the search field.

20. In the search results, select **APEX Mex Grill**.

21. Select the **+** icon for a menu item to open the **Item Details** drawer.

22. Review the item image, quantity control, option, note field, and **Add to Cart** button.

    ![Review item details and cart controls](images/326_add_items.png " ")

23. Select the **X** icon in the upper-right corner of the **Item Details** drawer to close it.

24. Select **Account** in the primary navigation.

25. Review how related account actions are grouped in a single panel.

    ![Review account management](images/327_view_account_management.png " ")

## Summary

You toured App Builder, SQL Workshop, Team Development, and Gallery. You also installed and explored APEXToGo, including its search, restaurant, order, and account pages.

## Acknowledgements

- **Author** - Roopesh Thokala, Principal Product Manager; Shanmukh Kornana, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026