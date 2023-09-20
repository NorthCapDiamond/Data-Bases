-- Let's add some Rockets:
INSERT INTO s333219."Rocket"(
	"Rocket_Id", "Name", "Mass", "Length", "Diameter", "Engine_Power", "Max_Speed", "Cargo_Id")
	VALUES (13, 'Apollo 13', 44, 111, 6, 160, 25181, 13), (1, 'Drobysh', 30, 150, 7, 170, 26000, 1), (2, 'Imaginary', 50, 100, 3, 100, 20000, 2), (3, 'Dropper', 10, 101, 4, 120, 22000, 3);

-- Let's add some Spaceships:
INSERT INTO s333219."Spaceship"(
	"Spaceship_Id", "Name", "Mass", "Passanger_Capacity", "Payload_Capacity")
	VALUES (1, 'Euro Track', 150, 100, 50), (2, 'Safety Car', 100, 10, 5);


-- 	Let's add some Space Stations: 
INSERT INTO s333219."Space_Station"(
	"Space_Station_Id", "Name", "Mass", "Module_Count", "Crew_Count", "Main_Bus_Id")
	VALUES (1, 'Genus', 440, 10, 20, 1), (2, 'Venus', 600, 15, 25, 2);


-- Let's add some Spacecrafts: 
INSERT INTO s333219."Spacecraft"(
	"Spacecraft_Id", "Name", "Mass")
	VALUES (1, 'SC1', 100), (2, 'SC2', 105);


-- Let's add some Probe:
INSERT INTO s333219."Probe"(
	"Probe_Id", "Name", "Memory", "Mass", "Analyse_Id")
	VALUES (1, 'Probe1', 1000, 1, 1), (2, 'Probe2', 1000, 1, 2);


-- Let's add some Satellites
INSERT INTO s333219."Satellite"(
	"Satellite_Id", "Name", "Mass", "Orbit", "Analyse_Id")
	VALUES (1, 'S1', 1, 'way1', 1), (2, 'S2', 1, 'way2', 2);


-- Let's create connections now:
-- Starting with Analyse
INSERT INTO s333219."Analyse"(
	"Satellite_Id", "Probe_Id", "Status")
	VALUES (1, 1, 'Ok'), (2, 2, 'Broken');


-- Adding Cargo

INSERT INTO s333219."Cargo"(
	"Rocket_Id", "Spacecraft_Cargo_Id", "Satellite_Cargo_Id", "Probe_Cargo_Id", "Spaceship_Cargo_Id")
	VALUES (1, NULL, 1, 1, NULL);


-- Check Data, For example, Rocket!
SELECT * FROM s333219."Rocket";
