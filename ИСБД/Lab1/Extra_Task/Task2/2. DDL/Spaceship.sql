CREATE TABLE IF NOT EXISTS s333219."Spaceship"
(
	"Spaceship_Id" integer NOT NULL,
	"Name" character varying(10) NOT NULL,
	"Mass" integer NOT NULL,
	"Passanger_Capacity" integer,
	"Payload_Capacity" integer,
	CONSTRAINT "Spaceship_PK" PRIMARY KEY ("Spaceship_Id")
)