# Build the Weekly HR AI Summary

## Introduction

In this lab, you will add an HR Admin-only region to ESS Home. A button first calculates four current HR metrics on the server. A second action sends only those metrics to the configured AI service and writes a concise weekly briefing to a read-only item.

Estimated Lab Time: 20 minutes

### Where We Are

ESS Home includes the HR charts created in Module 19. In this lab, you add an HR Admin-only weekly summary that uses the current metrics from those pages.

### Objectives

In this lab, you will:

- Create the Weekly HR Summary region.
- Restrict the region with `IS_HR_ADMIN`.
- Add a read-only AI result item and four hidden metric items.
- Populate live HR metrics through PL/SQL.
- Generate a three-sentence summary with AI.
- Verify action order and runtime behavior.

### Prerequisites

- Oracle APEX 26.1 or later and the starter application for this lab.
- A Generative AI Service configured in the workspace and selected under **Shared Components > AI Attributes** for the application.
- If a component already exists in the supplied completed app, open it to review its properties. In your workshop starter app, create it using the steps below.

## Task 1: Open ESS Home in Page Designer

1. In App Builder, open **Employee Self-Service Portal**.

    ![Open the Lab 3 ESS application](images/lab3-01-open-ess-app.png " ")

2. Open **Page 1: Home**.

    > **Note:** Your generated page number might differ. Select the page named **Home**.

    ![Select Home on the application home page](images/lab3-02-open-home-page.png " ")

3. In the **Rendering** tab, review the existing HR chart regions. You will place the new region above **Headcount by Department**.

    The target order in the Body region list is:

    ```text
    ESS Home
    ├── Metric Cards
    ├── Onboarding Progress
    ├── Weekly HR Summary
    ├── Headcount by Department
    ├── Leave Requests by Type
    └── New Hires - Last 12 Months
    ```

    ![Review the existing ESS Home layout in Page Designer](images/lab3-task1-point3-existing-page-layout.png " ")

## Task 2: Create the Weekly HR Summary Region

1. In the **Rendering** tab, right-click **Body**.

2. Select **Create Region**.

    ![Create the summary region from the Body context menu](images/lab3-task2-point1-create-region-menu.png " ")

3. In the **Property Editor**, configure the region:

    | Property | Value |
    | --- | --- |
    | Identification > Name | `Weekly HR Summary` |
    | Type | Static Content |
    | Layout > Sequence | A value lower than Headcount by Department, such as `15` when Headcount has sequence `20` |
    | Security > Authorization Scheme | `IS_HR_ADMIN` |

    ![Set the region name and Static Content type](images/lab3-task2-point2-summary-region-type.png " ")

    ![Protect the summary region with the existing HR Admin scheme](images/lab3-09-region-authorization.png " ")

4. In the **Rendering** tab, drag **Weekly HR Summary** above **Headcount by Department**.

5. Verify that **Weekly HR Summary** precedes **Headcount by Department** in the Body region list.

    ![Verify Weekly HR Summary above Headcount by Department before saving](images/lab3-task2-point4-summary-region-order.png " ")

    > **Note:** The authorization scheme protects the complete region, including its button, metrics, and AI-generated text.

## Task 3: Add the Summary and Metric Items

1. In the **Rendering** tab, right-click **Weekly HR Summary**.

2. Select **Create Page Item**.

    ![Create a page item under Weekly HR Summary](images/lab3-task3-point1-create-summary-item.png " ")

3. In the **Property Editor**, configure the AI result item:

    | Property | Value |
    | --- | --- |
    | Identification > Name | `P1_HR_SUMMARY` |
    | Type | Textarea |
    | Label | `Weekly HR Summary` |
    | Read Only > Type | Always |

    ![Configure the weekly summary result item](images/lab3-05-summary-item.png " ")

    ![Set the summary item Read Only type](images/lab3-11-summary-read-only.png " ")

4. Create four more page items under the region. In the **Property Editor**, configure each item as shown:

    | Item Name | Type | Purpose |
    | --- | --- | --- |
    | `P1_OPEN_REQS` | Hidden | Number of open job requisitions |
    | `P1_NEW_CANDIDATES` | Hidden | Candidates who applied during the current week |
    | `P1_PENDING_OFFERS` | Hidden | Offers pending approval |
    | `P1_LEAVE_REQUESTS` | Hidden | Leave requests starting during the current week |

    The server calculates these values and retains them between the two action requests. They are not submitted from the browser.

    ![Verify the hidden metric items](images/lab3-06-hidden-metrics.png " ")

    ![Keep metric items Hidden, protected and stored Per Session](images/lab3-task3-point3-hidden-metric-storage.png " ")

5. Save the page.

## Task 4: Add the Generate Weekly Summary Button

1. In the **Rendering** tab, right-click **Weekly HR Summary**.

2. Select **Create Button**.

    ![Create a button from the Weekly HR Summary region context menu](images/lab3-task4-point1-create-summary-button.png " ")

3. In the **Property Editor**, configure the button:

    | Property | Value |
    | --- | --- |
    | Button Name | `GENERATE_HR_SUMMARY` |
    | Label | `Generate Weekly HR Summary` |
    | Appearance > Icon | `fa-sparkles` |
    | Appearance > Button Template | Text with Icon |
    | Layout > Slot | Edit |

    ![Configure the weekly summary button label icon slot and trigger action before saving](images/lab3-task4-point2-summary-button-settings.png " ")

4. Verify the button in the **Rendering** tab.

5. Save the page.

## Task 5: Retrieve Current HR Metrics

1. In the **Rendering** tab, right-click **`GENERATE_HR_SUMMARY`**.

2. Select **Create Trigger Action**.

    ![Create a trigger action on the summary button](images/lab3-13-create-trigger-action.png " ")

3. Select the new action under **`GENERATE_HR_SUMMARY` > Triggered Actions**.

4. In the **Property Editor**, configure the server action:

    | Property | Value |
    | --- | --- |
    | Name | `Execute Server-side Code` |
    | Action | Execute Server-side Code |
    | Settings > Language | PL/SQL |
    | Settings > Items to Submit | Leave empty |
    | Settings > Items to Return | Leave empty |

    ![Set the server action Name and Action before saving](images/lab3-task5-point3-server-action-name.png " ")

    Under **Settings**, enter the following in **PL/SQL Code**:

    ```plsql
    <copy>
    BEGIN
        SELECT COUNT(*)
          INTO :P1_OPEN_REQS
          FROM tms_job_requisitions
         WHERE status = 'Open';

        SELECT COUNT(*)
          INTO :P1_NEW_CANDIDATES
          FROM tms_candidates
         WHERE applied_date >= TRUNC(SYSDATE, 'IW')
           AND applied_date < TRUNC(SYSDATE, 'IW') + 7;

        SELECT COUNT(*)
          INTO :P1_PENDING_OFFERS
          FROM tms_offers
         WHERE status = 'Pending Approval';

        SELECT COUNT(*)
          INTO :P1_LEAVE_REQUESTS
          FROM tms_leave_requests
         WHERE start_date >= TRUNC(SYSDATE, 'IW')
           AND start_date < TRUNC(SYSDATE, 'IW') + 7;
    END;
    </copy>
    ```

    ![Enter the bounded weekly metric queries before saving](images/lab3-task5-point4-weekly-metrics-code.png " ")

    ![Configure empty submit and return fields and server action execution before saving](images/lab3-task5-point5-server-action-execution.png " ")

5. In the **Rendering** tab, verify the action beneath the button.

    Confirm that both weekly date filters have a lower bound of `TRUNC(SYSDATE, 'IW')` and an upper bound of `TRUNC(SYSDATE, 'IW') + 7`. Confirm that the action has no items to submit or return. The next action must wait for these values to be stored before generating the summary.

## Task 6: Generate the HR Summary with AI

1. In the **Rendering** tab, right-click **`GENERATE_HR_SUMMARY`** again.

2. Select **Create Trigger Action**.

3. Select the new action under **Triggered Actions**.

    ![Create the second trigger action on Generate HR Summary](images/lab3-task6-point1-create-ai-action.png " ")

4. In the **Property Editor**, configure the AI action:

    | Property | Value |
    | --- | --- |
    | Name | `Generate Text With AI` |
    | Action | Generate Text With AI |
    | Input Value > Type | Only System Prompt |
    | Use Response > Type | Item |
    | Use Response > Item | `P1_HR_SUMMARY` |

    ![Set the AI action Name and Action before saving](images/lab3-task6-point2-ai-action-name.png " ")

    Under **Generative AI**, enter the following in **System Prompt**:

    ```text
    <copy>
    Summarize this week's HR activity for Acme Corp.

    Open requisitions: &P1_OPEN_REQS.
    New candidates this week: &P1_NEW_CANDIDATES.
    Pending offers: &P1_PENDING_OFFERS.
    Leave requests this week: &P1_LEAVE_REQUESTS.

    Provide a concise three-sentence summary suitable for an HR Director.
    Highlight anything that may require attention.
    Only use the supplied metrics and do not invent additional facts.
    </copy>
    ```

    ![Enter the four-metric HR system prompt before saving](images/lab3-task6-point3-hr-system-prompt.png " ")

    The item substitution strings, such as `&P1_OPEN_REQS.`, in the system prompt read the metrics stored by Task 5. Do not return these protected hidden values to the browser and submit them again.

    ![Verify the system prompt input and P1_HR_SUMMARY response target before saving](images/lab3-task6-point4-ai-summary-response.png " ")

5. In the **Rendering** tab, verify the action.

    Confirm that the response target is `P1_HR_SUMMARY` and that **Items to Submit** is empty.

6. Save the page.

## Task 7: Verify the Action Execution Order

1. Expand `GENERATE_HR_SUMMARY > Triggered Actions`.

2. Confirm that the actions appear in this order:

    ```text
    GENERATE_HR_SUMMARY
        ↓
    Execute Server-side Code
        ↓
    Populate P1_OPEN_REQS
             P1_NEW_CANDIDATES
             P1_PENDING_OFFERS
             P1_LEAVE_REQUESTS
        ↓
    Generate Text With AI
        ↓
    P1_HR_SUMMARY
    ```

3. Select **Execute Server-side Code**. In the **Property Editor**, verify the following settings:

    | Property | Value |
    | --- | --- |
    | Execution > Sequence | `10` |
    | Execution > Wait For Result | On |
    | Execution > Stop Execution On Error | On |
    | Settings > Items to Return | Empty |

4. Select **Generate Text With AI**. In the **Property Editor**, set **Execution > Sequence** to `20`.

    The server action must complete before the AI action reads the metrics.

    ![Set the AI action sequence to 20 before saving](images/lab3-task7-point3-ai-action-sequence.png " ")

    ![Verify the server action sequence 10 and wait settings before saving](images/lab3-task7-point3-server-action-sequence.png " ")

    > **Note:** The order is required. The AI prompt reads the server session-state values stored by the first action. Persistent storage is required because the two actions run in separate requests.

## Task 8: Test the Weekly Summary as an HR Administrator

1. Run ESS.

2. Sign in as an HR Admin.

3. Open **Home**.

4. Confirm that **Weekly HR Summary** appears above the HR charts.

    ![Weekly HR Summary above the HR charts for an HR Admin](images/lab3-task8-point3-summary-above-charts.png " ")

5. Click **Generate Weekly HR Summary**.

6. Wait for the Generative AI request to complete.

7. Verify that `P1_HR_SUMMARY` displays a concise three-sentence summary.

    ![Observed three-sentence AI summary; compare its counts and wording with session state](images/lab3-task8-point6-generated-summary.png " ")

8. While running the application from App Builder, select **Session > View Session State** on the Developer Toolbar.

    Compare each number in the summary with the page-item values in session state. The response must not introduce additional facts, causes, names, or forecasts.

    > **Note:** The leave metric counts requests **starting** this week, rather than requests submitted this week. Review the generated wording as well as the numbers; if the assistant changes that meaning, regenerate or correct the prompt before accepting the briefing.

    ![Session State shows the four server-calculated metrics: 6, 0, 1 and 0](images/lab3-task8-point7-metric-session-state.png " ")

9. Sign in as a user who does not satisfy `IS_HR_ADMIN`, or ask another workshop participant to test that role.

10. Confirm that the complete **Weekly HR Summary** region is hidden.

    ![Employee Home without the HR-only summary region or Generate button](images/lab3-task8-point9-non-hr-summary-hidden.png " ")

## Summary

You created an HR Admin-only weekly briefing that calculates current HR metrics and sends only those values to the AI service. You also verified the action sequence, generated result, and authorization behavior.

You have completed this workshop.

## Learn More - Useful Links

- [Adding Interactivity to Pages](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/adding-interactivity-pages.html)
- [Including Generative AI in Applications](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/including-generative-ai-in-applications.html)

## Acknowledgements

- **Author** - Shanmukh Kornana, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
