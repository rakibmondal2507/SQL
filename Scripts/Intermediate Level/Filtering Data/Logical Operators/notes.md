# Logical Operators in SQL

**Logical operators** are used in the `WHERE` clause to combine two or more conditions. They determine whether the overall condition evaluates to `TRUE` or `FALSE`, and only rows where the combined condition is `TRUE` are returned.

## List of Logical Operators

| Operator | Meaning |
|----------|---------|
| `AND` | Returns rows where **all** combined conditions are true |
| `OR` | Returns rows where **at least one** condition is true |
| `NOT` | Reverses (negates) the result of a condition |

## Examples

**AND** — all conditions must be true
```sql
SELECT * FROM employees
WHERE department = 'Sales' AND salary > 50000;
```
Returns Sales employees earning more than 50000.

**OR** — at least one condition must be true
```sql
SELECT * FROM employees
WHERE department = 'Sales' OR department = 'Marketing';
```
Returns employees who are in Sales **or** Marketing.

**NOT** — reverses a condition
```sql
SELECT * FROM employees
WHERE NOT department = 'Sales';
```
Returns employees who are **not** in Sales.

## Key Points
- `AND` narrows results (stricter — more conditions must match).
- `OR` widens results (looser — any condition can match).
- `NOT` flips true/false, often used with other operators, e.g. `NOT IN`, `NOT BETWEEN`, `NOT LIKE`.
- Multiple logical operators can be combined; use parentheses `()` to control the order of evaluation.

```sql
SELECT * FROM employees
WHERE (department = 'Sales' OR department = 'Marketing') AND salary > 50000;
```
