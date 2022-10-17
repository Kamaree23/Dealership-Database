insert into Customer(
    first_name,
    last_name,
    phone,
    email,
    did_Buy
)
values(
    'Ryan',
    'Jones',
    1110191,
    'RjBabay@gmail.com',
    False
);
select * FROM customer

insert into Cars(
    isNew,
    year,
    make,
    model
)
values(
    False,
    2012,
    'Ford',
    'Explorer' 
);

insert into mechanic(
    first_name,
    last_name
)
values(
    'Jimmy',
    'Johnson'
);

select * from mechanic

insert into Services(
    service_history
)
values(
    'Nice procedure today. Installed new head gaskets should be no more leaks!'
);

select * from services

insert into Salesperson(
    first_name,
    last_name
)
values(
    'Chad',
    'Johnson'
),
(
    'Richard',
    'Simpsons'
),
(
    'Jeff',
    'Gordan'
);
select * from salesperson

insert into Invoices(
    isPaid,
    customer_id,
    salesperson_id,
    car_id
)
values(
    True,
    1,
    2,
    2
)
select * from invoices