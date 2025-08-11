CREATE TABLE Passengers (
    id SERIAL PRIMARY KEY,
    username VARCHAR(100) NOT NULL
);

CREATE TABLE Company (
    id SERIAL PRIMARY KEY,
    company_name VARCHAR(100) NOT NULL
);

CREATE TABLE Aircrafts (
    id SERIAL PRIMARY KEY,
    aircraft_name VARCHAR(100) NOT NULL,
    company_id INTEGER NOT NULL REFERENCES Company(id)
);

CREATE TABLE Flights (
    id SERIAL PRIMARY KEY,
    flight_name VARCHAR(100) NOT NULL,
    aircraft_id INTEGER NOT NULL REFERENCES Aircrafts(id)
);

CREATE TABLE Tickets (
    id SERIAL PRIMARY KEY,
    price NUMERIC(7,2) NOT NULL,
    flight_id INTEGER NOT NULL REFERENCES Flights(id)
);

CREATE TABLE Promo (
    id SERIAL PRIMARY KEY,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    discount NUMERIC(3,2) NOT NULL,
    flight_id INTEGER NOT NULL REFERENCES Flights(id)
);

ALTER TABLE Promo
ADD CONSTRAINT check_discount CHECK (discount >= 0 AND discount <= 1);

CREATE TABLE Purchase (
    id SERIAL PRIMARY KEY,
    passenger_id INTEGER NOT NULL REFERENCES Passengers(id),
    ticket_id INTEGER NOT NULL REFERENCES Tickets(id),
    purchase_date DATE NOT NULL
);