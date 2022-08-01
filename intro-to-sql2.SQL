--BONUS SQL part2A

--Query for hotels that allow pets
SELECT DISTINCT hotels.name FROM hotels WHERE pets = 'true';
--

--Query for hotels that allow pets AND have vacancies
SELECT DISTINCT HOTELS.NAME  FROM hotels JOIN rooms ON rooms.hotel_id = hotels.id WHERE hotels.pets = 'true' AND rooms.vacant = 'true';
--


--Query for the average room price for a hotel that allows pets
SELECT AVG(price) FROM rooms JOIN hotels ON hotels.id = rooms.hotel_id WHERE pets = 'true';
--

--Query for the most expensive room

SELECT * FROM rooms WHERE price IS NOT NULL ORDER BY price DESC limit 1; --HOTELHELICOPTER ROOM HAS NO NAME BUT ITS MOST EXPENSIVE
--

--Query for the average price of a room that has a name that includes queen in it (case insensitive)

SELECT AVG(price) FROM rooms WHERE LOWER(name) LIKE '%queen%';
--

--Query for the least expensive room
SELECT * FROM rooms WHERE price IS NOT NULL ORDER BY price ASC limit 1;

--

--Update a room at Hotel California with a room number of 202 to go from vacant-true to vacant false.
UPDATE rooms SET vacant = 'false' WHERE room_num = 202; 
--This does it for sure but doesnt incorporate join.

 UPDATE rooms SET vacant = 'false' FROM rooms JOIN hotels ON rooms.hotel_id = hotels.id WHERE rooms.room_num = 202;
-- ERROR:  table name "rooms" specified more than once



--Update all the rooms with the hotel_id of 7 to now have a hotel_id that matches the Grand Budapest Hotel

UPDATE rooms SET hotel_id = 6 WHERE hotel_id = 7;
-- hard coded . trying to figure out syntax for join inside update clause


