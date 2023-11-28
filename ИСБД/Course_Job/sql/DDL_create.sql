-- create table "Employee"
create table if not exists "Employee"
(
	"Employee_id" serial primary key, 
	"Name" text not null, 
	"Phone_Number" varchar(10) not null
);

-- create table "Login"
create table if not exists "Login"
(
	"Pass_Id" serial primary key unique,
	"Login" text not null unique,
	"Password" text not null
);

-- create table Online_Pay
create table if not exists "Online_Pay"
(
	"Pay_Id" serial primary key unique,
	"Card_Number" varchar(16),
	"CVC" varchar(3)
);

-- create table "Status"
create table if not exists "Status"
(
	"Status_Id" serial primary key,
	"Current_Status" text not null unique
);

-- create table "Beer"
create table if not exists "Beer"
(
	"Beer_Id" serial primary key,
	"Beer_Name" text not null unique
);

-- create table "Client"
create table if not exists "Client"
(
	"Client_Id" serial primary key, 
	"Name" text not null,
	"Date_Of_Birth" date not null,
	"Phone_Number" varchar(10),
	"Payment_Way_Id" integer,
	"Login_Data_Id" integer not null unique,
	foreign key ("Payment_Way_Id") references s333219."Online_Pay" ("Pay_Id"),
	foreign key ("Login_Data_Id") references s333219."Login" ("Pass_Id"),
	check (calculate_age("Date_Of_Birth") > 18)
);

-- create table "Chat"
create table if not exists "Chat"
(
	"Chat_Id" serial not null unique,
	"Client_Id" integer not null,
	"Employee_id" integer not null,
	foreign key("Client_Id") references s333219."Client"("Client_Id"),
	foreign key ("Employee_id") references s333219."Employee"("Employee_id")
);

-- create table "Order"
create table if not exists "Order"
(
	"Order_Id" serial primary key,
	"Status_Id" integer not null,
	foreign key ("Status_Id") references s333219."Status"("Status_Id")
);

-- create table "Amount_Of_Beer"
create table if not exists "Amount_Of_Beer"
(
	"Order_Id" integer not null,
	"Beer_Id" integer not null,
	"Amount_Of_Beer" integer not null,
	foreign key ("Order_Id") references s333219."Order" ("Order_Id"),
	foreign key ("Beer_Id") references s333219."Beer" ("Beer_Id")
);

-- create table "Shopping cart"
create table if not exists "Shopping_Cart"
(
	"Client_Id" integer not null,
	"Order_Id" integer not null,
	foreign key("Client_Id") references s333219."Client"("Client_Id"),
	foreign key("Order_Id") references s333219."Order"("Order_Id")
);




