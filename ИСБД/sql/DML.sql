-- insert beer sorts
insert into s333219."Beer" ("Beer_Name") values 
	('Pale Ale'),
	('Brown Ale'),
	('Stout'),
	('Porter'),
	('Pale Lager'),
	('Dark Lager'),
	('Lambic'),
	('Wheat beer unfiltered pale'),
	('Wheat beer unfiltered dark'),
	('Wheat beer filtered pale'),
	('Wheat beer filtered dark'),
	('Altbier'),
	('Pilsner'),
	('Kölsch');

-- insert job status
insert into s333219."Status" ("Current_Status") values
	('Accepted'),
	('In Work'),
	('Denied'),
	('Finished'),
	('Waiting');

-- insert workers
insert into s333219."Employee" ("Name", "Phone_Number") values
	('Panin Ivan', '9213452835'),
	('Drobysh Dmitry', '9319561585'),
	('Orekhov Sergey', '9665735021');

-- insert Login Data
insert into s333219."Login" ("Login", "Password") values
	('ChukhoninVan', 'LanaLanaGoslya'),
	('NorthCapDiamond', 'Boss_of_this_Data_Base');

-- insert Online_Pay
insert into s333219."Online_Pay" ("Card_Number", "CVC") values
	('1234567890987654', '123'),
	('2345678909876543', '234');


-- insert Clients 
-- you should do it after others...
insert into s333219."Client" ("Name", "Date_Of_Birth", "Phone_Number", "Payment_Way_Id", "Login_Data_Id")
	values ('Ivan Chukhonin', '16/06/2003', '9999954378', 1, 1),
	('Drobina', '02/07/1971', '9979654378', 2, 2);



