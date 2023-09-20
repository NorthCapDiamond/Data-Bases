CREATE TABLE IF NOT EXISTS s333219."Probe"
(
	"Probe_Id" integer NOT NULL,
	"Name" character varying(10) NOT NULL,
	"Memory" integer,
	"Mass" integer NOT NULL,
	"Analyse_Id" integer NOT NULL,
	CONSTRAINT "Probe_PK" PRIMARY KEY ("Probe_Id")
)