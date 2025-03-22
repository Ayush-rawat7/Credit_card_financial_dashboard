-- Create the table to store credit card details
CREATE TABLE cc_detail (
    Client_Num INT,  -- Client number
    Card_Category VARCHAR(20),  -- Category of the credit card
    Annual_Fees INT,  -- Annual fees for the credit card
    Activation_30_Days INT,  -- Activation status within 30 days
    Customer_Acq_Cost INT,  -- Cost to acquire the customer
    Week_Start_Date DATE,  -- Start date of the week
    Week_Num VARCHAR(20),  -- Week number
    Qtr VARCHAR(20),  -- Quarter of the year
    current_year INT,  -- Current year
    Credit_Limit DECIMAL(10,2),  -- Credit limit of the card
    Total_Revolving_Bal INT,  -- Total revolving balance
    Total_Trans_Amt INT,  -- Total transaction amount
    Total_Trans_Vol INT,  -- Total transaction volume
    Avg_Utilization_Ratio DECIMAL(10,3),  -- Average utilization ratio
    Use_Chip VARCHAR(10),  -- Chip usage status
    Exp_Type VARCHAR(50),  -- Expense type
    Interest_Earned DECIMAL(10,3),  -- Interest earned
    Delinquent_Acc VARCHAR(5)  -- Delinquent account status
);

-- Create the table to store customer details
CREATE TABLE cust_detail (
    Client_Num INT,  -- Client number
    Customer_Age INT,  -- Age of the customer
    Gender VARCHAR(5),  -- Gender of the customer
    Dependent_Count INT,  -- Number of dependents
    Education_Level VARCHAR(50),  -- Education level of the customer
    Marital_Status VARCHAR(20),  -- Marital status of the customer
    state_cd VARCHAR(50),  -- State code
    Zipcode VARCHAR(20),  -- Zip code
    Car_Owner VARCHAR(5),  -- Car ownership status
    House_Owner VARCHAR(5),  -- House ownership status
    Personal_loan VARCHAR(5),  -- Personal loan status
    contact VARCHAR(50),  -- Contact information
    Customer_Job VARCHAR(50),  -- Job of the customer
    Income INT,  -- Income of the customer
    Cust_Satisfaction_Score INT  -- Customer satisfaction score
);

-- Set the date style to Day-Month-Year
SET datestyle = 'DMY';

-- Copy data from CSV file to cc_detail table
COPY cc_detail
FROM 'E:\MBA PROGRAM\PROs\Power BI\Credit Card and Customers\credit_card.csv'
DELIMITER ','
CSV HEADER;

-- Select all records from cc_detail table
SELECT * FROM cc_detail;

-- Copy data from CSV file to cust_detail table
COPY cust_detail
FROM 'E:\MBA PROGRAM\PROs\Power BI\Credit Card and Customers\customer.csv'
DELIMITER ','
CSV HEADER;

-- Select all records from cust_detail table
SELECT * FROM cust_detail;

-- Set the date style to Day-Month-Year
SET datestyle = 'DMY';

-- Copy additional data from another CSV file to cc_detail table
COPY cc_detail
FROM 'E:\MBA PROGRAM\PROs\Power BI\Credit Card and Customers\cc_add.csv'
DELIMITER ','
CSV HEADER;

-- Copy additional data from another CSV file to cust_detail table
COPY cust_detail
FROM 'E:\MBA PROGRAM\PROs\Power BI\Credit Card and Customers\cust_add.csv'
DELIMITER ','
CSV HEADER;
