USE mydb;
CREATE VIEW Number_of_Instances_for_each_crime_type AS
	SELECT offence_descriptor AS "Types of Crimes",
		COUNT(report_id) AS "Number of Instances"
	FROM offence_code
	JOIN police_report
		USING(offence_code)
	GROUP BY offence_descriptor
	ORDER BY COUNT(report_id) DESC;

USE mydb;
CREATE OR REPLACE VIEW crimes_per_city AS
SELECT City, COUNT(i.Incidents_ID) AS Number_of_Crimes
FROM address a
JOIN incidents_address ia
		ON a.Address_ID = ia.Address_ID
			JOIN incidents i
				ON ia.Incidents_ID = i.Incidents_ID
WHERE City IN
	(SELECT City FROM address 
	WHERE Zipcode > 20800)
GROUP BY City
ORDER BY Number_of_Crimes DESC;

USE mydb;
CREATE VIEW total_offences_byPoliceDistrict AS
SELECT 
	pd.Police_District_Name,
    oc.Offence_Descriptor,
    COUNT(i.Incidents_ID) AS Total_offences
FROM incidents i
JOIN police_report pr
ON i.Report_ID =  pr.Report_ID
JOIN police_district pd
ON pd.Police_District_Number = pr.Police_District_Number
JOIN offence_code oc
ON pr.Offence_Code = oc.Offence_Code
GROUP BY 
    pd.Police_District_Name, oc.Offence_Descriptor
ORDER BY 
    Total_Offences DESC;
    
USE mydb;
CREATE VIEW Avg_District_Response_Time AS
SELECT Police_District_Name, AVG(DATEDIFF(Dispatch_Date, Start_Date))*24 AS Average_Hours
FROM police_district pd
	JOIN police_report pr
		ON pd.Police_District_Number = pr.Police_District_Number
	JOIN incidents i
		ON pr.Report_ID = i.Report_ID
GROUP BY Police_District_Name
HAVING COUNT(Incidents_ID) > 0;

USE mydb;
CREATE VIEW Residence_Crime_Incidence AS
SELECT address.*, place.Place_Descriptor
FROM address
JOIN place ON address.Place_ID = place.Place_ID
WHERE place.Place_Descriptor = 'Residence - Apartment/Condo'
   OR place.Place_Descriptor = 'Residence - Single Family'
   OR place.Place_Descriptor = 'Residence - Townhouse/Duplex'
   OR place.Place_Descriptor = 'Residence - Nursing Home'
   OR place.Place_Descriptor = 'Residence - Driveway'
   OR place.Place_Descriptor = 'Residence - Other'
ORDER BY place.Place_Descriptor DESC;
        
