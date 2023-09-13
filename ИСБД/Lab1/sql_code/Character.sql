-- Table: s333219.Character

-- DROP TABLE IF EXISTS s333219."Character";

CREATE TABLE IF NOT EXISTS s333219."Character"
(
    "Character_Id " integer NOT NULL,
    "Character_Name" character varying(60),
    "Weight" integer,
    "Height" integer,
    "Genus" character varying(60),
    "Job" character varying(30),
    "Planet_Id" integer NOT NULL,
    "Gender" character varying(10),
    "Passport" character(10) NOT NULL,
    CONSTRAINT "Character_pkey" PRIMARY KEY ("Character_Id"),
    CONSTRAINT "Planet_Id_FK" FOREIGN KEY ("Planet_Id")
        REFERENCES s333219."Planet" ("Planet_Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s333219."Character"
    OWNER to s333219;