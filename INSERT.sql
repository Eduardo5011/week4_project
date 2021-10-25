INSERT INTO sales_person(
    first_name,
    last_name  
) VALUES
(
    'Chris',
    'Med'  
),(
    'Jay',
    'Pez' 
),(
    'Jack',
    'Fitz' 
),(
    'Guy',
    'Moe'  
),(
    'Manny',
    'Fresco'   
);

INSERT INTO invoice(
    invoice_date  
)VALUES
(
    '10-31-2021'
    
),(
    '11-5-2022'
    
),(
    '1-15-2023'
    
),(
    '7-4-2024'
    
),(
    '5-21-2022'   
);


INSERT INTO service_ticket(
    service_ticket_number 
)VALUES
(
    'ST-0001232'
    
),(
    'ST-0001343'
    
),(
    'ST-0001454'
    
),(
    'ST-0001565'
    
),(
    'ST-0001676'
    
);



INSERT INTO customer(
    first_name,
    last_name,
    address,
    city,
    state,
    phone_number,
    sales_person_id,
    invoice_id,
    service_ticket_id
) VALUES
(
	'Dr.',
    'Seuss',
    '123 whoville Ave',
    'Chicago',
    'IL',
    '111-222-3333',
    1,
    1,
    1   
),(
	'Eddy',
    'Munster',
    '1313 Mockingbird Ln',
    'Universal City',
    'CA',
    '111-567-8910',
    1,
    1,
    1   
),(
	'Bob',
    'gilligan',
    '1 Island St',
    'Oahu',
    'HI',
    '111-380-1145',
    1,
    1,
    1   
),(
	'Thor',
    'Odinson',
    '00 Asgard Rd',
    'Methuen',
    'MA',
    '999-512-1133',
    1,
    1,
    1   
),(
	'Tom',
    'Cat',
    '42 W 35th St',
    'NY',
    'NY',
    '212-222-3333',
    1,
    1,
    1   
);


INSERT INTO car(
    make,
    model,
    color,
    year,
    price,
    sales_person_id,
    customer_id
) VALUES
(
	'Toyota',
    'camry',
    'White',
    '2020',
    '30000',
    1,
    1   
),(
	'Ford',
    'Focus',
    'Blue',
    '2016',
    '25000',
    1,
    1   
),(
	'Honda',
    'Civic',
    'Green',
    '2000',
    '5000',
    1,
    1   
),(
	'Acura',
    'Integra',
    'Black',
    '2010',
    '10000',
    1,
    1   
),(
	'Chevrolet',
    'Camero',
    'white',
    '2020',
    '30000',
    1,
    1   
);


INSERT INTO service_mechanic(
    hours,
    rate,
    service_ticket_id
) VALUES
(
	'1 hour',
    '60.00',
    1
),(
	'2 hour',
    '80.00',
    1
),(
	'3 hour',
    '90.00',
    1
),(
	'4 hour',
    '100.00',
    1
),(
	'5 hour',
    '120.00',
    1
);


INSERT INTO part(
    parts_number,
    price,
    description,
    service_mechanic_id
) VALUES
(
	'000234532',
    '300.00',
    'breaks',
    1
    
),(
	'000555436',
    '195.00',
    'shocks',
    1
    
),(
	'000657113',
    '117.00',
    'Grille',
    1
    
),(
	'000895540',
    '179.00',
    'Clucth disk',
    1
    
),(
	'000234532',
    '300.00',
    'breaks',
    1
    
);



