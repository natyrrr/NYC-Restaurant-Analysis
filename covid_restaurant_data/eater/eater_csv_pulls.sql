/* Low Income Zip Codes*/
CREATE VIEW low_income_closed_eater AS
SELECT * FROM closed_restaurants
WHERE zip_code=10460 OR zip_code=10459 OR zip_code=10474 OR zip_code=10455 OR zip_code=10355 OR zip_code=10452 OR zip_code=10454 OR zip_code=10457 OR zip_code=10456 OR zip_code=10453;

/* Mid Income Zip Codes*/
CREATE VIEW mid_income_closed_eater AS
SELECT * FROM closed_restaurants
WHERE zip_code=10044 OR zip_code=11375 OR zip_code=11238 OR zip_code=11360 OR zip_code=11101 OR zip_code=10464 OR zip_code=11694 OR zip_code=10309 OR zip_code=10009 OR zip_code=11357;

/* High Income Zip Codes*/
CREATE VIEW high_income_closed_eater AS
SELECT * FROM closed_restaurants
WHERE zip_code=10007 OR zip_code=10065 OR zip_code=10021 OR zip_code=10022 OR zip_code=10075 OR zip_code=10013 OR zip_code=10017 OR zip_code=10028 OR zip_code=10023 OR zip_code=10024;