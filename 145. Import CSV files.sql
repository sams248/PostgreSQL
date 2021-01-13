CREATE DATABASE airport;

CREATE TABLE airports (
	id int NOT NULL,
	ident varchar(10),
	type text,
	name text,
	latitude_deg float,
	longitude_deg float,
	elevation_ft int,
	continent text,
	iso_country varchar(10),
	iso_region varchar(10),
	municipality text,
	scheduled_service text,
	gps_code varchar(10),
	iata_code varchar(20),
	local_code varchar(20),
	home_link text,
	wikipedia_link text,
	keywords text
);

-- this won't work in pgAdmin
COPY airports (	id,ident,type,name,latitude_deg,longitude_deg,elevation_ft,
						continent,iso_country,iso_region,municipality,scheduled_service,
						gps_code,iata_code,local_code,home_link,wikipedia_link,keywords)
FROM '/Users/Sam/Desktop/airportdata/airports.csv' DELIMITER ',' CSV HEADER;

-- must use pgsql
psql --port=5433 --host=localhost --dbname=airport --username=postgres


\copy airports (	id,ident,type,name,latitude_deg,longitude_deg,elevation_ft,continent,
	iso_country,iso_region,municipality,scheduled_service,gps_code,iata_code,
	local_code,home_link,wikipedia_link,keywords)
	FROM '/Users/Sam/Desktop/airportdata/airports.csv' DELIMITER ',' CSV HEADER;

--your turn

CREATE TABLE airport_frequencies (
	id int,
	airport_ref int,
	airport_ident varchar(10),
	type varchar(20),
	description text,
	frequency_mhz float
)

\copy airport_frequencies (	id,airport_ref,airport_ident,type,description,frequency_mhz)
FROM '/Users/Sam/Desktop/airportdata/airport-frequencies.csv' DELIMITER ',' CSV HEADER;
