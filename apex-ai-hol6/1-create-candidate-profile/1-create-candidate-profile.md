# Create a Candidate Profile Page Manually

## Introduction

In this lab, you use the Create Page Wizard to create a blank **Candidate Profile** page in the Talent Acquisition Portal (TAP). You then review the Page Designer panes, display help for an attribute, and add two Static Content regions to **Body**.

Estimated Lab Time: 5 minutes

### Objectives

In this lab, you will learn how to:

- Create a blank page manually in TAP.
- Review the main Page Designer panes.
- Display help for a Page Designer attribute.
- Add Candidate Details and Application History regions.
- Save and run the Candidate Profile page.

### Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following application:

- **<a href="../introduction/files/tap-export1.sql" download="tap-export1.sql">Talent Acquisition Portal</a>**

Import it into your workspace. In **App Builder**, select **Import**, upload `tap-export1.sql`, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application export was created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Supporting Objects:** Supporting objects are already loaded in the workspace.
> - **AI Configuration:** Configure a Generative AI Service from **App Builder > Workspace Utilities > Generative AI**. See **Module 1, Lab 2: Configure Generative AI Service**.

## Task 1: Create and Inspect the Page

In this task, you will create a blank **Candidate Profile** page. You will then review the three main Page Designer panes and display help for the Breadcrumb **Type** attribute.

1. In APEX App Builder, open the **Talent Acquisition Portal** application.

    ![Talent Acquisition Portal in App Builder](images/01-open-tap-application.png " ")

2. On the application home page, select **Create Page**.

    ![Create Page button](images/02-create-page.png " ")

3. Select the **Component** tab, select **Blank Page**, then select **Next**.

    ![Blank Page option](images/03-select-blank-page.png " ")

4. For **Name**, enter **Candidate Profile**, then select **Create Page**.

    ![Candidate Profile page definition](images/04-name-candidate-profile.png " ")

5. After the page is created, Page Designer opens automatically.

    The Page Designer window is divided into three main panes:

    - **Left Pane** - Includes four tabs that display as a tree: **Rendering**, **Dynamic Actions**, **Processing**, and **Shared Components**.
    - **Central Pane** - Includes the following tabs: **Layout**, **Page Search**, and **Help**.
    - **Right Pane** - Displays the **Property Editor**. Use the Property Editor to update attributes for the selected component. When you select multiple components, the Property Editor only displays common attributes. Updating a common attribute updates that attribute for all selected components.

    ![Candidate Profile page in Page Designer](images/05-page-designer-opened.png " ")

6. In Page Designer, select **Breadcrumb** in the **Rendering tab** (Left Pane), select **Identification > Type** in the **Property Editor** (Right Pane), then select **Help** on the toolbar.

    The help text for **Type** is displayed.

    ![Page Designer help for Breadcrumb Type attribute](images/06-page-designer-help.png " ")

## Task 2: Add Candidate Profile Regions

In this task, you will create the **Candidate Details** and **Application History** Static Content regions in **Body**. This task demonstrates two methods for creating a region manually in Page Designer.

1. In the newly created page, navigate to the **Gallery Menu** at the bottom and confirm that the **Regions** tab is selected.

    ![Gallery Menu with Regions selected](images/07-gallery-regions-tab.png " ")

2. Drag a **Static Content** region and drop it in the **Body** section.

    ![Static Content region dragged into the Body section](images/08-drag-static-content-region.png " ")

3. In the **Property Editor**, enter or select the following:

    - Under Identification:

        - Name: **Candidate Details**

    ![Candidate Details region properties](images/09-configure-candidate-details-region.png " ")

4. In the **Rendering** tab, right-click **Body**, then select **Create Region**.

    ![Create Region selected from the Body context menu](images/10-create-second-region.png " ")

5. In the **Property Editor**, enter or select the following:

    - Under Identification:

        - Name: **Application History**

    ![Application History region properties](images/11-application-history-configured.png " ")

6. Select **Save and Run**.

    ![Save and Run selected in Page Designer](images/12-save-and-run-page.png " ")

7. Enter your username and password, then select **Sign In**.

    ![Talent Acquisition Portal application sign-in page](images/13-application-sign-in.png " ")

8. Confirm that the page displays **Candidate Details** followed by **Application History**.

    ![Candidate Profile page with Candidate Details and Application History regions](images/14-candidate-profile-page-run.png " ")

## Summary

You learned how to add a page with the Create Page Wizard and maintain it in Page Designer.

You also learned how Page Designer represents page components in the **Rendering tab** and displays their settings in the **Property Editor**. Attribute help explains individual settings while you work.

You learned how to create regions from the **Gallery Menu** and the **Rendering tab** context menu. You used both methods to add Static Content regions to **Body**.

At the end of this lab, you are on the running **Candidate Profile** page. In the next lab, you will return to the TAP application home page and open the **Candidate Pipeline** page in Page Designer.

You may now proceed to the next lab.

## Learn More

- [About Page Designer](https://docs.oracle.com/en/database/oracle/apex/26.2/htmdb/about-page-designer.html)
- [Managing Pages in an Application](https://docs.oracle.com/en/database/oracle/apex/26.2/htmdb/managing-pages-in-an-application.html)
- [About Regions](https://docs.oracle.com/en/database/oracle/apex/26.2/htmdb/about-regions.html)

## Acknowledgements

- **Author** - Sahaana Manavalan, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
