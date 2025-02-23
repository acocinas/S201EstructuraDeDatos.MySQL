CREATE SCHEMA IF NOT EXISTS pizzeria;
USE pizzeria;

CREATE TABLE IF NOT EXISTS provinces (
    id_province INT AUTO_INCREMENT PRIMARY KEY,
    name_province VARCHAR(60) NOT NULL
);

CREATE TABLE IF NOT EXISTS cities (
    id_city INT AUTO_INCREMENT PRIMARY KEY,
    name_city VARCHAR(100) NOT NULL,
    province_id INT,
    FOREIGN KEY (province_id)
        REFERENCES provinces (id_province)
);

CREATE TABLE IF NOT EXISTS customers (
    id_customer INT AUTO_INCREMENT PRIMARY KEY,
    name_customer VARCHAR(100) NOT NULL,
    surname_customer VARCHAR(100) NOT NULL,
    address_customer VARCHAR(200) NOT NULL,
    postal_code_customer VARCHAR(10) NOT NULL,
    city_customer_id INT,
    phone_customer VARCHAR(15) NOT NULL,
    FOREIGN KEY (city_customer_id)
        REFERENCES cities (id_city)
);

CREATE TABLE IF NOT EXISTS stores (
    id_store INT AUTO_INCREMENT PRIMARY KEY,
    address_store VARCHAR(200) NOT NULL,
    postal_code_store VARCHAR(10) NOT NULL,
    city_store_id INT,
    FOREIGN KEY (city_store_id)
        REFERENCES cities (id_city)
);

CREATE TABLE IF NOT EXISTS employees (
    id_employee INT AUTO_INCREMENT PRIMARY KEY,
    name_employee VARCHAR(100) NOT NULL,
    surname_employee VARCHAR(100) NOT NULL,
    nif_employee VARCHAR(10) NOT NULL UNIQUE,
    phone_employee VARCHAR(15) NOT NULL,
    type_employee ENUM('cook', 'delivery') NOT NULL,
    store_id INT,
    FOREIGN KEY (store_id)
        REFERENCES stores (id_store)
);

CREATE TABLE IF NOT EXISTS pizza_categories (
    id_categorie INT AUTO_INCREMENT PRIMARY KEY,
    name_categorie VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS products (
    id_product INT AUTO_INCREMENT PRIMARY KEY,
    name_product VARCHAR(100) NOT NULL,
    description_product TEXT,
    image VARCHAR(200),
    price DECIMAL(10 , 2 ) NOT NULL,
    categorie_id INT,
    FOREIGN KEY (categorie_id)
        REFERENCES pizza_categories (id_categorie)
);

CREATE TABLE IF NOT EXISTS orders (
    id_order INT AUTO_INCREMENT PRIMARY KEY,
    date_hour DATETIME NOT NULL,
    order_type ENUM('pick_up', 'home') NOT NULL,
    total_price DECIMAL(10 , 2 ) NOT NULL,
    customer_order_id INT,
    store_order_id INT,
    delivery_order_id INT,
    delivery_time DATETIME,
    FOREIGN KEY (customer_order_id)
        REFERENCES customers (id_customer),
    FOREIGN KEY (store_order_id)
        REFERENCES stores (id_store),
    FOREIGN KEY (delivery_order_id)
        REFERENCES employees (id_employee)
);

CREATE TABLE IF NOT EXISTS order_detail (
    id_detail INT AUTO_INCREMENT PRIMARY KEY,
    order_detail_id INT,
    product_detail_id INT,
    amount INT NOT NULL,
    FOREIGN KEY (order_detail_id)
        REFERENCES orders (id_order),
    FOREIGN KEY (product_detail_id)
        REFERENCES products (id_product)
);

