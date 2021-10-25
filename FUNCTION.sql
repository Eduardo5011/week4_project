CREATE OR REPLACE FUNCTION add_sales_person(
    _first_name VARCHAR,
    _last_name VARCHAR
)
RETURNS void
AS
$MAIN$
BEGIN
    INSERT INTO sales_person(first_name, last_name)  
    VALUES(_first_name, _last_name);
END
$MAIN$
LANGUAGE plpgsql;


SELECT add_sales_person('Jake', 'McFly')

--------------------------------------------------------------------

CREATE OR REPLACE FUNCTION add_invoice(
    _invoice_date DATE DEFAULT CURRENT_DATE
    
)
RETURNS void
AS
$MAIN$
BEGIN
    INSERT INTO invoice(invoice_date)  
    VALUES(_invoice_date);
END
$MAIN$
LANGUAGE plpgsql;


SELECT add_invoice('12-22-2021')


--------------------------------------------------------------------

CREATE OR REPLACE FUNCTION add_service_ticket(
    _service_ticket_number VARCHAR
    
)
RETURNS void
AS
$MAIN$
BEGIN
    INSERT INTO service_ticket(service_ticket_number)  
    VALUES(_service_ticket_number);
END
$MAIN$
LANGUAGE plpgsql;


SELECT add_service_ticket('ST-0003365')

-------------------------------------------------------------------


CREATE OR REPLACE FUNCTION add_customer(
    _first_name VARCHAR,
    _last_name VARCHAR,
    _address VARCHAR,
    _city VARCHAR,
    _state VARCHAR,
    _phone_number VARCHAR
)
RETURNS void
AS
$MAIN$
BEGIN
    INSERT INTO customer(first_name, last_name, address, city, state, phone_number)  
    VALUES(_first_name, _last_name, _address, _city, _state, _phone_number);
END
$MAIN$
LANGUAGE plpgsql;


SELECT add_customer('Peewee', 'Herman', '22 sesame st', 'Queens', 'NY', '123-123-123')

--------------------------------------------------------------------

CREATE OR REPLACE FUNCTION add_car(
    _make VARCHAR,
    _model VARCHAR,
    _color VARCHAR,
    _year VARCHAR,
    _price VARCHAR
    
)
RETURNS void
AS
$MAIN$
BEGIN
    INSERT INTO car(make, model, color, year, price)  
    VALUES(_make, _model, _color, _year, _price);
END
$MAIN$
LANGUAGE plpgsql;


SELECT add_car('Ford', 'Maverick', 'Grey', '2021', 30000)

------------------------------------------------------------------------

CREATE OR REPLACE FUNCTION add_service_mechanic(
    _hours VARCHAR,
    _rate VARCHAR
    
)
RETURNS void
AS
$MAIN$
BEGIN
    INSERT INTO service_mechanic(hours, rate)  
    VALUES(_hours, _rate);
END
$MAIN$
LANGUAGE plpgsql;


SELECT add_service_mechanic('6 hour', '800')

-----------------------------------------------------------------------

CREATE OR REPLACE FUNCTION add_part(
    _parts_number VARCHAR,
    _price VARCHAR,
    _description VARCHAR
)
RETURNS void
AS
$MAIN$
BEGIN
    INSERT INTO part(parts_number, price, description)  
    VALUES(_parts_number, _price, _description);
END
$MAIN$
LANGUAGE plpgsql;

SELECT add_part('000281005', '200', 'guage')