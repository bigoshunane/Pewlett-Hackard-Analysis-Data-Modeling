# SQL_Challenge_HM7

The aim of this project is to perform Data Modeling/Engineering and Analysis using postgresql and (Bonus) Data Testing and Validation via Python-Pandas library and SQL Alchemy given database of employees of the corporation called Pewlett Hackard from 1980s to 1990s in six CSV files, specifically;

1. To inspect the CSV files by sketching out their ERD tables via [http://www.quickdatabasediagrams.com]()

2. To use postgresql to create table schemata and queries to design tables to hold dataset and do analysis.

3. (Bonus) To do dataset testing and validation by developing python scripts connecting with SQL Alchemy. 


# 1. Data Modeling

To inspect and model the employee dataset a basic data modeling technique Entity-Relationship Diagrams (ERD) was used. By using this technique six employee database entities were identified namely employees, departments, salaries, titles, department managers and department employees. The attribute or the data type of the entities were presented and ERD was drawn to visualize the relationships between entities (primary key or foreign keys in the database). To read the detailed description of the employee dataset refer to image depicted below and for further reference the script to run in [http://www.quickdatabasediagrams.com]()
 is presented in the repository in EmployeeSQL folder in Data_Modeling as ERD.TEXT.

The ERD diagram:

![ERD](https://user-images.githubusercontent.com/84547558/155030195-5c6fad0f-3d42-4a26-afc5-476b56168119.JPG)



# 1.1. Data Engineering

By using the available information a table schemata for each of the six CSV files were created and the data types, primary keys, foreign keys, and constraints developed. The order of the table is based on the primary and foreign arrangements.

While importing each CSV files into the corresponding SQL tables created follow same order that the tables were created to avoid errors.

For further reference the scripts to create schema was presented in repository in folder name EmployeeSQL sub-folder SQL_Scrips as table_schema.sql.


# 2. Data Analysis

After having complete database Postgresql analysiss was perfomed with developed queries depending on questions presented and you can find query scripts developed in the repository in folder name EmployeeSQL in sub-folder SQL_Scripts as queries.sql. 

The analysis performed are presented as follows:

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

<img width="1034" alt="QUERY_1" src="https://user-images.githubusercontent.com/84547558/155031090-357a9bf4-da64-4b9d-abf0-ad53f2ee586f.PNG">

2. List first name, last name, and hire date for employees who were hired in 1986.

<img width="1029" alt="QUERY_2" src="https://user-images.githubusercontent.com/84547558/155031483-894c92a0-0aa4-43c1-9869-f70b85bab172.PNG">

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

<img width="1041" alt="QUERY_3" src="https://user-images.githubusercontent.com/84547558/155031497-e456255f-d043-4cd8-a9e0-d5bc792a3372.PNG">


4. List the department of each employee with the following information: employee number, last name, first name, and department name.

<img width="1045" alt="QUERY_4" src="https://user-images.githubusercontent.com/84547558/155031531-5522008c-2de8-4be9-9ebb-75be5ca10c45.PNG">


5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

<img width="1039" alt="QUERY_5" src="https://user-images.githubusercontent.com/84547558/155031548-5d2135c6-73fa-4ac3-adab-b46fc18540ce.PNG">

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

<img width="1036" alt="QUERY_6" src="https://user-images.githubusercontent.com/84547558/155031567-2dfd70b9-6eeb-48b4-af44-7c5927cafb2f.PNG">


7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

<img width="1036" alt="QUERY_7" src="https://user-images.githubusercontent.com/84547558/155031580-8cd56458-a2e4-4dba-9b07-46da7d381f30.PNG">


8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

<img width="1045" alt="QUERY_8" src="https://user-images.githubusercontent.com/84547558/155031587-24d9b8aa-96e2-4cf6-8234-afb5163fef88.PNG">


# 3. Bonus
As you examine the data, you are overcome with a creeping suspicion that the dataset is fake. You surmise that your boss handed you spurious data in order to test the data engineering skills of a new employee. To confirm your hunch, you decide to take the following steps to generate a visualization of the data, with which you will confront your boss:

1. Import the SQL database into Pandas.
2. Create a histogram to visualize the most common salary ranges for employees.

![fig1](https://user-images.githubusercontent.com/84547558/155031615-a78f5633-b464-482c-83dd-b19e4b367e3c.png)


3. Create a bar chart of average salary by title.


![fig2](https://user-images.githubusercontent.com/84547558/155031627-a0a6015d-a628-4ba2-92b4-7e3b38ba2b9e.png)



# 3.1. Epilogue
Evidence in hand, you march into your boss's office and present the visualization. With a sly grin, your boss thanks you for your work. On your way out of the office, you hear the words, "Search your ID number." You look down at your badge to see that your employee ID number is 499942.

![eplog](https://user-images.githubusercontent.com/84547558/155031664-ed6d8a62-fba9-4067-a320-7a51aecefb1e.jpg)






References
Mockaroo, LLC. (2021). Realistic Data Generator. https://www.mockaroo.com/

© 2021 Trilogy Education Services, LLC, a 2U, Inc. brand. Confidential and Proprietary. All Rights Reserved.
