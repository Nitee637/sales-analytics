PRAGMA foreign_keys = ON;
CREATE TABLE customers (
  customer_id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name TEXT, last_name TEXT, email TEXT UNIQUE,
  signup_date DATE, city TEXT, state TEXT, country TEXT
);
CREATE TABLE products (
  product_id INTEGER PRIMARY KEY AUTOINCREMENT,
  name TEXT, category TEXT, price REAL, cost REAL
);
CREATE TABLE orders (
  order_id INTEGER PRIMARY KEY AUTOINCREMENT,
  customer_id INTEGER, order_date DATE, total_amount REAL, status TEXT, promo_code TEXT,
  FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);
CREATE TABLE order_items (
  order_item_id INTEGER PRIMARY KEY AUTOINCREMENT,
  order_id INTEGER, product_id INTEGER, quantity INTEGER, unit_price REAL, total_price REAL,
  FOREIGN KEY(order_id) REFERENCES orders(order_id),
  FOREIGN KEY(product_id) REFERENCES products(product_id)
);
