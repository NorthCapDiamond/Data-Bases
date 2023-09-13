-- Table: s333219.Character_Skill

-- DROP TABLE IF EXISTS s333219."Character_Skill";

CREATE TABLE IF NOT EXISTS s333219."Character_Skill"
(
    "Character_Id " integer NOT NULL,
    "Skill_Id" integer NOT NULL,
    "Skill_Level" character varying(10),
    CONSTRAINT "Character_Id_FK" FOREIGN KEY ("Character_Id ")
        REFERENCES s333219."Character" ("Character_Id "),
    CONSTRAINT "Skill_Id_FK" FOREIGN KEY ("Skill_Id")
        REFERENCES s333219."Skill" ("Skill_Id")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS s333219."Character_Skill"
    OWNER to s333219;