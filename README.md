# ConstructionDB

A SQL Server database modeling a construction company's projects, contractors, and payments.

## Schema

| Table | Description |
|-------|-------------|
| Projects | Construction projects with budget and status tracking |
| Contractors | Contractor companies and contact information |
| Payments | Payment transactions between projects and contractors |

## Relationships

- Project 1:N Payments (one project has many payments)
- Contractor 1:N Payments (one contractor receives many payments)

## Files

```
ConstructionDB/
├── schema.sql                  -- Database and table definitions
├── seed.sql                    -- Sample data
├── queries/
│   └── 01__selects.sql    -- SELECT queries
└── README.md
```

## Setup

Requires SQL Server or SQL Server Express.

```sql
-- Run in order:
-- 1. schema.sql
-- 2. seed.sql
```

## Author

Tiger Schueler
