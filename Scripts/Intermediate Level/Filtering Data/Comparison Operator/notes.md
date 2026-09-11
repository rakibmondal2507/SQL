# Comparison Operators in SQL

**Comparison operators** are used in the `WHERE` clause to compare one value against another. They check whether a condition is `TRUE` or `FALSE`, and only rows where the condition is `TRUE` are returned.

## List of Comparison Operators

| Operator | Meaning | Example |
|----------|----------|---------|
| `=` | Equal to | `age = 25` |
| `<>` or `!=` | Not equal to | `country <> 'India'` |
| `>` | Greater than | `salary > 50000` |
| `>=` | Greater than or equal to | `salary >= 50000` |
| `<` | Less than | `age < 18` |
| `<=` | Less than or equal to | `age <= 18` |

## Example Query
```sql
SELECT first_name, salary
FROM employees
WHERE salary >= 50000;
```
This returns all employees whose salary is **50000 or more**.

## Key Points
- Used mainly inside the `WHERE` clause to filter rows.
- Can be applied to numbers, dates, and text (strings are compared alphabetically).
- Both `<>` and `!=` mean the same thing (not equal) — `<>` is the SQL standard, `!=` is widely supported too.
- Often combined with **logical operators** (`AND`, `OR`, `NOT`) to build more complex conditions.
