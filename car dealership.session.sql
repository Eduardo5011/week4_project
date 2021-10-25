CREATE TABLE sales_person(
    sales_person_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100)
);

CREATE TABLE invoice(
    invoice_id SERIAL PRIMARY KEY,
    invoice_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE service_ticket(
    service_ticket_id SERIAL PRIMARY KEY,
    service_ticket_number VARCHAR(100)
);



CREATE TABLE customer(
    customer_id SERIAL PRIMARY KEY,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    address VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    phone_number VARCHAR(100),
    sales_person_id INTEGER NOT NULL,
    invoice_id INTEGER NOT NULL,
    service_ticket_id INTEGER NOT NULL,
    FOREIGN KEY (sales_person_id) REFERENCES sales_person(sales_person_id),
    FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
    FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)    
);



CREATE TABLE car(
    car_id SERIAL PRIMARY KEY,
    make VARCHAR(100),
    model VARCHAR(100),
    color VARCHAR(100),
    year VARCHAR(100),
    price NUMERIC(5,2),
    sales_person_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY (sales_person_id) REFERENCES sales_person(sales_person_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
);



CREATE TABLE service_mechanic(
    service_mechanic_id SERIAL PRIMARY KEY,
    hours VARCHAR(100),
    rate VARCHAR(100),
    service_ticket_id INTEGER NOT NULL,
    FOREIGN KEY (service_ticket_id) REFERENCES service_ticket(service_ticket_id)
);




CREATE TABLE part(
    parts_id SERIAL PRIMARY KEY,
    parts_number VARCHAR(100),
    price NUMERIC(10,2),
    description VARCHAR(100),
    service_mechanic_id INTEGER NOT NULL,
    FOREIGN KEY (service_mechanic_id) REFERENCES service_mechanic(service_mechanic_id)
);