#Membuat tabel role
CREATE TABLE roles (
   role_id INT AUTO_INCREMENT PRIMARY KEY,
   role_name VARCHAR(100)
);

#Membuat tabel user
CREATE TABLE users (
   user_id INT AUTO_INCREMENT PRIMARY KEY,
   role_id INT,
   name VARCHAR(100),
   email VARCHAR(100),
   password VARCHAR(255),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
   FOREIGN KEY (role_id) REFERENCES roles(role_id)
);

#Membuat table kategori
CREATE TABLE categories (
   category_id INT AUTO_INCREMENT PRIMARY KEY,
   category_name VARCHAR(100)
);

#Membuat tabel supplier
CREATE TABLE suppliers (
   supplier_id INT AUTO_INCREMENT PRIMARY KEY,
   supplier_name VARCHAR(100),
   phone VARCHAR(20),
   address TEXT
);

#Membuat tabel produk
CREATE  TABLE products (
   product_id INT AUTO_INCREMENT PRIMARY KEY,
   category_id INT,
   supplier_id INT,
   product_name VARCHAR(150),
   price DECIMAL(10, 2),
   cost DECIMAL (10, 2),
   barcode VARCHAR(100),
   FOREIGN KEY (category_id) REFERENCES categories(category_id),
   FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

#Membuat tabel customer
CREATE TABLE customers (
   customer_id INT AUTO_INCREMENT PRIMARY KEY,
   customer_name VARCHAR(100),
   phone VARCHAR(20),
   email VARCHAR(100)
);

#Membuat tabel warehouse
CREATE TABLE warehouses (
   werehouse_id INT AUTO_INCREMENT PRIMARY KEY,
   werehouse_name VARCHAR(100),
   location VARCHAR(150)
);

#Membuat tabel stok
CREATE TABLE stock (
   stock_id INT AUTO_INCREMENT PRIMARY KEY,
   product_id INT,
   werehouse_id INT,
   quantity INT,
   FOREIGN KEY (product_id) REFERENCES products(product_id),
   FOREIGN KEY (werehouse_id) REFERENCES werehouses(werehouse_id)
);

#Membuat tabel pergerakan stok
CREATE TABLE stock_movements (
   movement_id INT AUTO_INCREMENT PRIMARY KEY,
   product_id INT,
   movement_type VARCHAR(50),
   quantity INT,
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
   FOREIGN KEY (product_id) REFERENCES products(product_id)
);

#Membuat tabel order 
CREATE TABLE purchase_orders (
   purchase_id INT AUTO_INCREMENT PRIMARY KEY,
   supplier_id INT,
   order_date DATE,
   status VARCHAR(50),
   FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

#Membuat tabel pembelian barang
CREATE TABLE purchase_items (
   purchase_item_id INT AUTO_INCREMENT PRIMARY KEY,
   purchase_id INT,
   product_id INT,
   quantity INT,
   price DECIMAL(10, 2),
   FOREIGN KEY (purchase_id) REFERENCES purchase_orders(purchase_id), 
   FOREIGN KEY (product_id) REFERENCES products(product_id) 
);

#Membuat tabel penjualan
CREATE TABLE sales (
   sale_id INT AUTO_INCREMENT PRIMARY KEY,
   user_id INT,
   customer_id INT,
   sale_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
   total decimal(10, 2),
   FOREIGN KEY (user_id) REFERENCES users(user_id),
   FOREIGN KEY (customer_id) REFERENCES customers(customer_id)   
);

#Membuat table penjualan barang
CREATE TABLE sale_item(
   sale_item_id INT AUTO_INCREMENT PRIMARY KEY,
   sale_id INT,
   product_id INT,
   quantity INT,
   price DECIMAL(10, 2),
   subtotal DECIMAL(10, 2),
   FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
   FOREIGN KEY (product_id) REFERENCES products(product_id)
);

#Membuat tabel metode pembayaran
CREATE TABLE payment_methods (
   payment_method_id INT AUTO_INCREMENT PRIMARY KEY,
   method_name VARCHAR(50)
);

#Membuat tabel Pembayaran
CREATE TABLE payments (
   payment_id INT AUTO_INCREMENT PRIMARY KEY,
   sale_id INT,
   payment_method_id INT,
   amount DECIMAL(10, 2),
   payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
   FOREIGN KEY (sale_id) REFERENCES sales(sale_id),
   FOREIGN KEY (payment_method_id) REFERENCES payment_methods(payment_method_id)
);

#Membuat tabel diskon
CREATE TABLE discounts (
   discount_id INT AUTO_INCREMENT PRIMARY KEY,
   discount_name VARCHAR(100),
   percentage DECIMAL(5, 2)
);

#Membuat tabel pajak
CREATE TABLE taxes (
   tax_id INT AUTO_INCREMENT PRIMARY KEY,
   tax_name VARCHAR(100),
   percentage DECIMAL(5, 2)
);

#Membuat tabel pengembalian
CREATE TABLE returns (
   return_id INT AUTO_INCREMENT PRIMARY KEY,
   sale_id INT,
   return_date DATE,
   reason TEXT,
   FOREIGN KEY (sale_id) REFERENCES sales(sale_id)
);

#Membuat tabel pengembalian barang
CREATE TABLE return_items (
   return_item_id INT AUTO_INCREMENT PRIMARY KEY,
   return_id INT,
   product_id INT,
   quantity INT,
   FOREIGN KEY (return_id) REFERENCES returns(return_id),
   FOREIGN KEY (product_id) REFERENCES products(product_id)
);

#Membuat tabel audit
CREATE TABLE audit_logs (
   log_id INT AUTO_INCREMENT PRIMARY KEY,
   user_id INT,
   action VARCHAR(255),
   created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP(),
   FOREIGN KEY (user_id) REFERENCES users(user_id)
);
