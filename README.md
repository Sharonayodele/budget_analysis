# Data Analysis Project: Budget Analysis Using Excel, SQL, Power BI
![Budget Analysis Using Excel, SQL, Power BI](assets/images/budget1.jpg)

# Table of content

- [Objective](#objective)
- [Workflow](#Workflow)
- [Design](#design)
    - [Tools](#tools)
- [Development](#development)
    - [Pseudocode](#pseudocode)
    - [Data Exploration](#data-exploration)
    - [Data Cleaning](#data-cleaning)
    - [Data Transformation](#data-transformation)
    - [Create the SQL view](#create-the-sql-view)
- [Data Quality Test](#data-quality-test)
- [Visualization](#visualization)
  - [Results](#results)
  - [DAX Measures](#dax-measures)
- [Analysis](#analysis)
  - [Findings](#findings)
  - [Validation](#validation)
  - [Discovery](#discovery)
- [Recommendation](#recommendation)
  - [Potential ROI](#potential-roi)
  - [Action Plan](#action-plan)

## Objectives 
**Key point**
Sophia the HR manager wants to understand the company's expenditure to know which departments are over budget or underperforming. Which will help her effectively manage the company’s resources.

The objectives of this project are as follows:
- To visualize the project and department expenditures.
- Identify the budget performance for each department: Which departments are at risk of being over budget or underperforming?
- Build an interactive dashboard to visualize the salary and budget distribution.


**End users**
- Primary User: Sophia(HR Manager)
- Secondary users: team leads and the various Heads of Departments

**User story**
As the HR manager, I want to assess the company's budget, expenditures, and project health for each department. But the data are stored in different tables which makes analysis tedious. So I need a visual representation of the data and a big table that contains all the important information from each table.

**Success criteria**
Sophia can
* Easily identify the departments that are over budget and underperforming
* Asses the salary distribution and project health
* Make informed decisions about the budget allocation 

## Workflow
1. Get the data
2. Load the data into SQL server
3. Data Exploration
4. Data Cleaning and Transformation
5. Perform data quality checks
6. Create the dashboards in Power BI
7. Generate the findings based on the insights
8. Write the documentation + recommendation
9. Publish the data to Github pages

## Designs
**Features/Criteria**
The dashboard should:
- List all the employees and their salaries
- Track the projects' costs and project health.
- Be user friendly and easy to sort/filter.

**Dashboard mockup**
Some of the data visuals that may be appropriate for answering our questions include:
1. Table
2. Treemap
3. Scorecards
4. Horizontal bar chart
    
### Tools 
| Tool | Purpose |
| ---- | ---- |
| Excel | Exploring the data |
| SQL Server | Cleaning, quality testing, and analyzing the data |
| Power BI | Visualizing the data via interactive dashboards |
| GitHub | Hosting the project documentation and version control |

## Development
1. **Get The Data**
The data was provided.

2. **Load the data into SQL server**
- Create a database
- Import flat file
- populate the database with the excel sheets

3. **Data Exploration**
This is the stage where you have a scan of what's in the data including errors, inconsistencies, corrupted characters, etc
Initial observations
* There are 6 different table including:
- Departments
- Employees
- Upcoming_projects
- Completed_projects
- Projects
- Project_assignments

* Some the columns we need are in different tables, so we need to join some of these tables to make a big table.And then drop the tables we don't need.

4. ** Data cleaning**
The aim is to refine our dataset to ensure it is structured and ready for analysis.
The cleaned data should meet the following criteria and constraints:
- Only relevant columns should be extracted.
- All data types should be appropriate for the contents of each column (e.g VARCHAR. INT)
- No column should contain null values, indicating complete data for all records.
Fortunately, the data is clean and structured with no null values. So we don’t need to spend any time cleaning.


## Data Transformation 

The major transformation to be done is joining the the tables

---SQL

-- big table
SELECT 
e.employee_id,
e.first_name,
e.last_name,
e.job_title,
e.salary,
d.Department_Name,
pa.project_id,
p.project_name,
p.status,
p.project_budget,
p.project_start_date,
p.project_end_date

FROM employees as e
LEFT JOIN departments as d
on e.department_id = d.Department_ID
JOIN project_assignments as pa
ON pa.employee_id= e.employee_id
JOIN project_status as p
ON p.project_id = pa.project_id
---

![Code snippet and results](assets/images/budget_analysis_big_table.PNG)


## Visualization

### Dashboard
![power bi dashboard of budget analysis](assets/dashboard/budget_analysis - Trim3.mp4)











