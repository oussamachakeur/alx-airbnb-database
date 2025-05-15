-- Create a partitioned Booking table partitioned by range on start_date
CREATE TABLE Booking_partitioned (
    booking_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    property_id INT NOT NULL,
    start_date DATE NOT NULL,
    end_date DATE NOT NULL,
    payment_id INT,
    -- other columns as needed
)
PARTITION BY RANGE (start_date);

-- Create partitions for specific date ranges
CREATE TABLE Booking_2023 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2023-01-01') TO ('2024-01-01');

CREATE TABLE Booking_2024_Q1 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2024-01-01') TO ('2024-04-01');

CREATE TABLE Booking_2024_Q2 PARTITION OF Booking_partitioned
    FOR VALUES FROM ('2024-04-01') TO ('2024-07-01');

-- Add more partitions as needed...

JOIN properties p ON b.property_id = p.id
JOIN payments pay ON b.payment_id = pay.id
WHERE b.status = 'confirmed'
AND pay.status = 'completed';
