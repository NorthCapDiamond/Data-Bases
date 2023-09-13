-- Table: s333219.Transfer_Way

-- DROP TABLE IF EXISTS s333219."Transfer_Way";

CREATE TABLE IF NOT EXISTS s333219."Transfer_Way"
(
    "Planet_Id" integer NOT NULL,
    "Vehicle_Id" integer NOT NULL,
    "Property_Type" character varying(7),
    CONSTRAINT "Planet_Id_FK" FOREIGN KEY ("Planet_Id")
        REFERENCES s333219."Planet" ("Planet_Id"),
    CONSTRAINT "Vehicle_Id_FK" FOREIGN KEY ("Vehicle_Id")
        REFERENCES s333219."Vehicle" ("Vehicle_Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s333219."Transfer_Way"
    OWNER to s333219;