Script Purpose: This script creates a new database named 'DataWarehouse' after checking if it already exists.
  If the database exists, it is dropped and recreated. The script then sets up 3 schemas within the database; bronze, silver, and gold

USE master;
GO
  IF EXISTS (Select 1 From sys.databases WHERE NAME = 'DataWarehouse')
BEGIN
  Alter Database DataWarehouse SET Single_User With Rollback Immediate;
Drop Database DataWarehouse;
END;
GO
-- Create the 'DataWarehouse' database
CREATE DATABASE DataWarehouse;
USE DataWarehouse;

Create schema bronze;
GO
Create schema silver;
GO
Create schema gold;
GO
