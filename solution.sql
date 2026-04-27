SELECT 
    LEFT(make_and_model, INSTR(make_and_model, ' ') - 1) AS Brand,
    COUNT(vehicles.vehicle_id) AS `Number of Vehicles`
FROM vehicles
INNER JOIN services 
    ON vehicles.vehicle_id = services.vehicle_id
GROUP BY LEFT(make_and_model, INSTR(make_and_model, ' ') - 1)
ORDER BY Brand;
