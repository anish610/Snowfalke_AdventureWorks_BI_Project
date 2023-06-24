--Create Calender Table
Create or replace table ADVENTUREWORKS.ADVENTURE.Calendar (
    ID INT,
    Date DATE,
    DayNumberOfWeek INT,
    DayName VARCHAR(20),
    MonthName VARCHAR(20),
    MonthNumberOfYear INT,
    DayNumberOfYear INT,
    WeekNumberOfYear INT,
    CalendarQuarter INT,
    CalendarYear INT,
    FiscalYear INT,
    FiscalSemester INT,
    FiscalQuarter INT,
    FinMonthNumberOfYear INT,
    DayNumberOfMonth INT,
    Period VARCHAR(10),
    MonthID INT
);

-- Products Table
CREATE or replace  TABLE ADVENTUREWORKS.ADVENTURE.Products (
    ProductKey INT,
    ProductSubcategoryKey INT,
    ProductName VARCHAR(500),
    StandardCost DECIMAL(10,2),
    Color VARCHAR(20),
    SafetyStockLevel INT,
    ListPrice DECIMAL(10,2),
    Size VARCHAR(10),
    SizeRange VARCHAR(20),
    Weight DECIMAL(10,2),
    DaysToManufacture INT,
    ProductLine VARCHAR(20),
    DealerPrice DECIMAL(10,2),
    Class VARCHAR(20),
    ModelName VARCHAR(50),
    Description VARCHAR(1000),
    Status VARCHAR(20),
    SubCategory VARCHAR(50),
    Category VARCHAR(50),
    StartDate DATE,
    EndDate DATE
);

-- Sales Table
CREATE or replace TABLE ADVENTUREWORKS.ADVENTURE.Sales (
    OrderDate DATE,
    OrderDateKey INT,
    ProductKey INT,
    CustomerKey INT,
    SalesTerritoryKey INT,
    SalesOrderNumber VARCHAR(20),
    ShipDate DATE,
    SalesOrderLineNumber INT,
    OrderQuantity INT,
    UnitPrice DECIMAL(10,2),
    ExtendedAmount DECIMAL(10,2),
    UnitPriceDiscountPct DECIMAL(5,2),
    DiscountAmount DECIMAL(10,2),
    ProductStandardCost DECIMAL(10,2),
    TotalProductCost DECIMAL(10,2),
    SalesAmount DECIMAL(10,2),
    TaxAmt DECIMAL(10,2),
    Freight DECIMAL(10,2),
    RegionMonthID VARCHAR(100)
);


--Customers Table
CREATE TABLE ADVENTUREWORKS.ADVENTURE.Customers (
    CustomerKey INT,
    GeographyKey INT,
    Name VARCHAR(50),
    BirthDate DATE,
    MaritalStatus VARCHAR(10),
    Gender VARCHAR(10),
    YearlyIncome DECIMAL(10,2),
    NumberChildrenAtHome INT,
    Occupation VARCHAR(20),
    HouseOwnerFlag BOOLEAN,
    NumberCarsOwned INT,
    AddressLine1 VARCHAR(100),
    AddressLine2 VARCHAR(100),
    Phone VARCHAR(20),
    DateFirstPurchase DATE
);

--BudgetPeriod
CREATE or replace table ADVENTUREWORKS.ADVENTURE.BudgetPeriod (
    CalendarYear INT,
    MonthName VARCHAR(20),
    MonthNumber INT,
    Period INT
);

CREATE TABLE ADVENTUREWORKS.ADVENTURE.Budget (
    Category VARCHAR(50),
    Budget DECIMAL(10,2),
    Period VARCHAR(10)
);

--Territory
CREATE or replace Table ADVENTUREWORKS.ADVENTURE.Territory (
    TerritoryKey INT,
    Region VARCHAR(50),
    Country VARCHAR(50),
    Groups VARCHAR(50)
    );