-- Query 1: Total bookings per user
SELECT 
    users.id AS user_id,
    users.name AS user_name,
    COUNT(bookings.id) AS total_bookings
FROM 
    users
LEFT JOIN 
    bookings ON users.id = bookings.user_id
GROUP BY 
    users.id, users.name
ORDER BY 
    total_bookings DESC;


-- Query 2: Rank properties by total bookings
-- Query: Rank properties by total bookings using ROW_NUMBER()
SELECT 
    property_id,
    title,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS booking_rank
FROM (
    SELECT 
        p.id AS property_id,
        p.title,
        COUNT(b.id) AS total_bookings
    FROM 
        properties p
    LEFT JOIN 
        bookings b ON p.id = b.property_id
    GROUP BY 
        p.id, p.title
) AS property_booking_counts
ORDER BY booking_rank;
