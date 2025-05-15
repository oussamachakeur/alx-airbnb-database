CREATE INDEX idx_user_id ON bookings(user_id);
CREATE INDEX idx_property_id ON bookings(property_id);
CREATE INDEX idx_review_property_id ON reviews(property_id);
CREATE INDEX idx_users_email ON users(email);


EXPLAIN ANALYZE
SELECT * FROM bookings WHERE user_id = 5;
