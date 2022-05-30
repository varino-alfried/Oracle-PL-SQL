--QUERY 1

Select distinct machine.name AS MachineName, sensor.name AS SensorName
From device sensor join device machine 
on machine . Id =sensor . ParentDeviceId
ORDER BY machine.name

--QUERY 2

  Select D.Name As DeviceName , 
       S.Name As SpecsName , 
       Value
From Device D
join Specs S
ON SpecID = S.ID

--QUERY 3

SELECT D1.Name As SensorName,
D2.name As MachineName
From Device D1
JOIN Device D2
ON D1.ParentDeviceID=D2.ID
Group by D1.Name,D2.Name
Having count(D1.Specid)=1

--QUERY 4

select ID AS IntersectedSpecsID from specs
  intersect
select SpecID from Device


--QUERY 5

SELECT S.name AS SpecsName,count(*) AS NumOfSensors FROM Device D JOIN Specs S ON SpecID = S.ID
Where D.Type = 'Sensor'
GROUP BY S.name
ORDER BY S.NAME


