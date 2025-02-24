USE pizzeria;

INSERT INTO provinces (name_province)
VALUES
('Barcelona'),
('Madrid'),
('Valencia');

INSERT INTO cities (name_city, province_id)
VALUES
('Barcelona', 1),
('Hospitalet de LLobregat', 1),
('Madrid', 2),
('Móstoles', 2),
('Valencia', 3),
('Gandía', 3);

INSERT INTO customers (name_customer, surname_customer, address_customer, postal_code_customer,
city_customer_id, phone_customer)
VALUES
('Cliente 1', 'Hernández', 'Quinto pino 5  7ºC', '08902', 1, '539434809'),
('Cliente 2', 'Fernández', 'Mano derecha 327 Sob.Ático 5ª','08903', 2, '448525718 '),
('Cliente 3','González', 'Al fondo 22  3ºB', '28937', 4, '357616627'),
('Cliente 4','García', 'Al principio 23  2ºA', '28938', 4, '266707536'),
('Cliente 5','Muñóz', 'Al medio 219', '28012', 3, '175898445'),
('Cliente 6','Velázquez', 'Sincalle  s/n', '46701', 6, '084989354'),
('Cliente 7','Ferrero', 'De las gallinas 10 6ºD', '46001', 5,'993070263');

INSERT INTO stores (address_store, postal_code_store, city_store_id)
VALUES
('Calle Tienda 1', '08001', 1),
('Calle Tienda 2', '28002', 3),
('Calle Tienda 3', '46001', 5);

INSERT INTO employees (name_employee, surname_employee, nif_employee, phone_employee, type_employee, store_id)
VALUES
('Alfonso', 'Cocinas', '539434809J', '802161172', 'cook', 1),
('Beatriz', 'López', '448525718K', '711252081', 'cook', 2),
('Fernando', 'Nieto', '357616627L', '600141970', 'delivery', 3),
('José Ramón', 'Hernández', '266707536C', '599030869', 'cook', 3),
('Susana', 'Navas', '175898445L', '488929758', 'delivery', 2),
('Israel', 'Daza', '084989354X', '377818647', 'delivery', 1);

INSERT INTO pizza_categories (name_categorie)
VALUES
('Clásicas'),
('Especiales');

INSERT INTO products(name_product, product_type, image, price, categorie_id)
VALUES
('Pizza Margarita', 'pizza', 'margarita.jpg', 8.50, 1),
('Pizza Capricciosa', 'pizza', 'capricciosa.jpg', 10.50, 1),
('Pizza Delicata', 'pizza', 'delicata.jpg', 11.50, 2),
('Pizza Nórdica', 'pizza', 'nordica.jpg', 14.90, 2),
('Refresco', 'drink', 'refresco.jpg', 2.50, NULL),
('Cerveza', 'drink', 'cerveza.jpg', 2.50, null);

INSERT INTO orders (date_hour, order_type, total_price, customer_order_id, store_order_id, delivery_order_id, delivery_time)
VALUES
('2025-01-01 12:00:00', 'home', 22.00, 1, 1, 6, '2025-01-01 12:30:00'),
('2025-01-02 13:00:00', 'pick_up', 11.50, 2, 1, NULL, NULL),
('2025-01-03 12:30:00', 'home', 29.50, 3, 2, 5, '2025-01-03 13:30:00'),
('2025-01-03 13:00:00', 'pick_up', 11.50, 4, 2, NULL, NULL),
('2025-01-03 13:10:00', 'home', 18.00, 5, 2, 5, '2025-01-03 13:30:00'),
('2025-01-04 13:00:00', 'pick_up', 13.50, 6, 3, NULL, NULL),
('2025-01-04 13:10:00', 'home', 45.30, 7, 3, 3, '2025-01-04 13:30:00'),
('2025-01-04 13:11:00', 'pick_up', 16.50, 2, 1, NULL, NULL),
('2025-01-04 13:20:00', 'home', 42.80, 4, 2, 5, '2025-01-04 13:30:00'),
('2025-01-05 12:12:00', 'pick_up', 13.50, 6, 3, NULL, NULL);

INSERT INTO order_detail(order_detail_id , product_detail_id, amount)
VALUES
(1,1,2),
(1,5,2),
(2,3,1),
(3,1,1),
(3,2,2),
(4,3,1),
(5, 2, 1), 
(5, 5, 2), 
(5, 6, 1),
(6, 1, 1),
(6, 5, 1),
(6, 6, 1),
(7, 4, 2),
(7, 2, 1),
(7, 5, 2),
(8, 3, 1),
(8, 5, 1),
(8, 6, 1),
(9, 4, 2),
(9, 2, 1), 
(9, 6, 1), 
(10, 1, 1), 
(10, 5, 1), 
(10, 6, 1); 

