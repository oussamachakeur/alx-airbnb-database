# Normalization Steps for ALX Airbnb Database

## Objective
Ensure that the database schema is fully normalized to **Third Normal Form (3NF)** to eliminate redundancy and improve data integrity.

---

## Step 1: First Normal Form (1NF)
- All attributes contain only atomic (indivisible) values.
- Each table has a primary key.
- ✅ All tables comply with 1NF.

---

## Step 2: Second Normal Form (2NF)
- Achieved 1NF.
- All non-key attributes are fully functionally dependent on the entire primary key.
- All tables use single-column primary keys (UUIDs).
- ✅ No partial dependencies found.

---

## Step 3: Third Normal Form (3NF)
- Achieved 2NF.
- No transitive dependencies (non-key attributes depending on other non-key attributes).
- All relationships are represented using foreign keys.
- ✅ Schema satisfies 3NF.

---

## Conclusion
The database schema adheres to the principles of **Third Normal Form (3NF)**. Each entity is well-defined, redundancy is minimized, and the design supports data integrity and scalability.
