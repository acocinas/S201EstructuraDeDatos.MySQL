USE optica;

INSERT IGNORE INTO employee (name, phone, email)
VALUES
('Alfonso Cocinas', 539434809, 'holahola@gmail.com'),
('Beatriz López', 448525718, 'ciaociao@gmail.com'),
('Benito Hernández', 357616627, 'hellohello@gmail.com');

INSERT INTO contact_info (name, phone, street, number, floor, door, city, postal_code, country)
VALUES
('Cliente 1', 266707536, 'Quinto pino', 5, '7', 'C', 'Barcelona', '08002', 'España'),
('Cliente 2', 175898445, 'Mano derecha', 327, 'Sob.Ático', '5ª', 'Barcelona', '08008', 'España'),
('Cliente 3',084989354, 'Al fondo', 22, 'Entresuelo', '1ª', 'Barcelona', '08028', 'España'),
('Proveedor 1', 993070263, 'Calle c', 3, '', '', 'Barcelona', '08021', 'España'),
('Proveedor 2', 802161172, 'Calle D', 39, '', '', 'Barcelona', '08021', 'España');

INSERT IGNORE INTO customer(contact_id, email, registration_date, recommended_by)
VALUES
(1 , 'cliente1@ejemplo.com', '2025-01-13 09:57:36',1),
(2 , 'cliente2@ejemplo.es', '2025-01-22 22:01:09', 1),
(3 , 'cliente3@ejemplo.es', '2025-01-23 15:23:33', 2);

INSERT IGNORE INTO supplier( fk_supplier_contact_id , fax, nif)
VALUES
(4, '711252081', 'B09847392'),

(5, '620343990', 'B10756483'); 

INSERT IGNORE INTO brand(name, supplier_id)
VALUES
('Marca 1', 1),
('Marca 2', 2),
('Marca 3', 1);

INSERT IGNORE INTO glasses (brand_id, left_lens_prescription, right_lens_prescription,
 frame_type, frame_color, left_lens_color, right_lens_color, price)
 VALUES
 (1, 0, -0.5, 'floating', 'dark blue', 'polarizado oscuro', 'polarizado oscuro', 175),
 (2, -2, -1.75, 'plastic', 'marrón clásico', 'transparente', 'transparente', 168.75),
 (3, +0.75, +1, 'metal', 'negro', 'transparente', 'transparente', 149.90); 
 
INSERT INTO sale (customer_id, employee_id, glasses_id, sale_date)
VALUES
(1,2,3, '2025-02-02 10:25:47'),
(2,3,1, '2025-02-03 11:25:14'),
(3,2,2, '2025-02-04 22:01:19'),
(2,1,1, '2025-02-07 09:01:47'),
(3,1,2, '2025-02-08 13:09:40'),
(1,2,3, '2025-03-02 10:25:47'),
(2,3,1, '2025-03-03 11:25:14'),
(3,1,2, '2025-03-04 22:01:19'),
(1,1,1, '2025-03-07 09:01:47'),
(3,1,2, '2025-03-08 13:09:40'),
(1,2,3, '2025-04-02 10:25:47'),
(2,2,2, '2025-04-03 11:25:14'),
(3,2,2, '2025-04-04 22:01:19'),
(2,1,1, '2025-04-07 09:01:47'),
(3,3,3, '2025-04-08 13:09:40'),
(1,2,3, '2025-04-12 10:25:47'),
(2,3,1, '2025-04-13 11:25:14'),
(3,2,2, '2025-04-14 22:01:19'),
(2,1,1, '2025-04-17 09:01:47'),
(3,1,2, '2025-04-18 13:09:40');
