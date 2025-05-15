-- Index to speed up lookups by user_id in bookings
CREATE INDEX idx_bookings_user_id ON bookings(user_id);

-- Index to optimize property_id filtering in bookings
CREATE INDEX idx_bookings_property_id ON bookings(property_id);

-- Index to speed up joins or searches by email in users
CREATE INDEX idx_users_email ON users(email);

-- Index to optimize filtering by property_id in reviews
CREATE INDEX idx_reviews_property_id ON reviews(property_id);


-- Measure performance before/after index (example: query by user_id)
EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 1;

-- Measure performance for joining properties and reviews
EXPLAIN ANALYZE
SELECT p.id, p.name, r.rating
FROM properties p
LEFT JOIN reviews r ON p.id = r.property_id;

-- Measure performance when filtering users by email
EXPLAIN ANALYZE
SELECT * FROM users WHERE email = 'test@example.com';
