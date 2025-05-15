-- Query 1: INNER JOIN - Bookings and Users
SELECT 
    bookings.id AS booking_id,
    users.id AS user_id,
    users.name,
    bookings.start_date,
    bookings.end_date,
    bookings.total_price
FROM 
    bookings
INNER JOIN users ON bookings.user_id = users.id;

-- Query 2: LEFT JOIN - Properties and Reviews
-- Query 2: LEFT JOIN - Properties and Reviews (with ORDER BY)
SELECT 
    properties.id AS property_id,
    properties.title,
    reviews.id AS review_id,
    reviews.rating,
    reviews.comment
FROM 
    properties
LEFT JOIN reviews ON reviews.property_id = properties.id
ORDER BY properties.id;


-- Query 3: FULL OUTER JOIN - Users and Bookings
SELECT 
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
FULL OUTER JOIN bookings ON bookings.user_id = users.id;

-- FULL OUTER JOIN alternative in MySQL
SELECT 
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    users
LEFT JOIN bookings ON bookings.user_id = users.id

UNION

SELECT 
    users.id AS user_id,
    users.name,
    bookings.id AS booking_id,
    bookings.start_date,
    bookings.end_date
FROM 
    bookings
LEFT JOIN users ON bookings.user_id = users.id;

