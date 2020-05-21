-- List restaurants by the closest distance.
SELECT restaurant_name FROM restaurant ORDER BY distance ASC;

-- List the top 2 restaurants by distance.
SELECT restaurant_name FROM restaurant ORDER BY distance ASC LIMIT 2;

-- List the top 2 restaurants by stars.
SELECT restaurant_name FROM restaurant ORDER BY stars DESC LIMIT 2;

-- List the top 2 restaurants by stars where the distance is less than 2 miles.
SELECT restaurant_name FROM restaurant WHERE distance <= 2 ORDER BY stars DESC LIMIT 2;

-- Count the number of restaurants in the db.
SELECT COUNT(*) FROM restaurant;

-- Count the number of restaurants by category.
SELECT COUNT(*) FROM restaurant WHERE category = 'Mexican';
SELECT COUNT(*) FROM restaurant WHERE category = 'Donuts';

-- Get the average stars per restaurant by category.
SELECT category, AVG(stars) FROM restaurant GROUP BY category;
SELECT AVG(stars) FROM restaurant;

-- Get the max stars of a restaurant by category.
SELECT category, MAX(stars) FROM restaurant GROUP BY category;
SELECT MAX(stars) FROM restaurant;
