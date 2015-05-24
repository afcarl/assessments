CREATE TABLE futurehome.actions (
  user_id INT,
  item_name VARCHAR(50),
  dealer VARCHAR(50),
  action_type VARCHAR(50),
  item_registration_id VARCHAR(200),
  time_stamp DATE,
  item_price INT
);

CREATE TABLE futurehome.devices (
  user_id INT,
  coupon_code VARCHAR(5),
  item_id INT,
  dist_channel VARCHAR(30),
  time_stamp DATE,
  item_registration_id VARCHAR(200)
);

CREATE TABLE futurehome.products_lookup (
  item_name VARCHAR(25),
  item_id INT
);
