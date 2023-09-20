CREATE TABLE IF NOT EXISTS s333219."Analyse"
(
	"Satellite_Id" integer NOT NULL,
	"Probe_Id" integer NOT NULL,
	"Status" character varying(30),
	CONSTRAINT "Satellite_Id_FK" FOREIGN KEY ("Satellite_Id")
		REFERENCES s333219."Satellite" ("Satellite_Id"),
	CONSTRAINT "Probe_Id_FK" FOREIGN KEY ("Probe_Id")
		REFERENCES s333219."Probe" ("Probe_Id")
)