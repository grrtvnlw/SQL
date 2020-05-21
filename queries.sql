-- The names of the restaurants you gave 5 stars to 
SELECT restaurant_name FROM restaurant WHERE stars = 5.0;

-- The names and favorite dishes of the restaurants you gave 5 stars to 
SELECT restaurant_name, stars, fav_dish FROM restaurant WHERE stars = 5.0;

-- The id of a restaurant by a specific name
SELECT id FROM restaurant WHERE restaurant_name = 'In N Out';

-- Restaurants in the category of 'Mexican'
SELECT restaurant_name FROM restaurant WHERE category = 'Mexican';

-- Restaurants that do take out
SELECT restaurant_name FROM restaurant WHERE takeout_avail = TRUE;

-- Restaurants that do take out and are in the category of 'Mexican'
SELECT restaurant_name FROM restaurant WHERE takeout_avail = TRUE AND category = 'Mexican';

-- Restaurants within 2 miles
SELECT restaurant_name FROM restaurant WHERE distance <= 2;

-- Restaurants you haven't eaten at in the last week
SELECT restaurant_name FROM restaurant WHERE visit_date < '2020-05-14 00:00:01';

-- Restaurants you haven't eaten at in the last week and has 5 stars
SELECT restaurant_name FROM restaurant WHERE visit_date < '2020-05-14 00:00:01' and stars = 5.0;