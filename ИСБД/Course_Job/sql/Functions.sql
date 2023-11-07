-- create fucntion for calculating the age

-- If func already exists, get rid of it
drop function if exists calculate_age;
create function calculate_age(date_of_birth date) returns integer AS $$
declare 
    age integer;
begin
    age := extract(year from current_date) - extract(year from date_of_birth);

    IF (extract(month from current_date) < extract(month from date_of_birth)) or
       (extract(month from current_date) = extract(month from date_of_birth) and
        extract(DAY from current_date) < extract(DAY from date_of_birth)) then
        age := age - 1;
    end IF;

    return age;
end;
$$ LANGUAGE plpgsql;



-- test
select calculate_age('1990-05-15') as age;


