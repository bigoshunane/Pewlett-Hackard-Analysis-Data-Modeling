# SQL_Challenge_HM7

The aim of this project is to perform Data Modeling/Engineering and Analysis using postgresql and Data Testing and Validation via Python and SQL Alchemy given

database of employees of the corporation called Pewlett Hackard from 1980s to 1990s in six CSV files, specifically;

1. To inspect the CSV files by sketching out their ERD tables via [http://www.quickdatabasediagrams.com]

2. To use postgreql to create table schemata and queries to design tables to hold dataset and do analysis

3. To do dataset testing and validation by developing python scripts connecting with SQL Alchemy. 


# 1. Data Modeling

To inspect and model the employee dataset a basic data modeling technique Entity-Relationship Diagrams (ERD) was used. By using this technique six employee database entities were identified namely employees, departments, salaries, titles, department managers and department employees. The attribute or the data type of the entities were presented and ERD was drawn to visualize the relationships between entities (primary key or foreign keys in the database). To read the detailed description of the employee database refer to image depicted below and for further reference the script to run in [http://www.quickdatabasediagrams.com]
 is presented in the repository in Employee_DB folder in Data_Modeling as ERD.TEXT. 

The ERD diagram:

![ERD](https://user-images.githubusercontent.com/84547558/155030195-5c6fad0f-3d42-4a26-afc5-476b56168119.JPG)





# 2. Data Engineering

By using the available information a table schemata for each of the six CSV files were created and the data types, primary keys, foreign keys, and constraints developed. The order of the table is based on the primary and foreign arrangements.

While importing each CSV files into the corresponding SQL tables created follow same order that the tables were created to avoid errors.

For further reference the scripts to create schema was presented in repository in folder name SQL_Scrips as table_schema.sql.


