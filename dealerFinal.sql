CREATE TABLE Salesperson (
  salesperson_id SERIAL primary key,
  first_name VARCHAR(20),
  last_name VARCHAR(20)
);

CREATE TABLE Cars (
    car_id SERIAL primary key ,
    isNew BOOLEAN,
    year INTEGER,
    make VARCHAR(30),
    model VARCHAR(30)
);

CREATE TABLE Serv_Mech (
  serv_mech_id SERIAL primary key,
  mechanic_id INTEGER
);

CREATE TABLE Services (
    service_id SERIAL primary key,
    service_history VARCHAR(250),
    serv_mech_id INTEGER,
    FOREIGN KEY (serv_mech_id) REFERENCES Serv_Mech(serv_mech_id)
);

CREATE TABLE Customer (
  customer_id  SERIAL primary key,
  first_name VARCHAR(20),
  last_name VARCHAR(20),
  phone INTEGER,
  email VARCHAR(20),
  did_Buy BOOLEAN
);

CREATE TABLE Invoices (
    invoice_id SERIAL primary key,
    isPaid BOOLEAN,
    customer_id INTEGER,
    salesperson_id INTEGER,
    car_id INTEGER,
    service_id INTEGER,
    FOREIGN KEY (salesperson_id)
    REFERENCES Salesperson(salesperson_id),
    FOREIGN KEY (car_id)
    REFERENCES Cars(car_id),
    FOREIGN KEY (service_id)
    REFERENCES Services(service_id),
    FOREIGN KEY (customer_id)
    REFERENCES Customer(customer_id)
);

CREATE TABLE Mechanic (
  mechanic_id SERIAL primary key,
  first_name VARCHAR(15),
  last_name VARCHAR(15)
);