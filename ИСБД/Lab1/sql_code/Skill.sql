-- Table: s333219.Skill

-- DROP TABLE IF EXISTS s333219."Skill";

CREATE TABLE IF NOT EXISTS s333219."Skill"
(
    "Skill_Id" integer NOT NULL,
    "Skill_Description" character varying(256) NOT NULL,
    CONSTRAINT "Skill_pkey" PRIMARY KEY ("Skill_Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s333219."Skill"
    OWNER to s333219;