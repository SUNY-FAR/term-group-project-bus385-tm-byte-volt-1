-- Write your SQL query below:

SELECT 
    LEFT(Make_and_Model, POSITION(' ' IN Make_and_Model) - 1) AS Brand,
    COUNT(VEHICLES.Vehicle_ID) AS Number_of_Vehicles,

    COUNT(CASE WHEN Service_Type = 'Oil Change' THEN 1 END) AS Oil_Change,
    COUNT(CASE WHEN Service_Type = 'Brake Repair' THEN 1 END) AS Brake_Repair,
    COUNT(CASE WHEN Service_Type = 'Towing' THEN 1 END) AS Towing

FROM VEHICLES
JOIN SERVICES 
    ON VEHICLES.Vehicle_ID = SERVICES.Vehicle_ID

GROUP BY Brand
ORDER BY Brand;
