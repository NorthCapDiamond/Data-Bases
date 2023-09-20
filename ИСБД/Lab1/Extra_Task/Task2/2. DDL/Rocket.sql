CREATE TABLE IF NOT EXISTS s333219."Rocket"
(
	"Rocket_Id" integer NOT NULL,
	"Name" character varying(10) NOT NULL,
	"Mass" integer NOT NULL,
	"Length" integer NOT NULL,
	"Diameter" integer NOT NULL,
	"Engine_Power" integer NOT NULL,
	"Max_Speed" integer,
	"Cargo_Id" integer NOT NULL,
	CONSTRAINT "Rocket_PK" PRIMARY KEY ("Rocket_Id")
)