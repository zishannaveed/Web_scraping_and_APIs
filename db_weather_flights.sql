CREATE DATABASE db_weather_flights;
USE db_weather_flights;
 -- DROP TABLE cities;
CREATE TABLE cities(
	city VARCHAR(50),
    country VARCHAR(50),
    population INTEGER,
    latitude FLOAT(6),
    longitude FLOAT(6),
    PRIMARY KEY (city)
);
  -- DROP TABLE weather;
CREATE TABLE weather (
	weather_id INT NOT NULL AUTO_INCREMENT,
    city VARCHAR(50),
    date_time DATETIME,
    temperature FLOAT(6),
    pressure INTEGER,
    wind_speed FLOAT(6),
    visibility INTEGER,
    weather_condition VARCHAR(50),
    detailed_condition VARCHAR (50),
    clouds INTEGER,
    rain FLOAT(6),
    PRIMARY KEY (weather_id),
    Foreign KEY(city) REFERENCES cities(city)
);
 -- DROP TABLE flights;
CREATE TABLE flights (
    flight_id INT NOT NULL AUTO_INCREMENT,
    departure_airport VARCHAR(50),
    departure_time_local DATETIME,
    arrival_city VARCHAR(50),
	arrival_icao VARCHAR(50),
    arrival_iata VARCHAR(50),
    arrival_airport VARCHAR(50),
    arrival_time_local DATETIME,
    airline VARCHAR(50),
    flight_number VARCHAR (50),
    flight_status VARCHAR (50),
    PRIMARY KEY (flight_id),
    Foreign KEY(arrival_city) REFERENCES cities(city)
);

SELECT* FROM cities;
SELECT* FROM weather;
SELECT * FROM flights;