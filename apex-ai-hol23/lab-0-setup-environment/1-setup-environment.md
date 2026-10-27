# Set Up the Environment

## Introduction

In this lab, you prepare your local machine with the core tools needed to enhance the TAP application.

Estimated Lab Time: 15 minutes

> **Note:** Use of an AI agent or LLM incurs additional costs and requires a separate commercial agreement with the provider.

### Objectives

In this lab, you will:

- Install Visual Studio Code on the local machine.
- Install the Codex and SQL Developer extensions required for APEX development.
- Configure SQLcl as an MCP server in Codex.

## Task 1: Install Visual Studio Code on Your Local Machine

1. Open the [Visual Studio Code download page](https://code.visualstudio.com/Download) in a web browser.

    ![Visual Studio Code download page highlighting platform options](images/vscode-download-page.png " ")

2. Download the installer for your operating system (Windows, macOS, or Linux).

    ![Visual Studio Code platform-specific installer options](images/vscode-select-installer.png " ")

3. Run the downloaded installer.

    Accept the default options to complete the installation.

4. Open **Visual Studio Code** and confirm that the welcome screen appears.

    ![Visual Studio Code first launch window with welcome screen](images/vscode-first-launch.png " ")

## Task 2: Install the Extensions

1. In **Visual Studio Code**, select **View** > **Extensions**.

    Search for **Codex**.

    ![Visual Studio Code Extensions view focused on search bar](images/vscode-open-extensions-view.png " ")

2. Select the **Codex** extension.

    Click **Install**.

3. Open **Codex** and select **Use API Key**.

    Enter your OpenAI API key.

    Click **OK**.

    ![Enter the API key in Codex](images/codex-set-api-key.png " ")

4. In **Extensions**, search for **Oracle SQL Developer for VS Code**.

    Select the extension.

    Click **Install**.

    ![Visual Studio Code Extensions view displaying SQL Developer extension listing](images/vscode-sql-developer-extension.png " ")

5. In **Oracle SQL Developer for VS Code**, add a database connection for the schema associated with your APEX workspace.

    ![Create a database connection in Oracle SQL Developer for VS Code](images/sql-developer-new-connection.png " ")

6. In **Extensions**, search for **Python**.

    Select the extension.

    Click **Install**.

    > **Note:** A coding agent may use Python for tasks such as offline syntax validation.

    ![Visual Studio Code Extensions view displaying Python extension listing](images/vscode-python-extension.png " ")

## Task 3: Configure the SQLcl MCP Server

1. Download [SQLcl](https://www.oracle.com/database/sqldeveloper/technologies/sqlcl/download/) to your local machine.

    ![SQLcl Download page](images/sqlcl-download.png " ")

    > **Note:** SQLcl requires a Java Runtime Environment (JRE) or Java Development Kit (JDK). Ensure that Java is installed and available in your system's `PATH` before using SQLcl.

2. In **Codex**, open **Codex Settings**.

    ![Codex settings](images/codex-settings.png " ")

3. In **Codex Settings**, select **MCP servers**.

    Click **Add server**.

    ![Add an MCP server in Codex Settings](images/add-mcp-server.png " ")

4. On the **Connect to a custom MCP** page, enter/select the following:

    - **Name:** **sqlcl**

    - **Command to launch:** Enter the full path to the SQLcl executable, `sqlcl/bin/sql`, on your machine.

    - **Arguments:** **-mcp**

5. Click **Save**.

    ![Configure the SQLcl MCP server command and arguments](images/sqlcl-mcp-settings.png " ")

## Acknowledgements

- **Author** - Ankita Beri, Senior Product Manager; Roopesh Thokala, Principal Product Manager
- **Last Updated By/Date** - Ankita Beri, Senior Product Manager, October 2026