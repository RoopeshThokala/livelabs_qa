# Enable and Install ESS as a Progressive Web App

## Introduction

In this lab, you will enable Progressive Web App support in the existing ESS application, configure its installation details and icon, and install it on a supported device.

Estimated Lab Time: 8 minutes

### Objectives

In this lab, you will:

- Verify the PWA prerequisites.
- Configure ESS to be installable with Standalone display mode.
- Configure the application icon.
- Install and launch ESS from the device application icon.

### Downloads

Stuck or missed out on completing the earlier labs? Don't worry! You can download the following file:

- **<a href="../0-introduction/files/ess-export17.sql" download="ess-export17.sql">Employee Self-Service Portal</a>**

Import it into your workspace. In **App Builder**, select **Import**, upload `ess-export17.sql`, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application export was created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.
> - **Vector Provider:** Before running this lab, configure the vector provider. See **Module 22, Lab 1: Search Configuration and Vector Providers**.

## Task 1: Verify PWA Prerequisites

1. In your workspace, open **Employee Self-Service Portal**.

    ![Open Employee Self-Service Portal](images/1_1_1_open_ESS.png " ")

2. On the Application home page, click **Edit Application Definition**.

    ![Open Edit Application Definition](images/1_1_2_edit_application_definition.png " ")

3. On the **Definition** tab, under **Properties**, verify that **Friendly URLs** is **On**.

    ![Verify that Friendly URLs is On](images/1_1_3_friendly_urls.png " ")

4. Click **Apply Changes**.

5. Return to the ESS Application home page.

    ![Return to the ESS Application home page](images/1_1_4_return_application_home.png " ")

## Task 2: Enable Progressive Web App Support

1. Click **Shared Components**.

    ![Lab 1, Task 2, Step 1: shared components](images/1_2_1_shared_components.png " ")

2. Under **User Interface**, click **Progressive Web App**.

    ![Lab 1, Task 2, Step 2: progressive web app](images/1_2_2_progressive_web_app.png " ")

3. Under **General**, configure:

    | Property | Value |
    | --- | --- |
    | Enable Progressive Web App | On |
    | Installable | On |

    ![Lab 1, Task 2, Step 3: enable PWA and installable](images/1_2_3_enable_pwa_installable.png " ")

4. Click **Installability**.

    ![Lab 1, Task 2, Step 4: click Installability](images/1_2_4_continue_installability.png " ")

## Task 3: Configure Installability and the Service Worker

1. Under **Installability**, enter/select the following:

    | Property | Value |
    | --- | --- |
    | Display | Standalone |
    | Short Name | `ESS Portal` |
    | App Description | `Acme Corp Employee Self-Service Portal` |

    ![Configure the installability values](images/1_3_1_installability_values.png " ")

2. For **Theme Color**, select **Custom**. In **Custom Theme Color**, enter `#10B981`.

    ![Configure the custom theme color](images/1_3_2_custom_theme_color.png " ")

3. For **Background Color**, select **Custom**. In **Custom Background Color**, enter `#0F6E56`.

    ![Configure the custom background color](images/1_3_2_custom_background_color.png " ")

4. Under **Service Worker Configuration**, verify that **Service Worker** is **Default**.

    ![Verify the default service worker](images/1_3_3_default_service_worker.png " ")

5. Click **Apply Changes**.

    ![Apply the Progressive Web App settings](images/1_3_4_apply_changes.png " ")

## Task 4: Configure the Application Icon

1. Click the **Shared Components** icon to return to **Shared Components**.

    ![Lab 1, Task 4, Step 1: return to shared components](images/1_4_1_return_shared_components.png " ")

2. Under **User Interface**, click **User Interface Attributes**.

    ![Lab 1, Task 4, Step 2: user interface attributes](images/1_4_2_user_interface_attributes.png " ")

3. Locate **Icon**, then click **Change Icon**.

    If you are replacing an uploaded icon, click **Edit** to open the **Edit Application Icon** dialog.

    ![Open the Edit Application Icon dialog](images/1_4_3_change_icon.png " ")

4. In the icon library, select the **People** icon. Select a green color.

    ![Select the People icon and a green color](images/1_4_4_library_icon_fallback.png " ")

5. Click **Save Icon**.

    ![Save the application icon](images/1_4_5_save_icon.png " ")

6. On the User Interface page, click **Apply Changes**.

    ![Apply the user interface changes](images/1_4_5_apply_changes.png " ")

7. Verify that the **Icon** region shows your selection. APEX generates the required sizes for the application icon, PWA icon, favicon, and supported device icons.

    ![Verify the generated application icons](images/1_4_6_verify_generated_icons.png " ")

## Task 5: Install and Launch ESS

1. Return to the ESS Application home page in **App Builder**. Click **Run Application**.

    ![Run ESS from App Builder](images/1_5_1_run_ESS_app.png " ")

2. In a supported browser, sign in as the employee user.

    ![Sign in as the employee user](images/1_5_1_employee_sign_in.png " ")

3. Verify that ESS opens to the employee Home page. Use Chrome for the device-emulation steps that follow.

    ![Verify the employee Home page](images/1_5_2_opened_application.png " ")

4. On the ESS page, right-click the **Your Onboarding Progress** heading. In the Chrome context menu, click **Inspect**.

    ![Open Inspect from the ESS page](images/1_5_3_right_click_application.png " ")

    ![Developer Tools panel](images/1_5_3_developer_tools.png " ")

5. In Developer Tools, click **Toggle device toolbar**.

    ![Toggle the device toolbar](images/1_5_4_toggle_device_toolbar.png " ")

6. In the device toolbar, select **Responsive**. Enter **390** for the width and **844** for the height. Press **Enter** after each value.

    ![Set the responsive dimensions](images/1_5_4_device_dimensions.png " ")

7. Click **Install App** in the navigation bar or menu. Follow the browser installation prompts.

    ![Install ESS](images/1_5_5_install_app.png " ")

8. Open ESS from the installed **Employee Self-Service Portal** application icon.

    ![Open the installed application](images/1_5_6_installed_icon.png " ")

9. Sign in again if prompted. Verify that ESS opens in its own application window without the normal browser address bar on a device that supports **Standalone** mode.

    ![Verify the standalone application window](images/1_5_7_standalone_window.png " ")

10. Verify navigation in the installed application:

    - Open the navigation menu, if it is collapsed.
    - Expand **My Work**.
    - Click **My Onboarding Tasks**.
    - Click **Home** to return to the employee Home page.

    ![Open My Work in the application navigation](images/1_5_8_installed_navigation.png " ")

    ![Navigate between My Onboarding Tasks and Home](images/1_5_8_installed_tasks.png " ")

## Summary

In this lab, you enabled Progressive Web App support, configured ESS to be installable with Standalone display mode, and selected an application icon. You used Chrome device emulation to review ESS at mobile width, then installed and launched the application and checked navigation between Home and My Onboarding Tasks.


## Learn More

- [Creating a Progressive Web App](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/creating-a-progressive-web-app.html)
- [Editing User Interface Attributes](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/editing-user-interface-attributes.html)

## Acknowledgements

- **Author** - Shanmukh Kornana
- **Last Updated By/Date** - Shanmukh Kornana, October 2026
