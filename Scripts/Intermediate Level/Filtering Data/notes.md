# SQL `WHERE` Operators

The `WHERE` clause in SQL supports several categories of operators used to filter records.

## 1. Comparison Operators
Used to compare a column's value against a given value.

| Operator | Meaning |
|----------|---------|
| `=` | Equal to |
| `<>` or `!=` | Not equal to |
| `>` | Greater than |
| `>=` | Greater than or equal to |
| `<` | Less than |
| `<=` | Less than or equal to |

## 2. Logical Operators
Used to combine multiple conditions.

| Operator | Meaning |
|----------|---------|
| `AND` | True if all combined conditions are true |
| `OR` | True if any combined condition is true |
| `NOT` | Reverses the result of a condition |

## 3. Range Operator
Used to filter values within a specific range.

| Operator | Meaning |
|----------|---------|
| `BETWEEN` | Selects values within a given range (inclusive) |

**Example:**
```sql
SELECT * FROM employees WHERE salary BETWEEN 30000 AND 50000;
```

## 4. Membership Operator
Used to check if a value matches any value in a list.

| Operator | Meaning |
|----------|---------|
| `IN` | Matches any value in a specified list |
| `NOT IN` | Excludes values in a specified list |

**Example:**
```sql
SELECT * FROM customers WHERE country IN ('India', 'USA', 'UK');
```

## 5. Search Operator
Used for pattern matching in text.

| Operator | Meaning |
|----------|---------|
| `LIKE` | Matches a specified pattern (used with wildcards `%` and `_`) |

**Example:**
```sql
SELECT * FROM products WHERE product_name LIKE 'A%';
```

---

### Summary Diagram
```
WHERE operators
├── Comparison Operators   → =, <>, !=, >, >=, <, <=
├── Logical Operators      → AND, OR, NOT
├── Range Operator         → BETWEEN
├── Membership Operator    → IN, NOT IN
└── Search Operator        → LIKE
```
