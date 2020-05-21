-- The names of the restaurants you gave 5 stars to 
-- SELECT restaurant_name FROM restaurant WHERE stars = 5.0;

-- The names and favorite dishes of the restaurants you gave 5 stars to 
-- SELECT restaurant_name, stars, fav_dish FROM restaurant WHERE stars = 5.0;

-- The id of a restaurant by a specific name
-- SELECT id FROM restaurant WHERE restaurant_name = 'In N Out';

-- Restaurants in the category of 'Mexican'
-- SELECT restaurant_name FROM restaurant WHERE category = 'Mexican';

-- Restaurants that do take out
-- Restaurants that do take out and are in the category of 'BBQ'
-- Restaurants within 2 miles
-- Restaurants you haven't eaten at in the last week
-- Restaurants you haven't eaten at in the last week and has 5 stars