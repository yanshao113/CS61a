.read data.sql


CREATE TABLE bluedog AS
  SELECT color, pet from students where color = "blue" and pet = "dog";

CREATE TABLE bluedog_songs AS
  SELECT color, pet, song from students where color = "blue" and pet = "dog";


CREATE TABLE smallest_int_having AS
  SELECT time, smallest from students group by smallest having count(*) = 1;


CREATE TABLE matchmaker AS
  SELECT first.pet, first.song, first.color, second.color from students as first, students as second where first.pet = second.pet and first.song = second.song and first.time < second.time ;


CREATE TABLE sevens AS
  SELECT seven from students as a, numbers as b where a.number = 7 and b."7" = "True" and a.time = b.time;


CREATE TABLE average_prices AS
  SELECT category, avg(MSRP) as average_price from products group by category;


CREATE TABLE lowest_prices AS
  SELECT store, item, min(price) from inventory group by item;


CREATE TABLE shopping_list AS
  SELECT item, store from lowest_prices, products where item = name group by category having min(MSRP/rating);


CREATE TABLE total_bandwidth AS
  SELECT sum(Mbs) from stores as a, shopping_list as b where a.store = b.store;

