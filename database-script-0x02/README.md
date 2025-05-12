# Sample Data for Airbnb Database

This directory contains SQL scripts to populate the Airbnb database with sample data.

## Files

- `seed.sql`: SQL script with `INSERT` statements for users, properties, bookings, etc.
- `README.md`: This file.

## Sample Entities

- 3 Users (2 guests, 1 host)
- 2 Properties (both hosted by the same user)
- 2 Bookings with different statuses
- 1 Completed Payment
- 1 Review
- 1 Message exchange

## Usage

Make sure the schema is already created before running the seed file.

```bash
psql -d your_database_name -f schema.sql
psql -d your_database_name -f seed.sql
