# Lab 1: Authenticate TAP and ESS

## Introduction

In this lab, you prepare role-based demo accounts and a local lab credential, then configure custom authentication and an employee session context for the Talent Acquisition Portal (TAP) and Employee Self-Service Portal (ESS).

Estimated Time: 6 minutes

### Objectives

- Create role-based demo accounts and prepare lab credentials for active employees.
- Create and activate custom authentication schemes in TAP and ESS.
- Set `APP_EMPLOYEE_ID` after authentication.

## Task 1: Upload and run the demo-account setup script

1. From the workspace home page, open **SQL Workshop** and select **SQL Scripts**.

    ![Open SQL Scripts from the workspace dashboard](images/lab1-open-sql-scripts-dashboard.png " ")

2. Download the [TAP and ESS role and credential setup script](files/role-based-access-setup.sql) to your computer. It creates the role tables, adds one active demo employee for each role, and prepares the lab password for active employees.

3. On the **SQL Scripts** page, click **Upload**. Choose the downloaded `role-based-access-setup.sql` file and submit the upload.

    ![Select Upload on the SQL Scripts page](images/lab1-select-upload-on-sql-scripts-page.png " ")

    ![Choose the role-based access setup script to upload](images/lab1-upload-role-based-access-setup-script.png " ")

4. In the SQL Scripts list, click the **Run** (play) action beside `role-based-access-setup`. Review the confirmation details, then click **Run**.

    ![Run the uploaded role-based access setup script](images/lab1-run-role-based-access-setup-script.png " ")

    ![Confirm running the role-based access setup script](images/lab1-confirm-role-based-access-setup-script.png " ")

5. After the script completes successfully, continue to the TAP authentication setup. The lab password for active employees is **`apex`**.

    > **Run once:** This setup script creates tables and adds the `PASSWORD` column. Do not run it again in a schema where those objects already exist.

## Task 2: Create the TAP authentication scheme

1. From **App Builder**, open **Talent Acquisition Portal (TAP)** and click **Shared Components**.

    ![Open the Talent Acquisition Portal application](images/lab1-open-tap-app.png " ")

2. Under **Security**, click **Authentication Schemes**.

    ![Open TAP Authentication Schemes](images/lab1-tap-open-authentication-schemes.png " ")

3. Click **Create**.

    ![Create a TAP authentication scheme](images/lab1-tap-create-authentication-scheme.png " ")

4. Select **Create Schema** as **Based on a pre-configured scheme from the gallery**, then click **Next**.

    ![Select the gallery authentication-scheme method](images/lab1-tap-select-scheme-method.png " ")

5. Set **Name** to **`TAP - Authentication`** and set **Scheme Type** to **Custom**.

    ![Set the TAP authentication-scheme name and type](images/lab1-tap-set-scheme-name.png " ")

6. Under **Source**, enter this **PL/SQL Code**.

    ```plsql
    <copy>
    FUNCTION authenticate (
      p_username VARCHAR2,
      p_password VARCHAR2
    ) RETURN BOOLEAN
    IS
      l_count NUMBER;
    BEGIN
      IF p_username IS NULL OR p_password IS NULL THEN
        RETURN FALSE;
      END IF;

      SELECT COUNT(*) INTO l_count
        FROM tms_employees
       WHERE UPPER(email) = UPPER(p_username)
         AND status = 'Active'
         AND password = hash_password(UPPER(p_username), p_password);
      RETURN l_count = 1;
    END authenticate;
    </copy>
    ```

    ![Enter the TAP custom authentication function](images/lab1-tap-enter-authentication-code.png " ")

7. Under **Settings**, set **Authentication Function Name** to **`authenticate`**, then click **Create Authentication Scheme**.

    ![Set the TAP authentication function name](images/lab1-tap-set-authentication-function.png " ")

8. Verify that **TAP - Authentication** appears in the list and is not current yet.

    ![Verify the TAP scheme was created](images/lab1-tap-scheme-created.png " ")

## Task 3: Make the TAP scheme current

1. Click **TAP - Authentication** in the Authentication Schemes list.

    ![Open the saved TAP authentication scheme](images/lab1-tap-scheme-created.png " ")

2. Click **Make Current Scheme**.

    ![Make the TAP scheme current](images/lab1-tap-make-current-scheme.png " ")

3. In the confirmation dialog, click **OK**.

    ![Confirm the TAP current-scheme change](images/lab1-tap-confirm-current-scheme.png " ")

4. Verify that **TAP - Authentication** is marked **Yes** in the **Is Current** column.

    ![Verify TAP is using the current authentication scheme](images/lab1-tap-current-scheme-confirmed.png " ")

## Task 4: Set the TAP employee session context

1. Return to **Shared Components**. Under **Application Logic**, click **Application Items**.

    ![Open TAP Application Items](images/lab1-tap-open-application-items.png " ")

2. Click **Create**.

    ![Create a TAP application item](images/lab1-tap-create-application-item.png " ")

3. Set **Name** to **`APP_EMPLOYEE_ID`**, then click **Create Application Item**.

    ![Set the TAP employee application item](images/lab1-tap-set-application-item.png " ")

4. Return to **Shared Components**. Under **Application Logic**, click **Application Computations**.

    ![Open TAP Application Computations](images/lab1-tap-open-application-computations.png " ")

5. Click **Create**.

    ![Create a TAP application computation](images/lab1-tap-create-application-computations.png " ")

6. Set:

    - Computation Item: **`APP_EMPLOYEE_ID`**
    - Computation Point: **After Authentication**
    - Computation Type: **SQL Query (return single value)**
    - Computation:

      ```sql
      <copy>
      SELECT employee_id FROM tms_employees WHERE LOWER(email) = LOWER(:APP_USER)
      </copy>
      ```

    ![Set the TAP employee computation](images/lab1-tap-set-application-computation.png " ")

7. Click **Create Computation** and verify the new **`APP_EMPLOYEE_ID`** computation.

    ![Verify the TAP employee computation](images/lab1-tap-application-computation-created.png " ")

## Task 5: Create the ESS authentication scheme

1. Return to **App Builder**, open **Employee Self-Service Portal (ESS)**, and click **Shared Components**.

    ![Open the Employee Self-Service Portal application](images/lab1-open-ess-app.png " ")

2. Under **Security**, click **Authentication Schemes**.

    ![Open ESS Authentication Schemes](images/lab1-ess-open-authentication-schemes.png " ")

3. Click **Create**, select **Create Schema** as **Based on a pre-configured scheme from the gallery**, and click **Next**.

    ![Select the ESS gallery authentication-scheme method](images/lab1-ess-select-scheme-method.png " ")

4. Set **Name** to **`ESS - Authentication`** and set **Scheme Type** to **Custom**.

    ![Set the ESS authentication-scheme name and type](images/lab1-ess-set-scheme-name.png " ")

5. Under **Settings**, enter the Authentication Function Name as **`authenticate`** function same as used for TAP. Similarly under Source PL/SQL Code enter the code used for TAP (as did in Lab1 > Task2 > Step6), then click **Create Authentication Scheme**.

    ![Set the ESS custom authentication function](images/lab1-ess-set-authentication-function.png " ")

6. Verify that **ESS - Authentication** appears in the list and is not current yet.

    ![Verify the ESS scheme was created](images/lab1-ess-scheme-created.png " ")

## Task 6: Make the ESS scheme current

1. Click **ESS - Authentication** in the Authentication Schemes list.

    ![Open the saved ESS authentication scheme](images/lab1-ess-scheme-created.png " ")

2. Click **Make Current Scheme**.

    ![Make the ESS scheme current](images/lab1-ess-make-current-scheme.png " ")

3. In the confirmation dialog, click **OK**.

    ![Confirm the ESS current-scheme change](images/lab1-ess-confirm-current-scheme.png " ")

4. Verify that **ESS - Authentication** is marked **Yes** in the **Is Current** column.

    ![Verify ESS is using the current authentication scheme](images/lab1-ess-current-scheme-confirmed.png " ")

## Task 7: Set the ESS employee session context

1. Return to **Shared Components**. Under **Application Logic**, click **Application Items**.

    ![Open ESS Application Items](images/lab1-ess-open-application-items.png " ")

2. Click **Create**.

    ![Create an ESS application item](images/lab1-ess-create-application-item.png " ")

3. Set **Name** to **`APP_EMPLOYEE_ID`**, then click **Create Application Item**.

    ![Set the ESS employee application item](images/lab1-ess-set-application-item.png " ")

4. Return to **Shared Components**. Under **Application Logic**, click **Application Computations**.

    ![Open ESS Application Computations](images/lab1-ess-open-application-computations.png " ")

5. Click **Create**.

    ![Create an ESS application computation](images/lab1-ess-create-application-computation.png " ")

6. Set:

    - Computation Item: **`APP_EMPLOYEE_ID`**
    - Computation Point: **After Authentication**
    - Computation Type: **SQL Query (return single value)**
    - Computation:

      ```sql
      <copy>
      SELECT employee_id FROM tms_employees WHERE LOWER(email) = LOWER(:APP_USER)
      </copy>
      ```

    ![Set the ESS employee computation](images/lab1-ess-set-application-computation.png " ")

7. Click **Create Computation** and verify the new `APP_EMPLOYEE_ID` computation.

    ![Verify the ESS employee computation](images/lab1-ess-application-computation-created.png " ")

## Summary

Both applications now identify users before serving protected pages, and each session carries an employee ID for security decisions. Next, you will define those security decisions as reusable authorization schemes.

## Acknowledgements

- **Author** - Ashwin Rao, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Ashwin Rao, August 2026
