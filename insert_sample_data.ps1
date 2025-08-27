# PowerShell script to insert sample data into smoketest.db using sqlite3
# Make sure sqlite3.exe is in your PATH


# Insert sample data into departments
Write-Output "INSERT INTO departments (dept_id, dept_name, manager_id, budget) VALUES (1, 'HR', NULL, 50000), (2, 'Engineering', NULL, 150000), (3, 'Sales', NULL, 75000);" | sqlite3 smoketest.db

# Insert sample data into employees
Write-Output "INSERT INTO employees (emp_id, first_name, last_name, email, hire_date, salary, department_id) VALUES (1, 'Alice', 'Smith', 'alice@example.com', '2022-01-10', 60000, 1), (2, 'Bob', 'Jones', 'bob@example.com', '2023-03-15', 90000, 2), (3, 'Charlie', 'Brown', 'charlie@example.com', '2024-07-20', 70000, 3);" | sqlite3 smoketest.db

# Insert sample data into products
Write-Output "INSERT INTO products (name, price, category, in_stock) VALUES ('Widget', 9.99, 'Tools', 1), ('Gadget', 19.99, 'Electronics', 1);" | sqlite3 smoketest.db

# Insert sample data into orders
Write-Output "INSERT INTO orders (customer_name, order_date, total_amount, status) VALUES ('Alice Smith', '2025-08-01', 49.95, 'pending'), ('Bob Jones', '2025-08-02', 39.98, 'shipped');" | sqlite3 smoketest.db

# Insert sample data into test
Write-Output "INSERT INTO test (id, name) VALUES (1, 'foo'), (2, 'bar');" | sqlite3 smoketest.db

Write-Output "Sample data inserted into smoketest.db."
