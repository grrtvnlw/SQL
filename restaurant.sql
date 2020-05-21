CREATE TABLE restaurant (
  id SERIAL PRIMARY KEY,
  restaurant_name VARCHAR NOT NULL,
  distance NUMERIC,
  stars NUMERIC,
  category VARCHAR,
  fav_dish VARCHAR,
  takeout_avail BOOLEAN,
  visit_date TIMESTAMP
);

INSERT INTO restaurant VALUES (
  DEFAULT,
  'Los Bravos',
  6.0,
  4.8,
  'Mexican',
  'Quesadilla Fajita',
  TRUE,
  '2020-05-18 09:45:00'
);

INSERT INTO restaurant VALUES
(
  DEFAULT,
  'Duck Donuts',
  6.0,
  4.8,
  'Donuts',
  'Maple Bacon Donut',
  TRUE,
  '2020-05-21 09:45:00'
),
(
  DEFAULT,
  'Taqueria Tsunami',
  6.5,
  4.2,
  'Japanese Mexican Fusion',
  'Rich Man\s Taco',
  TRUE,
  '2020-04-18 13:15:00'
);

INSERT INTO restaurant VALUES
(
  DEFAULT,
  'The Juicy Crab',
  6.9,
  4.5,
  'Cajun Boil',
  'King Crab and Shrimp',
  TRUE,
  '2019-10-15 13:45:00'
),
(
  DEFAULT,
  'Buttermilk Kitchen',
  2.6,
  5.0,
  'Breakfast & Brunch',
  'Chicken Biscuit',
  TRUE,
  '2019-11-18 10:00:00'
),
(
  DEFAULT,
  'Mary Macs Tearoom',
  5.7,
  5.0,
  'Southern Cooking',
  'Chicken and Dumplings',
  TRUE,
  '2019-10-01 14:00:00'
);

INSERT INTO restaurant VALUES
(
  DEFAULT,
  'In N Out',
  2030.0,
  4.0,
  'Fast Food',
  'Double Double Animal Style',
  TRUE,
  '2019-03-12 18:00:00'
),
(
  DEFAULT,
  'Dos Hermanas',
  2030.0,
  4.5,
  'Taco Truck',
  'Carne Asada Taco',
  TRUE,
  '2019-03-11 18:00:00'
);
