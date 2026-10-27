# Create a Page Using Natural Language

## Introduction

In this lab, you will use APEX Generative AI to create a cards page for the Talent Acquisition Portal from a natural-language prompt. You will review the generated recruiting metrics layout, create the page, and run it in Page Designer.

Estimated Lab Time: 5 minutes

### Objectives

In this lab, you will learn how to:

- Create the Cards page using Natural Language.

## Task 1: Create a Page Using Natural Language

In this task, you use Generative AI to create the Talent Acquisition Portal page. The cards page gives recruiters a high-level view of open requisitions, candidate activity, interviews, and pending offers.

1. Return to **App Builder** and navigate to the Page Designer Toolbar, hover over **+v** and select **Page**.

    ![Create page from the Jobs page](images/jobs-create-page-menu.png " ")

2. On the Create a Page page, select the **Generative AI** tab.

3. If prompted, review and accept the Generative AI terms. If you have already accepted them, the Generative AI conversation opens directly.

    ![Generative AI ready for a page description](images/generative-ai-terms-dialog.png " ")

4. Enter the following prompt and select the send icon:

    ```
    <copy>
    Create a page showing total open requisitions, candidates this week, interviews today, and offers pending as cards
    </copy>
    ```

    ![Enter the AI dashboard prompt](images/ai-dashboard-prompt-entered.png " ")

    This prompt asks APEX AI to create metric cards that summarize the recruiting pipeline.

5. Review the generated cards page and select **Create Page**.

    ![APEX AI page generation response](images/ai-dashboard-create-page-response.png " ")

6. Review the cards layout and attribute settings and select **Create Page**.

    ![Create the generated cards page](images/ai-dashboard-cards-layout-create-page.png " ")

7. In Page Designer, select **Save and Run**.

    ![Recruitment Metrics page in Page Designer](images/recruitment-metrics-page-designer.png " ")

8. Observe the generated cards page.

## Summary

In this lab, you used a natural-language prompt to generate and run a Recruitment Metrics cards page for the Talent Acquisition Portal.

- Asked APEX Generative AI to display open requisitions, candidates this week, interviews today, and pending offers.
- Reviewed the generated cards layout and page attributes.
- Created the page and ran it to view the recruiting metrics.

## Acknowledgements

- **Author** - Ankita Beri, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Roopesh Thokala, Principal Product Manager, October 2026