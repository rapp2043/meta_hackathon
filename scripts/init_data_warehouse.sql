/*
======================================================================
Create Data Warehouse and Schemas
======================================================================
Script Purpose:
	This script creates a new database named dwh_meta_hackathon after checking if it already exists.
	If the database exists, it is dropped and recreated. Additionally, the script sets up three schemas
	within the databhase: 'bronze', 'silver', and 'gold'.

WARNING:
	Running this script will drop the entire data warehouse database if it exists. 
	All data in the database will be permanently deleted. Proceed with caution
	and ensure you have proper backups before running this script. 
*/


USE master;
GO

-- Drop and recreate the data warehouse
IF EXISTS (SELECT 1 FROM sys.databases  WHERE name = 'dwh_meta_hackathon')
BEGIN
	ALTER DATABASE dwh_meta_hackathon SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
	DROP DATABASE dwh_meta_hackathon;
END
GO

-- Create the Hackathon Data Warehouse
CREATE DATABASE dwh_meta_hackathon;

-- Create the Data Warehouse Schemas
USE dwh_meta_hackathon;
GO

CREATE SCHEMA bronze;
GO
CREATE SCHEMA silver;
GO
CREATE SCHEMA gold;
GO
