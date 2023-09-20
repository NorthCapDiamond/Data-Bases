CREATE TABLE IF NOT EXISTS s333219."Cargo"
(
        "Rocket_Id" integer,
        "Spacecraft_Cargo_Id" integer,
        "Satellite_Cargo_Id" integer,
        "Probe_Cargo_Id" integer,
        "Spaceship_Cargo_Id" integer,

        CONSTRAINT "Rocket_Id_FK" FOREIGN KEY ("Rocket_Id")
                REFERENCES s333219."Rocket" ("Rocket_Id"),

        CONSTRAINT "Spacecraft_Cargo_Id_FK" FOREIGN KEY ("Spacecraft_Cargo_Id")
                REFERENCES s333219."Spacecraft" ("Spacecraft_Id"),

        CONSTRAINT "Satellite_Cargo_Id_FK" FOREIGN KEY ("Satellite_Cargo_Id")
                REFERENCES s333219."Satellite" ("Satellite_Id"),

        CONSTRAINT "Probe_Cargo_Id_FK" FOREIGN KEY ("Probe_Cargo_Id")
                REFERENCES s333219."Probe" ("Probe_Id"),

        CONSTRAINT "Spaceship_Cargo_Id_FK" FOREIGN KEY ("Spaceship_Cargo_Id")
                REFERENCES s333219."Spaceship" ("Spaceship_Id")

)