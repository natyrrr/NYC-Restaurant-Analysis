CREATE TABLE pre_covid_restaurants (
	name VARCHAR(1000),
	Borough VARCHAR(100),
	zip_code BIGINT,
	STREET VARCHAR(1000),
	income_level VARCHAR(100),
	LATITUDE VARCHAR(100),
	LONGITUDE VARCHAR(100)
);

CREATE VIEW restaurants_both_pre_and_post AS
SELECT * FROM pre_covid_restaurants
WHERE name IN
(
	SELECT restaurant_name
	FROM current_open_restaurants
);