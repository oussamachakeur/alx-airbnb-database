# Airbnb Database Specification

This document outlines the entities, attributes, constraints, and indexing used in the design of an Airbnb-like database system.

---

## 📘 Entities and Attributes

### 🧑 User
- `user_id`: UUID, Primary Key, Indexed
- `first_name`: VARCHAR, NOT NULL
- `last_name`: VARCHAR, NOT NULL
- `email`: VARCHAR, UNIQUE, NOT NULL
- `password_hash`: VARCHAR, NOT NULL
- `phone_number`: VARCHAR, NULL
- `role`: ENUM (guest, host, admin), NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

### 🏠 Property
- `property_id`: UUID, Primary Key, Indexed
- `host_id`: UUID, Foreign Key → User(user_id)
- `name`: VARCHAR, NOT NULL
- `description`: TEXT, NOT NULL
- `location`: VARCHAR, NOT NULL
- `pricepernight`: DECIMAL, NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- `updated_at`: TIMESTAMP, ON UPDATE CURRENT_TIMESTAMP

---

### 📅 Booking
- `booking_id`: UUID, Primary Key, Indexed
- `property_id`: UUID, Foreign Key → Property(property_id)
- `user_id`: UUID, Foreign Key → User(user_id)
- `start_date`: DATE, NOT NULL
- `end_date`: DATE, NOT NULL
- `total_price`: DECIMAL, NOT NULL
- `status`: ENUM (pending, confirmed, canceled), NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

### 💳 Payment
- `payment_id`: UUID, Primary Key, Indexed
- `booking_id`: UUID, Foreign Key → Booking(booking_id)
- `amount`: DECIMAL, NOT NULL
- `payment_date`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP
- `payment_method`: ENUM (credit_card, paypal, stripe), NOT NULL

---

### ✍️ Review
- `review_id`: UUID, Primary Key, Indexed
- `property_id`: UUID, Foreign Key → Property(property_id)
- `user_id`: UUID, Foreign Key → User(user_id)
- `rating`: INTEGER (1 to 5), NOT NULL
- `comment`: TEXT, NOT NULL
- `created_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

### 💬 Message
- `message_id`: UUID, Primary Key, Indexed
- `sender_id`: UUID, Foreign Key → User(user_id)
- `recipient_id`: UUID, Foreign Key → User(user_id)
- `message_body`: TEXT, NOT NULL
- `sent_at`: TIMESTAMP, DEFAULT CURRENT_TIMESTAMP

---

## 🔐 Constraints

### User Table
- Unique constraint on `email`
- NOT NULL constraints on required fields

### Property Table
- FK constraint on `host_id` referencing `User`
- NOT NULL on essential attributes

### Booking Table
- FK on `property_id` and `user_id`
- `status`: must be `pending`, `confirmed`, or `canceled`

### Payment Table
- FK on `booking_id`

### Review Table
- FK on `property_id` and `user_id`
- `rating`: check between 1 and 5

### Message Table
- FK on `sender_id` and `recipient_id`

---

## ⚡ Indexing Strategy

- Primary keys: Automatically indexed
- Additional indexes:
  - `email` (User table)
  - `property_id` (Property, Booking)
  - `booking_id` (Booking, Payment)

---

## 📌 ER Diagram

Diagram file: `ERD.drawio` or `ERD.png`  
Tool used: Draw.io / dbdiagram.io / Lucidchart (any of these are acceptable)

