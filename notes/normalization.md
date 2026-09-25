# Database Normalization

Normalization is used to organize data and reduce duplication.

## First Normal Form (1NF)

A table should:
- Have unique rows.
- Store one value in each cell.
- Avoid repeating groups.

## Second Normal Form (2NF)

A table should:
- Already be in 1NF.
- Remove partial dependency.

## Third Normal Form (3NF)

A table should:
- Already be in 2NF.
- Remove transitive dependency.

## Simple Example

Instead of storing a department name repeatedly in every student record, create a separate `departments` table and connect it with a foreign key.

This reduces duplicate data and makes updates easier.
