CREATE TABLE IF NOT EXISTS s333219."Space_Station"
(
        "Space_Station_Id" integer NOT NULL,
        "Name" character varying(10) NOT NULL,
        "Mass" integer NOT NULL,
        "Module_Count" integer,
        "Crew_Count" integer,
        "Main_Bus_Id" integer NOT NULL,
        CONSTRAINT "Space_Station_PK" PRIMARY KEY ("Space_Station_Id"),
        CONSTRAINT "Space_Station_FK" FOREIGN KEY ("Main_Bus_Id")
                REFERENCES s333219."Spaceship" ("Spaceship_Id")
)