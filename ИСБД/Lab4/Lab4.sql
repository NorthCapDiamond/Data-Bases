-- TASK1
explain analyse select Н_ЛЮДИ.ОТЧЕСТВО, Н_СЕССИЯ.ЧЛВК_ИД from Н_ЛЮДИ
inner join Н_СЕССИЯ on Н_ЛЮДИ.ИД = Н_СЕССИЯ.ЧЛВК_ИД
where Н_ЛЮДИ.ИМЯ = 'Ярослав'
        and Н_СЕССИЯ.ДАТА = '2002-01-04'::timestamp
        and Н_СЕССИЯ.ДАТА = '2004-01-17'::timestamp;

 -- Planning Time: 0.222 ms
 -- Execution Time: 0.016 ms


create index idx_name on Н_ЛЮДИ(ИМЯ) using(HASH);
create index idx_date on Н_СЕССИЯ(ДАТА) using(HASH);

explain analyse select Н_ЛЮДИ.ОТЧЕСТВО, Н_СЕССИЯ.ЧЛВК_ИД from Н_ЛЮДИ
inner join Н_СЕССИЯ on Н_ЛЮДИ.ИД = Н_СЕССИЯ.ЧЛВК_ИД
where Н_ЛЮДИ.ИМЯ = 'Ярослав'
        and Н_СЕССИЯ.ДАТА = '2002-01-04'::timestamp
        and Н_СЕССИЯ.ДАТА = '2004-01-17'::timestamp;

-- Impossible to check...




-- TASK2
explain analyse select Н_ЛЮДИ.ИМЯ, Н_ОБУЧЕНИЯ.ЧЛВК_ИД, Н_УЧЕНИКИ.ГРУППА from Н_ЛЮДИ
inner join Н_ОБУЧЕНИЯ on Н_ЛЮДИ.ИД = Н_ОБУЧЕНИЯ.ЧЛВК_ИД
inner join Н_УЧЕНИКИ on Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ОБУЧЕНИЯ.ЧЛВК_ИД
where Н_ЛЮДИ.ОТЧЕСТВО > 'Георгиевич'
     and Н_ОБУЧЕНИЯ.НЗК > '999080';


-- Planning Time: 0.764 ms
-- Execution Time: 1.306 ms

create index idx_third_name on Н_ЛЮДИ(ОТЧЕСТВО) using(BTREE);
create index idx_nzk on Н_ОБУЧЕНИЯ(НЗК) using(BTREE);


explain analyse select Н_ЛЮДИ.ИМЯ, Н_ОБУЧЕНИЯ.ЧЛВК_ИД, Н_УЧЕНИКИ.ГРУППА from Н_ЛЮДИ
inner join Н_ОБУЧЕНИЯ on Н_ЛЮДИ.ИД = Н_ОБУЧЕНИЯ.ЧЛВК_ИД
inner join Н_УЧЕНИКИ on Н_УЧЕНИКИ.ЧЛВК_ИД = Н_ОБУЧЕНИЯ.ЧЛВК_ИД
where Н_ЛЮДИ.ОТЧЕСТВО > 'Георгиевич'
     and Н_ОБУЧЕНИЯ.НЗК > '999080';
