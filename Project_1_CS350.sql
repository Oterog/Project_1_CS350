-- Create Airports table
CREATE TABLE Airports (
    airport_id SERIAL NOT NULL,
    airport_name VARCHAR(255) NOT NULL,
    city VARCHAR(255) NOT NULL,
    country VARCHAR(255) NOT NULL,
    airport_iata_code CHAR(2) NULL,
    airport_icao_code CHAR(3) NULL,
    latitude DECIMAL(9, 6) NOT NULL,
    longitude DECIMAL(9, 6) NOT NULL,
    timezone VARCHAR(50) NOT NULL,
    PRIMARY KEY (airport_id)
);

CREATE TABLE Airlines (
    airline_id SERIAL PRIMARY KEY,
    airline_name VARCHAR(255) NOT NULL,
    airline_iata_code CHAR(2),
    airline_icao_code CHAR(3),
    callsign VARCHAR(50),
    country VARCHAR(255) NOT NULL,
    active CHAR(1)
);

-- Create Airplanes table
CREATE TABLE Airplanes (
    airplane_id SERIAL PRIMARY KEY,
    airplane_name VARCHAR(255) NOT NULL,
    airplane__iata_code CHAR(3) NOT NULL,
    airplane_icao_code CHAR(4)
);

-- Create Routes table
CREATE TABLE Flights (
    flight_id serial PRIMARY KEY,
    airline_id INT,
    departure_airport_id INT NOT NULL,
    arrival_airport_id INT NOT NULL, 
    stops INT NOT NULL,
    codeshare INT,
    FOREIGN KEY (airline_id) REFERENCES Airlines (airline_id),
    FOREIGN KEY (departure_airport_id) REFERENCES Airports(airport_id),
    FOREIGN KEY (arrival_airport_id) REFERENCES Airports(airport_id)
);