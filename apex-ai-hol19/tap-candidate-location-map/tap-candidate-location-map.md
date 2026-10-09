# Lab 5: Create a TAP Candidate Location Map

## Introduction

Add latitude and longitude data to candidates and use the native APEX Map page to display one point for each candidate location.

Estimated Time: 5 minutes

### Objectives

In this lab, you will:

- Add candidate location columns.
- Create a Map page using candidate coordinates.
- Configure point geometry and tooltips.

## Task 1: Prepare candidate location data

1. Navigate to **SQL Workshop > SQL Commands** and run the following SQL Query to add `GEO_LAT` and `GEO_LNG` to `TMS_CANDIDATES`.

    ```sql
    <copy>
    ALTER TABLE tms_candidates ADD (
    geo_lat NUMBER(9,6),
    geo_lng NUMBER(9,6)
    );
    </copy>
    ```

    ![SQL Commands showing the completed GEO_LAT and GEO_LNG column addition.](images/add-candidate-location-columns.png ' ')

2. Populate existing candidates with sample latitude and longitude values by running the following SQL command:
    ```sql
    <copy>
    MERGE INTO tms_candidates c
    USING (
        SELECT
            candidate_id,
            ROW_NUMBER() OVER (ORDER BY candidate_id) AS rn
        FROM tms_candidates
    ) x
    ON (c.candidate_id = x.candidate_id)
    WHEN MATCHED THEN
        UPDATE SET
            c.geo_lat =
                CASE MOD(x.rn - 1, 8)
                    WHEN 0 THEN 37.774900
                    WHEN 1 THEN 40.712800
                    WHEN 2 THEN 34.052200
                    WHEN 3 THEN 41.878100
                    WHEN 4 THEN 47.606200
                    WHEN 5 THEN 30.267200
                    WHEN 6 THEN 39.739200
                    WHEN 7 THEN 42.360100
                END,
            c.geo_lng =
                CASE MOD(x.rn - 1, 8)
                    WHEN 0 THEN -122.419400
                    WHEN 1 THEN -74.006000
                    WHEN 2 THEN -118.243700
                    WHEN 3 THEN -87.629800
                    WHEN 4 THEN -122.332100
                    WHEN 5 THEN -97.743100
                    WHEN 6 THEN -104.990300
                    WHEN 7 THEN -71.058900
                END;
    </copy>
    ```

    ![Candidate table rows showing sample latitude and longitude values.](images/populate-candidate-coordinates.png ' ')

## Task 2: Create and configure the map

1. In TAP application, select **Create Page**.

    ![Create Map Page wizard configured for Candidate Locations under Recruitment.](images/create-page.png ' ')

2. Select **Map**.

    ![Create Map Page wizard configured for Candidate Locations under Recruitment.](images/create-map-page.png ' ')

3. In the Create Page dialog, enter or select the following:
    - Name: **Candidate Locations**
    - Source Type: SQL Query
    - Enter a SQL SELECT statement:
        ```sql
        <copy>
        SELECT
            candidate_id,
            first_name || ' ' || last_name AS candidate_name,
            current_stage,
            geo_lat,
            geo_lng
        FROM tms_candidates
        WHERE geo_lat IS NOT NULL
        AND geo_lng IS NOT NULL
        </copy>
        ```

    ![Create Map Page wizard configured for Candidate Locations under Recruitment.](images/create-candidate-locations-page1.png ' ')

    - Breadcrumb Parent Entry: **Recruitment (Page 0)**
    - Parent Navigation Menu Entry: **Recruitment**

    ![Create Map Page wizard configured for Candidate Locations under Recruitment.](images/create-candidate-locations-page2.png ' ')

3. Configure the Map layer by selecting the following:
    - Map Style: **Points** 
    - Geometry Column Type: **Two Numeric Columns**  
    - Longitude Column: **GEO_LNG**
    - Latitude Column: **GEO_LAT**'

    Create **Create Page**.

    ![Map layer settings with point geometry and GEO_LNG and GEO_LAT mappings.](images/configure-candidate-map-layer.png ' ')

4. Under Layers, select **Candidate Locations** and set Primary Key Column to **CANDIDATE_ID**. 
    ![Map primary key for candidate points.](images/configure-primary-key.png ' ')

5. Under tooltip, toggle the **Advanced Formatting** to **ON**. For HTML Expression, enter the following:
    ```
    <copy>
    <strong>&CANDIDATE_NAME.</strong><br>
    Stage: &CURRENT_STAGE.
    </copy>
    ```

    ![Map tooltip and initial-position settings for candidate points.](images/configure-candidate-map-tooltip.png ' ')

5. Save and run the page. Confirm that **Recruitment > Candidate Locations** shows every candidate with coordinates and exposes their name and stage in the point tooltip.

    ![Candidate Locations runtime map showing candidate points and a tooltip.](images/verify-candidate-location-map.png ' ')

## Acknowledgements

* **Author** - Apoorva Srinivas, Principal Product Manager; Roopesh Thokala, Principal Product Manager
* **Last Updated By/Date** - Apoorva Srinivas, Principal Product Manager, August 2026
