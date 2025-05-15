-- Query 1: Total number of bookings made by each user
SELECT 
    u.id AS user_id,
    u.name AS user_name,
    COUNT(b.id) AS total_bookings
FROM 
    users u
LEFT JOIN 
    bookings b ON u.id = b.user_id
GROUP BY 
    u.id, u.name
ORDER BY 
    total_bookings DESC;

-- Query 2: Rank properties using ROW_NUMBER()
SELECT 
    property_id,
    title,
    total_bookings,
    ROW_NUMBER() OVER (ORDER BY total_bookings DESC) AS row_number_rank
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
) AS ranked_properties_row;

-- Query 3: Rank properties using RANK()
SELECT 
    property_id,
    title,
    total_bookings,
    RANK() OVER (ORDER BY total_bookings DESC) AS rank_order
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
) AS ranked_properties_rank;
