CREATE TABLE Vehicle(
veh_number int NOT NULL PRIMARY KEY,
veh_type varchar(50),
veh_brand varchar(50),
veh_year int,
veh_mileage varchar(50),
veh_owner varchar(50),
veh_photo varchar(50),
veh_price int,
);
SELECT * FROM Vehicle;
INSERT INTO Vehicle VALUES 
(1,'Van','TATA', '2001','80km','Aayush','C:\Users\acer\Desktop\pexels-mikebirdy-116675.jpg','220000');
UPDATE Vehicle 
SET veh_price+=10000;
DELETE FROM Vehicle
WHERE veh_brand LIKE '_O%';
SELECT SUM(veh_price) AS total_price from Vehicle;
CREATE VIEW vehicle_view AS
SELECT* FROM Vehicle;
ALTER TABLE Vehicle ALTER  COLUMN 
veh_year datetime;
SELECT * FROM Vehicle
ORDER BY 
veh_brand DESC, veh_mileage DESC;
