-- Table: s333219.Planet

-- DROP TABLE IF EXISTS s333219."Planet";

CREATE TABLE IF NOT EXISTS s333219."Planet"
(
    "Planet_Id" integer NOT NULL,
    "Progress" character varying(30),
    "Type" character varying(30),
    CONSTRAINT "Planet_pkey" PRIMARY KEY ("Planet_Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s333219."Planet"
    OWNER to s333219;