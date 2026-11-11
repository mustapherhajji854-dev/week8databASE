
-- =========================================================
-- WEEK 8 ASSIGNMENT: MYSQL DATABASE BACKUP AND RESTORE
-- Database: sales
-- Student: Your Name
-- =========================================================


-- =========================================================
-- QUESTION 1: BACKUP A SINGLE DATABASE
-- =========================================================

-- Objective:
-- Create a backup of the sales database using mysqldump.
-- This backup includes database structure and data.

-- Run this command in Windows CMD or PowerShell:
-- mysqldump -u root -p sales > sales_backup.sql

-- Explanation:
-- mysqldump: MySQL backup utility.
-- -u root: Connect using the root username.
-- -p: Request the MySQL password.
-- sales: Database to back up.
-- sales_backup.sql: Output backup file.


-- =========================================================
-- QUESTION 2: BACKUP ALL DATABASES
-- =========================================================

-- Objective:
-- Create a backup of every database on the MySQL server.

-- Run this command in Windows CMD or PowerShell:
-- mysqldump -u root -p --all-databases > all_databases_backup.sql

-- Explanation:
-- --all-databases: Backs up all databases.
-- all_databases_backup.sql: Stores the complete backup.
-- -u root -p: Uses the root account and requests a password.


-- =========================================================
-- QUESTION 3: CREATE A DATA-ONLY BACKUP
-- =========================================================

-- Objective:
-- Back up only the data in the sales database
-- without including table creation statements.

-- Run this command in Windows CMD or PowerShell:
-- mysqldump -u root -p --no-create-info sales > sales_data_only.sql

-- Explanation:
-- --no-create-info: Excludes CREATE TABLE statements.
-- sales: Specifies the database to back up.
-- sales_data_only.sql: Stores the data-only backup.


-- =========================================================
-- ADDITIONAL TASK: RESTORE DATABASE BACKUP
-- =========================================================

-- Objective:
-- Restore the sales database from its backup.

-- First create the database if it does not exist:
CREATE DATABASE IF NOT EXISTS sales;

-- Run this command in Windows CMD or PowerShell:
-- mysql -u root -p sales < sales_backup.sql


-- =========================================================
-- ADDITIONAL TASK: VERIFY DATABASE
-- =========================================================

-- Select the sales database:
USE sales;

-- Display all tables:
SHOW TABLES;

-- Check the database tables and their records.
-- Example (replace customers with an existing table):
-- SELECT * FROM customers;


-- =========================================================
-- END OF WEEK 8 ASSIGNMENT
-- =========================================================
