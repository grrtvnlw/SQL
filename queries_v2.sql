-- List all the reviews for a given restaurant given a specific restaurant ID.
SELECT review FROM reviews, restaurant WHERE restaurant.id = 2 AND restaurant.id = reviews.restaurant_id;

-- List all the reviews for a given restaurant, given a specific restaurant name.
SELECT review FROM reviews, restaurant WHERE restaurant_name = 'Los Bravos' AND restaurant.id = reviews.restaurant_id;

-- List all the reviews for a given reviewer, given a specific author name.
SELECT review FROM reviews, reviewer WHERE reviewer.name = 'Steve the review guy' AND reviewer.id = reviews.reviewer_id;

-- List all the reviews along with the restaurant they were written for. In the query result, select the restaurant name and the review text.
SELECT review, restaurant_name FROM reviews, restaurant WHERE restaurant.id = reviews.restaurant_id;

-- Get the average stars by restaurant. The result should have the restaurant name and its average star rating.
SELECT AVG(stars), restaurant_name FROM reviews, restaurant GROUP BY restaurant_name;

-- Get the number of reviews written for each restaurant. The result should have the restaurant name and its review count.
SELECT COUNT(reviews.review), restaurant_name FROM reviews, restaurant WHERE restaurant.id = reviews.restaurant_id GROUP BY restaurant_name;

-- List all the reviews along with the restaurant, and the reviewer's name. The result should have the restaurant name, the review text, and the reviewer name. Hint: you will need to do a three-way join - i.e. joining all three tables together.
SELECT restaurant_name, reviews.review, reviewer.name FROM restaurant, reviews, reviewer WHERE restaurant.id = reviews.restaurant_id and reviewer.id = reviews.reviewer_id;

-- Get the average stars given by each reviewer. (reviewer name, average star rating)
SELECT AVG(stars), reviewer.name FROM reviews, reviewer WHERE reviewer.id = reviews.reviewer_id GROUP BY reviewer.name;

-- Get the lowest star rating given by each reviewer. (reviewer name, lowest star rating)
SELECT MIN(stars), reviewer.name FROM reviews, reviewer WHERE reviewer.id = reviews.reviewer_id GROUP BY reviewer.name;

-- Get the number of restaurants in each category. (category name, restaurant count)
SELECT COUNT(*), restaurant_name FROM restaurant WHERE category = 'Fast Food' GROUP BY restaurant_name;
SELECT COUNT(*), restaurant_name FROM restaurant WHERE category = 'Cajun Boil' GROUP BY restaurant_name;

-- Get number of 5 star reviews given by restaurant. (restaurant name, 5-star count)
SELECT restaurant_name, COUNT(stars) FROM reviews, restaurant WHERE reviews.restaurant_id = restaurant.id AND stars = 5 GROUP BY restaurant_name;

-- Get the average star rating for a food category. (category name, average star rating)
SELECT restaurant.category, AVG(stars) FROM reviews, restaurant WHERE reviews.restaurant_id = restaurant.id GROUP BY restaurant.category;
