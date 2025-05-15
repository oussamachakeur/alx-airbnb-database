-- Query 1: Properties with average rating > 4.0
SELECT 
    properties.id,
    properties.title
FROM 
    properties
WHERE 
    properties.id IN (
        SELECT 
            reviews.property_id
        FROM 
            reviews
        GROUP BY 
            reviews.property_id
        HAVING 
            AVG(reviews.rating) > 4.0
    )
ORDER BY properties.id;

-- Query 2: Users with more than 3 bookings (correlated subquery)
SELECT 
    u.id,
    u.name
FROM 
    users u
WHERE 
    (
        SELECT 
            COUNT(*) 
        FROM 
            bookings b
        WHERE 
            b.user_id = u.id
    ) > 3
ORDER BY u.id;

