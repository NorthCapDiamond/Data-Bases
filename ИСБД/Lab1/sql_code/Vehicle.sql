-- Table: s333219.Vehicle

-- DROP TABLE IF EXISTS s333219."Vehicle";

CREATE TABLE IF NOT EXISTS s333219."Vehicle"
(
    "Vehicle_Id" integer NOT NULL,
    "Size" integer NOT NULL,
    "Type" character varying(30) NOT NULL,
    "Fuel_Type" character varying(30) NOT NULL,
    CONSTRAINT "Vehicle_pkey" PRIMARY KEY ("Vehicle_Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s333219."Vehicle"
    OWNER to s333219;