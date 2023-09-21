/*
вывести имя персонажа, у которого вес больше 
65 килограмм, описание скиллов которого содержит 
больше 10 символов. При этом, персонаж может лететь на 
Венеру или Юпитер, и только на транспорте, тип которого 
начинается с "К" и имеет размер в точности от 11 до 109 метров.
Если таких персонажей несколько, то отсортируйте их по длине имени в убывающем порядке.

*/

select "Character_Name" from "Character" 
join "Character_Skill" on "Character"."Character_Id" = "Character_Skill"."Character_Id"
join "Skill" on "Character_Skill"."Skill_Id" = "Skill"."Skill_Id"
join "Planet" on "Character"."Planet_Id" = "Planet"."Planet_Id"
join "Transfer_Way" on "Planet"."Planet_Id" = "Transfer_Way"."Planet_Id"
join "Vehicle" on "Transfer_Way"."Vehicle_Id" = "Vehicle"."Vehicle_Id"
where "Weight" > 65 and length("Skill_Description") > 10 and 
("Planet_Name" = 'Venus' or "Planet_Name" = 'Jupiter') and
"Vehicle_Name" like 'K%' and "Vehicle_Size" between 11 and 109
order by length("Character_Name");






