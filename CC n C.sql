--To import csv file of credit card details
SELECT *FROM CC_DETAIL
SET datestyle = 'DMY';
COPY cc_detail
from 'E:\MBA PROGRAM\PROs\Power BI\Credit Card and Customers\credit_card.csv'
delimiter ','
csv header

--TO import csv file containing customer details
SELECT *FROM Cust_DETAIL
COPY cust_detail
from 'E:\MBA PROGRAM\PROs\Power BI\Credit Card and Customers\customer.csv'
delimiter ','
csv header