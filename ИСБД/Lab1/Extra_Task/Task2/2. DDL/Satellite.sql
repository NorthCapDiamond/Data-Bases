CREATE TABLE IF NOT EXISTS s333219."Satellite"
(
	"Satellite_Id" integer NOT NULL,
	"Name" character varying(10) NOT NULL,
	"Mass" integer NOT NULL,
	"Orbit" character varying(30),
	"Analyse_Id" integer NOT NULL,
	CONSTRAINT "Satellite_PK" PRIMARY KEY("Satellite_Id")
)