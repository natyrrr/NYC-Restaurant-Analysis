CREATE TABLE current_open_restaurants(
	blank BIGINT PRIMARY KEY,
	objectid VARCHAR(50000),
	seating_interest VARCHAR(100000),
	restaurant_name VARCHAR(100000),
	legal_business_name VARCHAR(50000),
	dba VARCHAR(100000),
	building_number VARCHAR(100000),
	street VARCHAR(500000),
	borough VARCHAR(500000),
	postcode VARCHAR(500000),
	business_address VARCHAR(5000000),
	time_of_submission VARCHAR(20000),
	latitude VARCHAR(10000),
	longitude VARCHAR(10000),
	nta VARCHAR(10000)
);
SELECT * FROM current_open_restaurants;