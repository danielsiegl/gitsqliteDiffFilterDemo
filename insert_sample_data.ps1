# PowerShell script to insert sample data into smoketest.db using sqlite3
# Make sure sqlite3.exe is in your PATH

# Insert sample data into departments
echo "INSERT INTO departments (id, name) VALUES (1, 'HR'), (2, 'Engineering'), (3, 'Sales');" | sqlite3 smoketest.db

# Insert sample data into employees
echo "INSERT INTO employees (id, name, department_id) VALUES (1, 'Alice', 1), (2, 'Bob', 2), (3, 'Charlie', 3);" | sqlite3 smoketest.db

# Insert sample data into products
echo "INSERT INTO products (id, name, price) VALUES (1, 'Widget', 9.99), (2, 'Gadget', 19.99);" | sqlite3 smoketest.db

# Insert sample data into orders
echo "INSERT INTO orders (id, product_id, quantity) VALUES (1, 1, 5), (2, 2, 2);" | sqlite3 smoketest.db

# Insert sample data into test
echo "INSERT INTO test (id, value) VALUES (1, 'foo'), (2, 'bar');" | sqlite3 smoketest.db

echo "Sample data inserted into smoketest.db."
