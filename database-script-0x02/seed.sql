-- Insert Users
INSERT INTO users (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('a1e22e2b-b0c1-4c55-9bba-a8b1341b9a10', 'Alice', 'Johnson', 'alice@example.com', 'hash1', '1234567890', 'host'),
  ('b2d44f4d-c2e2-4f11-9a00-cd2d12e3d91b', 'Bob', 'Smith', 'bob@example.com', 'hash2', '2345678901', 'guest'),
  ('c3f88a3e-e7d3-4a3c-a2d4-1de3e1b0a5fa', 'Charlie', 'Brown', 'charlie@example.com', 'hash3', NULL, 'guest');

-- Insert Properties
INSERT INTO properties (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('p1f00a00-bccc-4d33-8899-faae12345678', 'a1e22e2b-b0c1-4c55-9bba-a8b1341b9a10', 'Cozy Cabin', 'A quiet cabin in the woods', 'Colorado', 120.00),
  ('p2f11b11-dedd-4e44-9911-faae23456789', 'a1e22e2b-b0c1-4c55-9bba-a8b1341b9a10', 'Beachside Bungalow', 'Steps away from the ocean', 'California', 250.00);

-- Insert Bookings
INSERT INTO bookings (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('b0011001-aaaa-4f55-9999-caae98765432', 'p1f00a00-bccc-4d33-8899-faae12345678', 'b2d44f4d-c2e2-4f11-9a00-cd2d12e3d91b', '2025-06-01', '2025-06-05', 480.00, 'confirmed'),
  ('b0022002-bbbb-4f66-8888-ddee99887766', 'p2f11b11-dedd-4e44-9911-faae23456789', 'c3f88a3e-e7d3-4a3c-a2d4-1de3e1b0a5fa', '2025-07-10', '2025-07-15', 1250.00, 'pending');

-- Insert Payments
INSERT INTO payments (payment_id, booking_id, amount, payment_method)
VALUES
  ('pay001-abcd-4aaa-9999-aabbccddeeff', 'b0011001-aaaa-4f55-9999-caae98765432', 480.00, 'credit_card');

-- Insert Reviews
INSERT INTO reviews (review_id, property_id, user_id, rating, comment)
VALUES
  ('r001-aaaa-4444-bbbb-ccccdddd0001', 'p1f00a00-bccc-4d33-8899-faae12345678', 'b2d44f4d-c2e2-4f11-9a00-cd2d12e3d91b', 5, 'Loved the quiet and scenery!');

-- Insert Messages
INSERT INTO messages (message_id, sender_id, recipient_id, message_body)
VALUES
  ('m001-bbbb-5555-cccc-ddddeeee1111', 'b2d44f4d-c2e2-4f11-9a00-cd2d12e3d91b', 'a1e22e2b-b0c1-4c55-9bba-a8b1341b9a10', 'Hi Alice, is the cabin available in July?');
