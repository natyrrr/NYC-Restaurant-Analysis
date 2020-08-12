/* Low Income Zip Codes*/
CREATE VIEW low_income_open_restaurants AS
SELECT * FROM current_open_restaurants
WHERE 	postcode='10460' OR postcode='10459' OR postcode='10474' OR postcode='10455' OR postcode='10355' OR postcode='10452' OR postcode='10454' OR postcode='10457' OR postcode='10456' OR postcode='10453';

/* Mid Income Zip Codes*/
CREATE VIEW mid_income_open_restaurants AS
SELECT * FROM current_open_restaurants
WHERE postcode='10044' OR postcode='11375' OR postcode='11238' OR postcode='11360' OR postcode='11101' OR postcode='10464' OR postcode='11694' OR postcode='10309' OR postcode='10009' OR postcode='11357';

/* High Income Zip Codes*/
CREATE VIEW high_income_open_restaurants AS
SELECT * FROM current_open_restaurants
WHERE postcode='10007' OR postcode='10065' OR postcode='10021' OR postcode='10022' OR postcode='10075' OR postcode='10013' OR postcode='10017' OR postcode='10028' OR postcode='10023' OR postcode='10024';