# Create a CV Screening Agent in TAP

## Introduction

In this lab, you will build a CV Screening Agent for recruiters. The agent retrieves one candidate, identifies the related requisition, retrieves the job information, evaluates job-related fit using verified qualifications and requirements supplied by the recruiter, and saves a score and concise summary to the candidate record.

Estimated Lab Time: 20 minutes

### Where We Are

TAP already includes the Candidate Pipeline page and the authorization scheme used by TA Admins. In this lab, you create the CV Screening Agent and make its reviewed screening results available in Candidate Pipeline.

### Objectives

In this lab, you will:

- Add an `AI_SUMMARY` column to the `TMS_CANDIDATES` table.
- Create the CV Screening Agent.
- Create three On-Demand AI tools.
- Add AI Score and AI Summary to Candidate Pipeline.
- Add a protected **Screen Candidate** button.
- Open the native AI Assistant in a dialog and reload Candidate Pipeline after screening.

### Prerequisites

- Oracle APEX 26.1 or later and the starter application for this lab.
- Access to a TA Admin runtime account, a test candidate, and verified qualification text from that candidate's résumé together with the requirements for their requisition. The sample retrieval queries return metadata, so the recruiter must supply this evidence in Task 10.
- A Generative AI Service configured in the workspace and selected under **Shared Components > AI Attributes** for the application.
- If a component already exists in the supplied completed app, open it to review its properties. In your workshop starter app, create it using the steps below.

### Downloads

Stuck or missed out on completing the previous labs? Don't worry! You can download the following file:

- **<a href="../0-introduction/files/tap-export14.sql" download="tap-export14.sql">Talent Acquisition Portal</a>**

Import it into your workspace. In **App Builder**, select **Import**, upload `tap-export14.sql`, and follow the steps in the **Import Application** wizard.

> **Note:**
>
> - **APEX Version:** The supplied application export was created with Oracle APEX 26.2 and cannot be imported into earlier APEX releases.

## Task 1: Prepare Candidate Data for AI Screening

1. Sign in to your Oracle APEX workspace.

2. On the workspace home page, select **App Builder**.

    ![Open App Builder from the workspace home page](images/lab1-00-workspace-home.png " ")

3. From the **App Builder** home page, select **SQL Workshop** in the left navigation bar.

    ![Open SQL Workshop](images/lab1-00-open-sql-workshop.png " ")

4. Select **SQL Commands**.

    ![Open SQL Commands](images/lab1-00b-open-sql-commands.png " ")

5. Enter the following statement.

6. Click **Run**.

    ```sql
    <copy>
    ALTER TABLE tms_candidates ADD (
        ai_summary VARCHAR2(4000)
    );
    </copy>
    ```

    > **Note:** If `AI_SUMMARY` already exists, do not run the statement again. Continue with the existing column.

    ![Enter the AI_SUMMARY column statement only when the column does not already exist](images/lab1-task1-point4-add-summary-column.png " ")

## Task 2: Create and Configure the CV Screening Agent

1. In **App Builder**, open **Talent Acquisition Portal**.

    ![Open Talent Acquisition Portal from App Builder](images/lab1-00c-open-tap-app.png " ")

2. Select **Shared Components**.

    ![Click Shared Components on the Talent Acquisition Portal home page](images/lab1-task2-point2-shared-components.png " ")

3. In **Generative AI**, select **AI Agents**.

    ![Open AI Agents](images/lab1-01-open-ai-agents.png " ")

4. Click **Create**.

    ![Create an AI Agent](images/lab1-02-create-agent.png " ")

5. Configure the agent:

    | Property | Value |
    | --- | --- |
    | Name | `CV Screening Agent` |
    | Service | Application Default |

    ![Set the agent name and application-default service](images/lab1-task2-point5-agent-settings-creation-stage.png " ")

6. In **System Prompt**, enter the following text:

    ```text
    <copy>
    You are a recruitment screening assistant for Acme Corp.

    Your purpose is to help recruiters evaluate candidates against the
    requirements of the job requisition they applied for.

    When asked to screen a candidate:
    1. Use get_candidate_information to find the candidate by full name.
       If more than one record matches, ask the recruiter for the candidate's
       email and resolve the correct record before proceeding. Never guess.
       Keep record IDs and tool names internal; use names and job titles
       when talking to the recruiter. Use only IDs returned by the tools.
    2. Identify the candidate's requisition.
    3. Use get_job_requirements to retrieve the corresponding job requirements.
    4. Ask the recruiter for verified candidate qualifications and the specific
       requirements of that requisition if the tools do not return them.
    5. Evaluate only job-related information supported by that evidence.

    Score the candidate from 1 to 10 based on:
    - Relevant skills
    - Relevant experience
    - Job alignment
    - Overall suitability

    Provide:
    Overall Score: <1-10>
    Recommendation: Strong Yes / Yes / Maybe / No
    Summary: <short job-related explanation>

    Do not make decisions based on name, gender, age, ethnicity,
    nationality, disability, or other protected characteristics.

    Do not invent candidate qualifications or job requirements. Names, stages,
    sources, dates, job titles, departments, and existing AI scores are not
    evidence of skills or experience. If either qualification evidence or
    specific job requirements are missing, explain what is missing and do not
    assign a score or recommendation, or call update_ai_score.

    Use update_ai_score only after completing the evaluation and receiving
    the recruiter's explicit request to save the reviewed result.
    </copy>
    ```

7. Click **Create** to save the new agent. When reviewing an existing agent, click **Apply Changes**.

## Task 3: Create the Get Candidate Information Tool

1. Open **CV Screening Agent**.

    ![Select the CV Screening Agent Tools tab](images/lab1-task3-empty-tools-creation-stage.png " ")

2. Select the **Tools** tab.

3. Select **Add Tool**.

    ![Add an AI Agent tool](images/lab1-task3-empty-tools-creation-stage.png " ")

4. Configure the tool:

    | Property | Value |
    | --- | --- |
    | Name | `get_candidate_information` |
    | Type | Retrieve Data |
    | Execution Point | On Demand |

5. Enter this description:

    ```text
    <copy>
    Finds candidates by their full name and returns their information and
    associated requisition. Use this tool before evaluating a candidate.
    If multiple records match, ask the recruiter to identify the correct
    candidate by email before continuing.
    </copy>
    ```

6. Under **Parameters**, select **Add Parameter**.

    Enter the following row in the grid:

    | Property | Value |
    | --- | --- |
    | Parameter Name | `CANDIDATE_NAME` |
    | Data Type | VARCHAR2 |
    | Required | Yes |

7. Under **Settings**, set **Type** to **SQL Query**.

    Enter the following in **SQL Query**:

    ```sql
    <copy>
    SELECT
        c.candidate_id,
        c.req_id,
        c.first_name || ' ' || c.last_name AS candidate_name,
        c.email,
        c.current_stage,
        c.source,
        c.applied_date,
        c.ai_score
    FROM tms_candidates c
    WHERE UPPER(TRIM(c.first_name || ' ' || c.last_name))
        = UPPER(TRIM(:CANDIDATE_NAME))
    </copy>
    ```

    The assistant searches by the name supplied in ordinary language. It retains the returned `CANDIDATE_ID` and `REQ_ID` internally for later tool calls; the recruiter does not need to enter either ID. If names match more than one record, use the returned email to clarify the candidate. The query must return `REQ_ID`. The next tool uses it to retrieve the related job. This sample returns candidate metadata; it does not extract the resume BLOB or supply qualifications. Task 4 also returns job metadata rather than detailed requirements. Supply verified qualification and requirement text in Task 10 before requesting an evaluation. If either is unavailable, test retrieval only; the agent must request the missing evidence and must not score or update the record.

8. Save the tool.

    Confirm that it appears under **On Demand**.

## Task 4: Create the Get Job Requirements Tool

1. Click **Add Tool** again.

    ![Select Add Tool on the CV Screening Agent Tools tab](images/lab1-task4-point1-add-tool-creation-stage.png " ")

2. Configure the tool:

    | Property | Value |
    | --- | --- |
    | Name | `get_job_requirements` |
    | Type | Retrieve Data |
    | Execution Point | On Demand |

3. Enter this description:

    ```text
    <copy>
    Returns the requisition and associated job information.
    Use this tool to identify the candidate's job and department. This query
    does not return detailed requirements; ask the recruiter for verified
    requirements before evaluating the candidate.
    </copy>
    ```

    ![Enter the job requirements tool description before saving](images/lab1-task4-point3-tool-description-creation-stage.png " ")

4. Under **Parameters**, click **Add Parameter**. Enter the following row in the grid:

    | Property | Value |
    | --- | --- |
    | Parameter Name | `REQ_ID` |
    | Data Type | NUMBER |
    | Required | Yes |

    ![Configure the required NUMBER requisition parameter](images/lab1-task4-point4-requisition-parameter-creation-stage.png " ")

5. Under **Settings**, set **Type** to **SQL Query**.

    Enter the following in **SQL Query**:

    ```sql
    <copy>
    SELECT
        r.req_id,
        r.job_id,
        j.title AS job_title,
        r.status AS requisition_status,
        d.name AS department_name
    FROM tms_job_requisitions r
    JOIN tms_jobs j
      ON j.job_id = r.job_id
    LEFT JOIN tms_departments d
      ON d.dept_id = r.dept_id
    WHERE r.req_id = :REQ_ID
    </copy>
    ```

    ![Enter the requisition and job metadata SQL](images/lab1-task4-point5-job-query-creation-stage.png " ")

6. Select **Create**.

## Task 5: Create the Update AI Screening Results Tool

1. Click **Add Tool**.

    ![Select Add Tool on the CV Screening Agent Tools tab](images/lab1-task5-point1-add-tool-creation-stage.png " ")

2. Configure the tool:

    | Property | Value |
    | --- | --- |
    | Name | `update_ai_score` |
    | Type | Execute Server-side Code |

3. Enter this description:

    ```text
    <copy>
    Stores the completed AI screening score and summary for a candidate.
    Call this only after evaluating the candidate against their job.
    </copy>
    ```

    ![Enter the score update tool description before saving](images/lab1-task5-point3-tool-description-creation-stage.png " ")

4. Under **Parameters**, click **Add Parameter** for each of the following rows:

    | Parameter Name | Data Type | Required |
    | --- | --- | --- |
    | `CANDIDATE_ID` | NUMBER | Yes |
    | `SCORE` | NUMBER | Yes |
    | `SUMMARY` | VARCHAR2 | Yes |

    ![Configure required candidate score and summary parameters](images/lab1-task5-point4-score-parameters-creation-stage.png " ")

5. Under **Settings**, set **Language** to **PL/SQL**.

    Enter the following in **PL/SQL Code**:

    ```plsql
    <copy>
    BEGIN
        IF :SCORE < 1 OR :SCORE > 10 THEN
            RAISE_APPLICATION_ERROR(
                -20001,
                'AI score must be between 1 and 10.'
            );
        END IF;

        UPDATE tms_candidates
           SET ai_score   = :SCORE,
               ai_summary = :SUMMARY,
               updated_by = :APP_USER,
               updated = SYSTIMESTAMP
         WHERE candidate_id = :CANDIDATE_ID;

        IF SQL%ROWCOUNT = 0 THEN
            RAISE_APPLICATION_ERROR(
                -20002,
                'Candidate could not be found.'
            );
        END IF;
    END;
    </copy>
    ```

    The validation rejects an out-of-range score. The row-count check prevents the tool from reporting success for a missing candidate.

    ![Enter PL/SQL with score validation and candidate update checks before saving](images/lab1-task5-point5-score-update-code-creation-stage.png " ")

6. Under **User Approval**, set **Requires Confirmation** to **No**. Then select **Create**.

    ![Verify the update score tool](images/lab1-07-update-score-tool.png " ")

7. Return to the agent and verify that all three tools appear under **On Demand**.

    ![Verify the three On Demand screening tools](images/lab1-task5-point7-on-demand-tools.png " ")

## Task 6: Display AI Screening Results in Candidate Pipeline

1. Return to the TAP application home page.

2. Open **Page 4: Candidate Pipeline**.

    > **Note:** Your generated page number might differ. Select the page named **Candidate Pipeline**.

    ![Select Candidate Pipeline on the application home page](images/lab1-08-open-candidate-pipeline-page.png " ")

3. In the **Rendering** tab, select the **Candidates** Interactive Report region.

    ![Select the Candidates Interactive Report region](images/lab1-task6-point3-interactive-report-region-creation-stage.png " ")

4. In the **Property Editor**, expand **Source**.

5. Add the `AI_SUMMARY` column to the existing query. Keep the existing table alias when the query uses one.

    ```sql
    <copy>
    SELECT
        c.candidate_id,
        c.req_id,
        c.first_name || ' ' || c.last_name         AS candidate_name,
        d.name                                     AS department_name,
        c.email,
        c.phone,
        c.resume_blob,
        c.source,
        c.current_stage                            AS stage,
        c.applied_date,
        TRUNC(SYSDATE - c.applied_date)            AS days_since_applied,
        c.diversity_flag,
        c.ai_score,
        c.created_by,
        c.created,
        c.updated_by,
        c.updated,
        c.ai_summary
    FROM   tms_candidates       c
    LEFT  JOIN tms_job_requisitions r ON c.req_id = r.req_id
    LEFT  JOIN tms_departments       d ON r.dept_id = d.dept_id
    WHERE  ( :P4_REQ_ID IS NULL
            OR c.req_id = Lower(:P4_REQ_ID) )
        AND ( c.req_id IN (SELECT r.req_id
                            FROM   tms_job_requisitions r
                            WHERE  lower(r.requested_by) = lower(:APP_USER))
                OR EXISTS (SELECT 1
                            FROM   tms_roles r
                                    JOIN tms_employee_roles er
                                    ON er.role_id = r.role_id
                            WHERE  r.role_code = 'TA_ADMIN'
                                    AND er.employee_id = :APP_EMPLOYEE_ID) )
    AND ( :P4_STAGE    IS NULL OR c.current_stage = :P4_STAGE );
    </copy>
    ```

    Add the expressions before the query's `FROM` clause and preserve the comma between select-list expressions. If `AI_SCORE` is already in the select list, add only `AI_SUMMARY`; do not duplicate either expression.

    ![Include AI_SCORE and AI_SUMMARY in the existing report query](images/lab1-task6-point4-report-source-creation-stage.png " ")

6. Save the page. APEX synchronizes the report columns with the query.

7. Expand **Candidates > Columns**.

8. Select **`AI_SCORE`**.

    ![Select AI Score](images/lab1-09-ai-score-column-creation-stage.png " ")

9. Under **Heading**, set **Heading** to **AI Score**.

    Under **Enable Users To**, keep **Sort** enabled. Use the **Property Editor** filter to find **Sort** if it is below the visible area.

    ![Enable report column sorting in the Property Editor](images/lab1-16-column-sort-creation-stage.png " ")

10. Select **`AI_SUMMARY`**.

    ![Select AI Summary](images/lab1-09b-ai-summary-column-creation-stage.png " ")

11. Under **Heading**, set **Heading** to **AI Summary**.

    ![Set the AI Summary heading and Plain Text column type](images/lab1-task6-point9-summary-column-type-creation-stage.png " ")

12. Save the page.

## Task 7: Save the Candidate Pipeline Default Report Layout

1. Run the application.

2. Open the Candidate Pipeline report.

    > **Note:** The reference screenshots label the numeric `AI_SCORE` column **AI Screening Summary**. After configuring its heading in Task 6, your column is labeled **AI Score**. Both refer to the numeric score; **AI Summary** is the separate text column.

3. In the Interactive Report, select **Actions > Columns**.

    ![Open Columns from the Interactive Report Actions menu](images/lab1-task7-point2-columns-menu-creation-stage.png " ")

4. Under **Do Not Display**, select **AI Score**.

5. Select the right arrow to add **AI Score** to **Display in Report**.

6. Under **Do Not Display**, select **AI Summary**.

7. Select the right arrow to add **AI Summary** to **Display in Report**.

    To hide a column, select it under **Display in Report** and select the left arrow.

    To change the display order, select a displayed column and use the up and down arrows. Place both AI columns near the candidate name and stage. These arrows reorder columns; they do not sort report rows.

    ![Use the Select Columns shuttle to show hide and reorder the AI report columns](images/lab1-task7-point3-column-shuttle.png " ")

8. Click **Apply**.

9. Select **Actions > Data > Sort**.

10. Select **AI Score** and **Descending**.

11. Click **Apply**.

12. Select **Actions > Report > Save Report**.

    ![Select the numeric AI score column and Descending in the Sort dialog before applying](images/lab1-task7-point5-score-sort.png " ")

13. In the **Save Report** dialog, select **As Default Report Settings**.

14. For **Default Report Type**, select **Primary**.

15. Click **Apply**.

    > **Note:** Saving only a personal report does not change the layout for other users. Save the application default while signed in as a developer who can manage the default report.

    ![Choose Primary in Save Default Report before applying](images/lab1-task7-point6-primary-default-report.png " ")

16. Confirm that both AI columns remain visible after the report reloads.

    ![Verify both AI columns are visible in Candidate Pipeline](images/lab1-task7-point7-visible-ai-columns-creation-stage.png " ")

## Task 8: Add the Screen Candidate Button

1. Return to Page Designer for **Page 4: Candidate Pipeline**.

2. In the **Rendering** tab, select the existing **Breadcrumb** region.

3. In the **Rendering** tab, right-click **Breadcrumb**.

4. Select **Create Button**.

5. In the **Property Editor**, configure the button:

    | Property | Value |
    | --- | --- |
    | Button Name | **SCREEN_CANDIDATE** |
    | Label | **Screen Candidate** |
    | Layout > Slot | **Create** |
    | Appearance > Button Template | **Text with Icon** |
    | Appearance > Hot | **Yes** |
    | Appearance > Icon | **fa-sparkles** |
    | Appearance > Template Options > Type | **Primary** |
    | Behavior > Action | **Trigger Action** |

    ![Select Screen Candidate in Page Designer](images/lab1-10-screen-candidate-button-creation-stage.png " ")

    ![Template options type as primary](images/template-options-primary-button.png " ")

    ![Set Icon, fa-sparkles and Trigger Action](images/lab1-task8-point4-button-appearance-creation-stage.png " ")

## Task 9: Connect the Button to the CV Screening Agent

1. In the **Rendering** tab, right-click **`SCREEN_CANDIDATE`**.

2. Select **Create Trigger Action**. This option is available because Task 8 sets **Behavior > Action** to **Trigger Action**.

    ![Create a trigger action from the button context menu](images/lab1-12-create-trigger-action-creation-stage.png " ")

3. In the **Rendering** tab, select the new action under **`SCREEN_CANDIDATE` > Triggered Actions**.

4. Under **Identification**, set **Name** to **Screen Candidate with AI** and **Action** to **Show AI Assistant**. These are Trigger Actions in the **Rendering** tab; there is no True branch to create.

5. In the **Property Editor**, configure the action:

    | Property | Value |
    | --- | --- |
    | Generative AI > Agent | CV Screening Agent |
    | Appearance > Display As | Dialog |
    | Appearance > Title | Candidate Screening |

    ![Configure the agent and assistant dialog properties](images/lab1-13-show-ai-assistant-action.png " ")

6. After closing the assistant, reload the Candidate Pipeline page using the browser's Reload control. The report then displays the saved values.

    > **Note:** Opening the assistant does not update the candidate. Do not add a following Refresh action and assume that it waits for a conversation to finish.

7. With **Screen Candidate with AI** selected, under **Security**, set **Authorization Scheme** to the existing TA Admin scheme, **`IS_TA_ADMIN`**.

    Use the same scheme that protects the button in Task 8.

8. Save the page.

    ![Use the existing TA Admin authorization scheme on the screening action](images/lab1-15-action-authorization.png " ")

    > **Note:** The supplied Candidate Pipeline does not pass a selected candidate to the assistant. Enter the candidate's full name as shown in Task 10. Configure the name-based lookup in Task 3 before testing; an older completed reference app may still require a numeric candidate parameter.

## Task 10: Test Candidate Screening and Verify the Results

1. Return to the TAP application home page and click **Run Application**.

    ![Run TAP](images/lab1-14-run-tap.png " ")

2. Sign in as a user who satisfies the TA Admin authorization scheme.

    > **Note:** The page authorization scheme **`IS_RECRUITER or IS_TA_ADMIN`** must check the role codes `RECRUITER` and `TA_ADMIN`. `IS_TA_ADMIN` is the authorization scheme name, not the TA Admin role code.

3. Open **Candidate Pipeline**, choose a test candidate for whom you have verified resume qualifications and requisition requirements, and click **Screen Candidate**. Use that candidate's full name in Point 4, then continue in the same conversation. For example, use Nina Park only if that candidate exists in your application. If names are duplicated, provide the candidate's email when asked. If the required evidence is unavailable, complete retrieval in Points 4–5 and verify that the agent asks for evidence rather than scoring; do not continue with an update.

    ![Click the Screen Candidate sparkles button on Candidate Pipeline](images/lab1-task10-point3-screen-candidate.png " ")

4. In the AI Assistant dialog, first enter this prompt to retrieve the candidate information:

    ```text
    <copy>
    Please show me the application details for Nina Park.
    </copy>
    ```

    ![Open the CV Screening Agent assistant dialog](images/lab1-task10-point4-assistant-dialog.png " ")

5. Review the returned name and email to confirm that the assistant found the chosen candidate. Then ask about the job in the same conversation:

    ```text
    <copy>
    What job has this candidate applied for, and what are its requirements?
    </copy>
    ```

    ![Show Job Status and requirements](images/job-status-requirements.png " ")

6. (Optional) Review the returned job metadata. Replace both evidence placeholders below with verified text for the chosen candidate and requisition before sending this prompt. A job title and department alone are insufficient. Review the proposed score before requesting its persistence:

    ```text
    <copy>
    Here are this candidate's verified qualifications from the resume:
    [Paste the relevant qualifications here.]

    Here are the verified requirements for the job:
    [Paste the job requirements here.]

    How well does this candidate match the job? Suggest a score from 1 to 10
    and a short explanation based only on this evidence. Explain any gaps.
    Please show me your assessment for review without saving it yet.
    </copy>
    ```

7. Verify that the evaluation uses the supplied evidence and refers to the correct candidate and job.

    The completed flow is:

    ```text
    Candidate name
        ↓
    Candidate lookup
        ↓
    Job lookup
        ↓
    Verified qualifications + requisition requirements
        ↓
    Job-related AI evaluation
        ↓
    Recruiter review
        ↓
    Save the reviewed score and summary
        ↓
    Candidate Pipeline refresh
    ```

    > **Note:** This lab screens one candidate at a time. Treat **Screen All Candidates** as a later enhancement with separate controls, monitoring, and error handling.

## Summary

You created a CV Screening Agent with three On-Demand tools, displayed its output in Candidate Pipeline, protected the entry point, and screened one candidate through the native AI Assistant.

You may now **proceed to the next lab**.

## Learn More - Useful Links

- [Adding Interactivity to Pages](https://docs.oracle.com/en/database/oracle/apex/26.1/apxdc/adding-interactivity-pages.html)
- [Including Generative AI in Applications](https://docs.oracle.com/en/database/oracle/apex/26.1/htmdb/including-generative-ai-in-applications.html)
- [End User's Guide, Interactive Reports](https://docs.oracle.com/en/database/oracle/apex/26.1/aeeug/oracle-apex-end-users-guide.pdf)

## Acknowledgements

- **Author** - Shanmukh Kornana, Principal Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026
