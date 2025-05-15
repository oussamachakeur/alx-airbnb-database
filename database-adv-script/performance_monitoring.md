EXPLAIN ANALYZE
SELECT b.booking_id, u.user_name, p.property_name, pay.payment_status
FROM Booking b
JOIN Users u ON b.user_id = u.user_id
JOIN Properties p ON b.property_id = p.property_id
LEFT JOIN Payments pay ON b.payment_id = pay.payment_id;


CREATE INDEX idx_booking_user_id ON Booking(user_id);
CREATE INDEX idx_booking_property_id ON Booking(property_id);
CREATE INDEX idx_booking_payment_id ON Booking(payment_id);
