-- trigger for deleting users
create or replace function delete_client_trigger()
RETURNS trigger AS $$
begin
    delete from s333219."Online_Pay" where "Pay_Id" = old."Payment_Way_Id";
    delete from s333219."Login" where "Pass_Id" = old."Login_Data_Id";
    delete from s333219."Shopping_Cart" where "Client_Id" = old."Client_Id";
    delete from s333219."Chat" where "Client_Id" = old."Client_Id";
    RETURN old;
end;
$$ language plpgsql;

create trigger delete_client_trigger
before delete on s333219."Client"
for each row
execute function delete_client_trigger();


-- replace employee in chat
create or replace function replace_employee()
returns trigger as $$
begin
    update s333219."Chat" set "Employee_id" = (select "Employee_id" from s333219."Employee" where "Employee_id" <> OLD."Employee_id" limit 1) where "Employee_id" = OLD."Employee_id";
    return new;
end;
$$ language plpgsql;

create trigger replace_employee_trigger
before delete on s333219."Employee"
for each row
execute function replace_employee();


-- remove shopping cart
create or replace function delete_shopping_cart_trigger()
RETURNS trigger AS $$
begin
    delete from s333219."Order" where "Order_Id" = old."Order_Id";
    RETURN old;
end;
$$ language plpgsql;

create trigger delete_shopping_cart_trigger
before delete on s333219."Shopping_Cart"
for each row
execute function delete_shopping_cart_trigger();

-- trigger for deleting users
create or replace function delete_client_trigger()
RETURNS trigger AS $$
begin
    delete from s333219."Online_Pay" where "Pay_Id" = old."Payment_Way_Id";
    delete from s333219."Login" where "Pass_Id" = old."Login_Data_Id";
    delete from s333219."Shopping_Cart" where "Client_Id" = old."Client_Id";
    delete from s333219."Chat" where "Client_Id" = old."Client_Id";
    RETURN old;
end;
$$ language plpgsql;

create trigger delete_client_trigger
before delete on s333219."Client"
for each row
execute function delete_client_trigger();


-- replace employee in chat
create or replace function replace_employee()
returns trigger as $$
begin
    update s333219."Chat" set "Employee_id" = (select "Employee_id" from s333219."Employee" where "Employee_id" <> OLD."Employee_id" limit 1) where "Employee_id" = OLD."Employee_id";
    return new;
end;
$$ language plpgsql;

create trigger replace_employee_trigger
before delete on s333219."Employee"
for each row
execute function replace_employee();


-- remove shopping cart
create or replace function delete_shopping_cart_trigger()
RETURNS trigger AS $$
begin
    delete from s333219."Order" where "Order_Id" = old."Order_Id";
    RETURN old;
end;
$$ language plpgsql;

create trigger delete_shopping_cart_trigger
before delete on s333219."Shopping_Cart"
for each row
execute function delete_shopping_cart_trigger();


-- remove order 
create or replace procedure delete_cart(id integer)
AS $$
begin
    EXECUTE('DISABLE TRIGGER delete_shopping_cart_trigger ON s333219."Shopping_Cart"');
    delete from s333219."Shopping_Cart" where "Order_Id" = id;
    delete from s333219."Amount_Of_Beer" where "Order_Id" = id;
    EXECUTE('ENABLE TRIGGER delete_shopping_cart_trigger ON s333219."Shopping_Cart"');
end;
$$ language plpgsql;









