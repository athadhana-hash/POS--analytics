#Gunakan database pos_db
USE pos_db;

#total penjualan perhari
SELECT 
DATE(sale_date) AS tanggal,
SUM(total) AS total_penjualan
FROM sales
GROUP BY DATE(sale_date)
ORDER BY tanggal;

#Cek Produk paling laris
SELECT
products.product_name,
SUM(sale_items.quantity) AS total_penjualan
FROM sale_items
JOIN products ON sale_items.product_id = products.product_id 
GROUP BY products.product_name
ORDER BY subtotal DESC
LIMIT 10;

#Pendapatan per Produk
SELECT 
products.product_name,
SUM(sale_items.subtotal) AS revenue
FROM sale_items
JOIN products ON sale_items.product_id  = products.product_id
GROUP BY products.product_name
ORDER BY revenue DESC;

#Penjualan per kasir
SELECT
users.name AS kasir,
COUNT(sales.sale_id) AS jumlah_transaksi,
SUM(sales.total) AS total_penjualan
FROM sales
JOIN users ON sales.user_id = users.user_id
GROUP BY users.name
ORDER BY total_penjualan DESC;

#Rata-rata nilai transaksi
SELECT
AVG(total) AS rata_rata_transaksi
FROM sales;

#Customer dengan pembelian terbesar
SELECT
customers.customer_name,
SUM(sales.total) AS total_belanja
FROM sales
JOIN customers ON sales.customer_id = customers.customer_id 
GROUP BY customers.customer_id 
ORDER BY total_belanja DESC
LIMIT 10;

#Metode pembayaran paling sering
SELECT
payment_methods.method_name,
SUM(payments.payment_id) as payment_terbanyak
FROM payments
JOIN payment_methods ON payments.payment_method_id  = payment_methods.payment_method_id
GROUP BY payment_methods.method_name
ORDER BY payment_terbanyak DESC;

#Penjualan per kategori produk
SELECT
categories.category_name,
SUM(sale_items.subtotal) AS jumlah_kategori
FROM sale_items
JOIN products ON sale_items.product_id = products.product_id 
JOIN categories ON products.category_id  = categories.category_id 
GROUP BY categories.category_name
ORDER BY jumlah_kategori DESC;

#Jam penjualan tersibuk
SELECT
HOUR(sale_date) AS jam,
COUNT(sale_id) AS jumlah_transaksi
FROM sales
GROUP BY jam 
ORDER BY jumlah_transaksi DESC;

#Produk jarang terjual
SELECT
products.product_id,
IFNULL(SUM(sale_items.quantity),0) AS total_terjual
FROM products
LEFT JOIN sale_items ON products.product_id = sale_items.product_id
GROUP BY products.product_name
ORDER BY total_terjual DESC;
