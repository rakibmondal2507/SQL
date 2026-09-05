# Delete syntax

````
DELETE FROM table_name
WHERE <condition>
````
<mark>NOTE</mark> : Always use **WHERE** to avoid DELETING all rows unintentionally




# DELETE vs TRUNCATE vs DROP in SQL

## 1. DELETE

`DELETE` removes rows from a table.

```sql
DELETE FROM employees;
```

You can delete specific rows using `WHERE`:

```sql
DELETE FROM employees
WHERE department = 'IT';
```

### Key points

* Can use `WHERE`
* Can delete specific rows
* Can delete all rows
* Generally slower than `TRUNCATE` for clearing an entire table
* Table structure remains

---

## 2. TRUNCATE TABLE

`TRUNCATE TABLE` removes **all rows** from a table.

```sql
TRUNCATE TABLE employees;
```

### Key points

* Cannot use `WHERE`
* Removes all rows
* Generally faster for clearing an entire table
* Table structure remains
* Often resets the auto-increment/identity counter, depending on the database
* Rollback behavior depends on the database system

---

## 3. DROP TABLE

`DROP TABLE` removes the **entire table**, including its structure.

```sql
DROP TABLE employees;
```

After this, the table no longer exists.

---

## Quick Comparison

| Feature                           | DELETE    | TRUNCATE | DROP |
| --------------------------------- | --------- | -------- | ---- |
| Removes rows                      | ✅         | ✅        | ✅    |
| Removes table structure           | ❌         | ❌        | ✅    |
| `WHERE` allowed                   | ✅         | ❌        | ❌    |
| Deletes selected rows             | ✅         | ❌        | ❌    |
| Deletes all rows                  | ✅         | ✅        | ✅    |
| Usually faster for clearing table | ❌         | ✅        | ✅    |
| Table still exists afterward      | ✅         | ✅        | ❌    |
| Resets identity/auto-increment    | Usually ❌ | Often ✅  | N/A  |

---

## Easy Way to Remember

### DELETE → Remove rows

```sql
DELETE FROM students
WHERE id = 5;
```

👉 Removes a specific row.

### TRUNCATE → Empty the table

```sql
TRUNCATE TABLE students;
```

👉 Removes all rows but keeps the table.

### DROP → Remove the table

```sql
DROP TABLE students;
```

👉 Removes the table completely.

---

## Summary

```text
DELETE    → Remove rows
TRUNCATE  → Empty the table
DROP      → Delete the table itself
```
