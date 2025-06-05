-- Creazione e selezione del database

CREATE DATABASE ToysGroup;
USE ToysGroup;

-- Creazione tabelle db secondo modello ER

CREATE TABLE Category (
CategoryID INT
, CategoryName VARCHAR(50)
, CONSTRAINT PK_Category PRIMARY KEY (CategoryID));

CREATE TABLE Product (
ProductID INT
, ProductName VARCHAR(100)
, Price DECIMAL(10,2)
, CategoryID INT
, CONSTRAINT PK_Product PRIMARY KEY (ProductID)
, CONSTRAINT FK_Product FOREIGN KEY (CategoryID)
REFERENCES Category (CategoryID));

CREATE TABLE Region (
RegionID INT
, RegionName VARCHAR(50)
, CONSTRAINT PK_Region PRIMARY KEY (RegionID));

CREATE TABLE State (
StateID INT
, StateName VARCHAR(50)
, RegionID INT
, CONSTRAINT PK_Region PRIMARY KEY (StateID)
, CONSTRAINT FK_Region FOREIGN KEY (RegionID)
REFERENCES Region (RegionID));

CREATE TABLE Customer (
CustomerID INT
, CustomerName VARCHAR(50)
, ShippingAddress VARCHAR(100)
, StateID INT
, CONSTRAINT PK_Customer PRIMARY KEY (CustomerID)
, CONSTRAINT FK_Customer FOREIGN KEY (StateID)
REFERENCES State (StateID));


CREATE TABLE Sales (
SalesOrderNumber VARCHAR(10)
, SalesOrderLineNumber INT	
, ProductID INT
, StateID INT
, CustomerID INT
, OrderDate DATE
, Quantity INT
, UnitPrice DECIMAL (10,2)
, SalesAmount DECIMAL (10,2)
, CONSTRAINT PK_Sales PRIMARY KEY (SalesOrderNumber,SalesOrderLineNumber)
, CONSTRAINT FK_Sales_Product FOREIGN KEY (ProductID)
REFERENCES Product (ProductID)
, CONSTRAINT FK_Sales_State FOREIGN KEY (StateID)
REFERENCES State (StateID)
, CONSTRAINT FK_Sales_Customer FOREIGN KEY (CustomerID)
REFERENCES Customer (CustomerID));

