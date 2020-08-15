/* This SHOULD consist of all necessary tables organized for analysis */

/* PRE COVID DATA */

/* ALL Pre Covid Restaurants w/ Long. and Lat. (Dups.) */
CREATE TABLE pre_covid_restaurants (
	name VARCHAR(1000),
	Borough VARCHAR(100),
	zip_code BIGINT,
	STREET VARCHAR(1000),
	income_level VARCHAR(100),
	LATITUDE VARCHAR(100),
	LONGITUDE VARCHAR(100)
);
/* Check if all good */
SELECT * FROM pre_covid_restaurants;

/* ONLY USE IF NEED TO FIX DATA */
DROP TABLE IF EXISTS pre_covid_restaurants CASCADE;

/* ALL Pre Covid Restaurants w/ Long. and Lat. In Our Zip_Codes (Dups.) */
CREATE VIEW nyc_pre_covid_rest_our_zips AS
SELECT * FROM pre_covid_restaurants
WHERE zip_code=10460 OR zip_code=10459 OR zip_code=10474 OR zip_code=10455 OR zip_code=10355 OR zip_code=10452 OR zip_code=10454 OR zip_code=10457 OR zip_code=10456 OR zip_code=10453 OR zip_code=10044 OR zip_code=11375 OR zip_code=11238 OR zip_code=11360 OR zip_code=11101 OR zip_code=10464 OR zip_code=11694 OR zip_code=10309 OR zip_code=10009 OR zip_code=11357 OR zip_code=10007 OR zip_code=10065 OR zip_code=10021 OR zip_code=10022 OR zip_code=10075 OR zip_code=10013 OR zip_code=10017 OR zip_code=10028 OR zip_code=10023 OR zip_code=10024;

/* ALL Pre Covid Restaurants w/ Long. and Lat. In Low Income Zip (Dups.) */
CREATE VIEW nyc_pre_covid_low_income AS
SELECT * FROM pre_covid_restaurants
WHERE zip_code=10460 OR zip_code=10459 OR zip_code=10474 OR zip_code=10455 OR zip_code=10355 OR zip_code=10452 OR zip_code=10454 OR zip_code=10457 OR zip_code=10456 OR zip_code=10453;

/* ALL Pre Covid Restaurants w/ Long. and Lat. In Mid Income Zip (Dups.) */
CREATE VIEW nyc_pre_covid_mid_income AS
SELECT * FROM pre_covid_restaurants
WHERE zip_code=10044 OR zip_code=11375 OR zip_code=11238 OR zip_code=11360 OR zip_code=11101 OR zip_code=10464 OR zip_code=11694 OR zip_code=10309 OR zip_code=10009 OR zip_code=11357;

/* ALL Pre Covid Restaurants w/ Long. and Lat. in High Income Zip (Dups.) */
CREATE VIEW nyc_pre_covid_high_income AS
SELECT * FROM pre_covid_restaurants
WHERE zip_code=10007 OR zip_code=10065 OR zip_code=10021 OR zip_code=10022 OR zip_code=10075 OR zip_code=10013 OR zip_code=10017 OR zip_code=10028 OR zip_code=10023 OR zip_code=10024;

/* BOTH DATA */

/* ALL Restaurants that appear in Pre-Covid and Post Quarantine Open Data w/ Long. and Lat. */
CREATE VIEW restaurants_both_pre_and_post AS
SELECT * FROM pre_covid_restaurants
WHERE name IN
(
	SELECT restaurant_name
	FROM current_open_restaurants
);

/* ALL Restaurants in both WITH OUR zip codes */
CREATE VIEW pre_and_post_all_incomes AS
SELECT * FROM restaurants_both_pre_and_post
WHERE zip_code=10460 OR zip_code=10459 OR zip_code=10474 OR zip_code=10455 OR zip_code=10355 OR zip_code=10452 OR zip_code=10454 OR zip_code=10457 OR zip_code=10456 OR zip_code=10453 OR zip_code=10044 OR zip_code=11375 OR zip_code=11238 OR zip_code=11360 OR zip_code=11101 OR zip_code=10464 OR zip_code=11694 OR zip_code=10309 OR zip_code=10009 OR zip_code=11357 OR zip_code=10007 OR zip_code=10065 OR zip_code=10021 OR zip_code=10022 OR zip_code=10075 OR zip_code=10013 OR zip_code=10017 OR zip_code=10028 OR zip_code=10023 OR zip_code=10024;

/* ALL Restaurants in both with low income zip codes */
CREATE VIEW pre_and_post_low_income AS
SELECT * FROM restaurants_both_pre_and_post
WHERE zip_code=10460 OR zip_code=10459 OR zip_code=10474 OR zip_code=10455 OR zip_code=10355 OR zip_code=10452 OR zip_code=10454 OR zip_code=10457 OR zip_code=10456 OR zip_code=10453;

/* ALL Restaurants in both with mid income zip codes */
CREATE VIEW pre_and_post_mid_income AS
SELECT * FROM restaurants_both_pre_and_post
WHERE zip_code=10044 OR zip_code=11375 OR zip_code=11238 OR zip_code=11360 OR zip_code=11101 OR zip_code=10464 OR zip_code=11694 OR zip_code=10309 OR zip_code=10009 OR zip_code=11357;

/* All Restaurants in both with high income zip codes */
CREATE VIEW pre_and_post_high_income AS
SELECT * FROM restaurants_both_pre_and_post
WHERE zip_code=10007 OR zip_code=10065 OR zip_code=10021 OR zip_code=10022 OR zip_code=10075 OR zip_code=10013 OR zip_code=10017 OR zip_code=10028 OR zip_code=10023 OR zip_code=10024;



/* POST QUARANTINE DATA */

/* ALL Post Quarantine Open Restaurants w/ Long. and Lat. */
SELECT * FROM current_open_restaurants;

/* ALL Post Quarantine Open Restaurants WITH OUR zip codes */
SELECT * FROM all_zip_codes;

/* ALL Post Quarantine Open Restaurants LOW INCOME zip codes */
SELECT * FROM low_income_open_restaurants;

/* ALL Post Quarantine Open Restaurants MID INCOME zip codes */
SELECT * FROM mid_income_open_restaurants;

/* ALL Post Quarantine Open Restaurants HIGH INCOME zip codes */ 
SELECT * FROM high_income_open_restaurants;