USE life_insurance_co_li_boyd;
-- Inserting mock data into the Department table
INSERT INTO Department (Department_Code, Department_Name, Mailbox_Number, Phone_Number, Department_Capacity) 
VALUES 
(101, 'Sales & Marketing', 123, 555123, 60),
(102, 'Compliance & Legal', 124, 55523, 40),
(103, 'Human Resource', 125, 55534, 50),
(104, 'Underwriting Claims', 126, 55545, 70),
(105, 'Customer Services', 127, 55556, 75),
(106, 'Policy', 128, 55567, 65),
(107, 'Risk Management', 129, 55578, 55),
(108, 'Finance & Accounting', 130, 55589, 80),
(109, 'Product Development', 131, 55590, 45),
(110, 'Actuarial & IT', 132, 55501, 15);

-- Inserting mock data into the Employees table
INSERT INTO Employees (Employee_Number, Employee_Title, Employee_First, Employee_Last, Email, Phone, Address, Department_Code)
VALUES 
(1001, 'Manager', 'John', 'Doe', 'john.doe@example.com', '5551112233', '123 Main St, City', 101),
(1002, 'Analyst', 'Jane', 'Smith', 'jane.smith@example.com', '5552223344', '456 Elm St, Town', 102),
(1003, 'HR Specialist', 'Michael', 'Johnson', 'michael.johnson@example.com', '5553334455', '789 Oak St, Village', 103),
(1004, 'Claims Adjuster', 'Emily', 'Brown', 'emily.brown@example.com', '5554445566', '321 Pine St, Hamlet', 104),
(1005, 'Customer Service Representative', 'David', 'Wilson', 'david.wilson@example.com', '5555556677', '654 Cedar St, Suburb', 105),
(1006, 'Policy Administrator', 'Sarah', 'Martinez', 'sarah.martinez@example.com', '5556667788', '987 Maple St, County', 106),
(1007, 'Risk Analyst', 'Chris', 'Taylor', 'chris.taylor@example.com', '5557778899', '159 Birch St, Borough', 107),
(1008, 'Accountant', 'Amanda', 'Garcia', 'amanda.garcia@example.com', '5558889900', '753 Walnut St, District', 108),
(1009, 'Product Developer', 'Kevin', 'Rodriguez', 'kevin.rodriguez@example.com', '5559990011', '357 Spruce St, Township', 109),
(1010, 'IT Specialist', 'Laura', 'Lopez', 'laura.lopez@example.com', '5550001122', '852 Ash St, Municipality', 110);

-- Inserting mock data into the Projects table
INSERT INTO Projects (Project_Team_ID, Project_Name, Project_Description, Project_Start_Date, Project_End_Date, Business_Issue, Employee_Number)
VALUES 
(2001, 'Marketing Campaign Launch', 'Launching a new marketing campaign', '2024-05-01', '2024-06-30', 'Increase brand awareness', 1001),
(2002, 'Compliance Audit Preparation', 'Preparing for compliance audits', '2024-05-05', '2024-05-31', 'Ensure regulatory compliance', 1002),
(2003, 'HR Training Program Development', 'Developing a training program', '2024-05-10', '2024-07-15', 'Employee skill enhancement', 1003),
(2004, 'Claims Processing Automation', 'Automating claims processing', '2024-05-15', '2024-08-31', 'Streamline claims handling', 1004),
(2005, 'Customer Feedback Analysis', 'Analyzing customer feedback', '2024-05-20', '2024-06-30', 'Improve customer satisfaction', 1005);

-- Inserting mock data into the Device_Information table
INSERT INTO Device_Information (Device_ID, Brand_Name, Model_Number, Device_Value, Operating_System, Device_Version, MAC_Address, SID, Apple_ID, Screen_Lock_Enabled, Bitlocker_Encryption_Enabled)
VALUES 
(3001, 'Dell', 123456, 899.99, 'Windows', '10', '00-1A-2B-3C-4D-5E', NULL, NULL, 'Enabled', 'Enabled'),
(3002, 'HP', 789012, 1099.99, 'Windows', '11', '00-2B-3C-4D-5E-6F', NULL, NULL, 'Enabled', 'Enabled'),
(3003, 'Lenovo', 345678, 799.99, 'Windows', '10', '00-3C-4D-5E-6F-7G', NULL, NULL, 'Enabled', 'Enabled'),
(3004, 'Apple', NULL, 1299.99, 'iOS', '15.3', NULL, 'A1234567', 'apple@example.com', 'Enabled', 'Enabled'),
(3005, 'Samsung', NULL, 899.99, 'Android', '12', NULL, 'S9876543', NULL, 'Enabled', 'Enabled'),
(3006, 'Microsoft', 567890, 799.99, 'Windows', '10', '00-4D-5E-6F-7G-8H', NULL, NULL, 'Enabled', 'Enabled'),
(3007, 'Apple', NULL, 1499.99, 'iOS', '15.3', NULL, 'A7654321', 'iphone@example.com', 'Enabled', 'Enabled'),
(3008, 'Samsung', NULL, 1099.99, 'Android', '12', NULL, 'S5432167', NULL, 'Enabled', 'Enabled'),
(3009, 'Microsoft', 678901, 999.99, 'Windows', '11', '00-5E-6F-7G-8H-9I', NULL, NULL, 'Enabled', 'Enabled'),
(3010, 'Apple', NULL, 1799.99, 'iOS', '15.3', NULL, 'A2468101', 'ipad@example.com', 'Enabled', 'Enabled');

-- Inserting mock data into the Device_Registration table
INSERT INTO Device_Registration (Identification_Number, Registration_Date, Device_Type, Device_Status, Employee_Number, Device_ID)
VALUES 
(4001, '2024-04-01', 'Desktop Systems', 'Pending', 1001, 3001),
(4002, '2024-04-02', 'Desktop Systems', 'Pending', 1002, 3002),
(4003, '2024-04-03', 'Desktop Systems', 'Pending', 1003, 3003),
(4004, '2024-04-04', 'Mobile Devices', 'Pending', 1004, 3004),
(4005, '2024-04-05', 'Mobile Devices', 'Pending', 1005, 3005),
(4006, '2024-04-06', 'Desktop Systems', 'Pending', 1006, 3006),
(4007, '2024-04-07', 'Mobile Devices', 'Pending', 1007, 3007),
(4008, '2024-04-08', 'Mobile Devices', 'Pending', 1008, 3008),
(4009, '2024-04-09', 'Desktop Systems', 'Pending', 1009, 3009),
(4010, '2024-04-10', 'Mobile Devices', 'Pending', 1010, 3010);

-- Inserting mock data into the Supervisor table
INSERT INTO Supervisor (Supervisor_ID, Policy_Number, Group_Policy, Approval_Date, Department_Code, Identification_Number)
VALUES 
(5001, 10001, 'SalesGroupPolicy', '2024-04-10', 101, 4001),
(5002, 10002, 'ComplianceGroupPolicy', '2024-04-11', 102, 4002),
(5003, 10003, 'HRGroupPolicy', '2024-04-12', 103, 4003),
(5004, 10004, 'ClaimsGroupPolicy', '2024-04-13', 104, 4004),
(5005, 10005, 'CustomerServiceGroupPolicy', '2024-04-14', 105, 4005),
(5006, 10006, 'PolicyAdministrationGroupPolicy', '2024-04-15', 106, 4006),
(5007, 10007, 'RiskManagementGroupPolicy', '2024-04-16', 107, 4007),
(5008, 10008, 'AccountingGroupPolicy', '2024-04-17', 108, 4008),
(5009, 10009, 'ProductDevelopmentGroupPolicy', '2024-04-18', 109, 4009),
(5010, 10010, 'ITGroupPolicy', '2024-04-19', 110, 4010);

-- Inserting mock data into the System_Administrator table
INSERT INTO System_Adminstrator (Adminstrator_ID, Activation_Date, Identification_Number)
VALUES 
(6001, '2024-04-20', 4001),
(6002, '2024-04-21', 4002),
(6003, '2024-04-22', 4003),
(6004, '2024-04-23', 4004),
(6005, '2024-04-24', 4005),
(6006, '2024-04-25', 4006),
(6007, '2024-04-26', 4007),
(6008, '2024-04-27', 4008),
(6009, '2024-04-28', 4009),
(6010, '2024-04-29', 4010);

-- Inserting mock data into the Services table
INSERT INTO Services (Service_ID, Service_Name, Permission_Status, Request_Date)
VALUES 
(7001, 'HR', 'Pending', '2024-05-01'),
(7002, 'Payroll', 'Pending', '2024-05-02'),
(7003, 'Personal Development', 'Pending', '2024-05-03'),
(7004, 'Training', 'Pending', '2024-05-04'),
(7005, 'HR', 'Pending', '2024-05-05');

-- Inserting mock data into the Service_Access table
INSERT INTO Service_Access (Access_ID, Approval_Date, Service_ID, Employee_Number)
VALUES 
(8001, '2024-05-06', 7001, 1003),
(8002, '2024-05-07', 7002, 1008),
(8003, '2024-05-08', 7003, 1009),
(8004, '2024-05-09', 7004, 1004),
(8005, '2024-05-10', 7005, 1010);

