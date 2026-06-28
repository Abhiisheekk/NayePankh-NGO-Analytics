create database Nayepankh;
use Nayepankh;


IF EXISTS(SELECT 1 FROM sys.databases WHERE name='Nayepankh')
BEGIN
    ALTER DATABASE Nayepankh SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
    DROP DATABASE Nayepankh
END;
GO
create schema feathers;