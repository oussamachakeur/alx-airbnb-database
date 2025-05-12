# Database Schema for ALX Airbnb Clone

This directory contains the SQL schema definition for the Airbnb project.

## Files

- `schema.sql`: SQL script to create all tables, constraints, and indexes.
- `README.md`: This file.

## Entities

- `users`: Stores user info (guests, hosts, admins).
- `properties`: Listings managed by hosts.
- `bookings`: Booking records linked to users and properties.
- `payments`: Payment records tied to bookings.
- `reviews`: Property reviews by users.
- `messages`: Direct messages between users.

## Notes

- Primary keys are UUIDs.
- Timestamps default to current time.
- Foreign key relationships ensure referential integrity.
- Indexes improve query performance on key columns.
