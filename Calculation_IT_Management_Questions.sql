USE life_insurance_co_li_boyd;

-- Break down of BYOD Devices by type, make, model, and operating system. 
SELECT 
    DR.Device_Type,
    DI.Brand_Name,
    DI.Model_Number,
    DI.Operating_System,
    COUNT(*) AS Device_Count
FROM 
    Device_Registration DR
JOIN 
    Device_Information DI ON DR.Device_ID = DI.Device_ID
GROUP BY 
    DR.Device_Type,
    DI.Brand_Name,
    DI.Model_Number,
    DI.Operating_System;

-- What is the total cost of all BYODs is use and a cost breakdown of types and models 
SELECT 
    SUM(DI.Device_Value) AS Total_Cost,
    DR.Device_Type,
    DI.Brand_Name,
    DI.Model_Number,
    COUNT(*) AS Device_Count
FROM 
    Device_Registration DR
JOIN 
    Device_Information DI ON DR.Device_ID = DI.Device_ID
WHERE 
    DR.Device_Type = 'Desktop Systems'
GROUP BY 
    DR.Device_Type,
    DI.Brand_Name,
    DI.Model_Number;

-- What is the average cost each type of BYOD Device? 
SELECT 
    DR.Device_Type,
    AVG(DI.Device_Value) AS Average_Cost
FROM 
    Device_Registration DR
JOIN 
    Device_Information DI ON DR.Device_ID = DI.Device_ID
WHERE 
    DR.Device_Type = 'Desktop Systems'
GROUP BY 
    DR.Device_Type;

-- What is the average time between registration and approval? 
SELECT 
    AVG(DATEDIFF(S.Approval_Date, DR.Registration_Date)) AS Avg_Registration_to_Approval
FROM 
    supervisor S
JOIN 
    Device_Registration DR ON DR.Employee_Number = DR.Employee_Number;
    
    -- Average time from approval to activation and average time from registration to device? 
SELECT 
    AVG(DATEDIFF(SA.Activation_Date, S.Approval_Date)) AS Avg_Approval_to_Activation,
    AVG(DATEDIFF(SA.Activation_Date, DR.Registration_Date)) AS Avg_Registration_to_Activation
FROM 
    Device_Registration DR
JOIN 
    Supervisor S ON DR.Employee_Number = DR.Employee_Number
JOIN 
    System_Adminstrator SA ON DR.Employee_Number = DR.Employee_Number;

-- What type of device took and operating system took the longest in days to be activated? 
SELECT 
    DR.Device_Type,
    DI.Operating_System,
    DATEDIFF(SA.Activation_Date, S.Approval_Date) AS Activation_Duration
FROM 
    Device_Registration DR
JOIN 
    Supervisor S ON DR.Employee_Number = DR.Employee_Number
JOIN 
    Device_Information DI ON DR.Device_ID = DI.Device_ID
JOIN 
    System_Adminstrator SA ON DR.Employee_Number = DR.Employee_Number
ORDER BY 
    Activation_Duration DESC
LIMIT 1;

-- What are the minimum and maximum times for service delivery to activation?
SELECT 
    MIN(DATEDIFF(SA.Approval_Date, S.Request_Date)) AS Min_Service_Delivery_to_Activation,
    MAX(DATEDIFF(SA.Approval_Date, S.Request_Date)) AS Max_Service_Delivery_to_Activation
FROM 
    services S
JOIN 
    Service_Access SA ON S.Service_ID = SA.Service_ID;

    





    

