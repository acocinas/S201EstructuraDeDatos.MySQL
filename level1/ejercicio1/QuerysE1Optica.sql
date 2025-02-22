USE optica;

SELECT 
    c.id_customer,
    ci.name AS customer_name,
    COUNT(s.id_sale) AS total_invoices
FROM sale s
JOIN customer c ON s.customer_id = c.id_customer
JOIN contact_info ci ON c.contact_id = ci.id_contact 
WHERE s.sale_date BETWEEN '2025-01-01' AND '2026-01-01'
    AND c.id_customer = 3
GROUP BY c.id_customer, ci.name;

SELECT DISTINCT
    g.id_glasses,
    g.frame_type,
    g.frame_color,
    g.left_lens_color,
    g.right_lens_color,
    g.price
FROM
    optica.sale s
JOIN
    optica.employee e ON s.employee_id = e.id_employee
JOIN
    optica.glasses g ON s.glasses_id = g.id_glasses
WHERE
    e.id_employee = 3  
    AND YEAR(s.sale_date) = 2025;  

SELECT DISTINCT
    s.id_supplier AS supplier_id,
    s.nif AS supplier_nif,
    ci.name AS supplier_name,
    ci.phone AS supplier_phone,
    ci.city AS supplier_city,
    ci.country AS supplier_country
FROM
    optica.sale sa
JOIN
    optica.glasses g ON sa.glasses_id = g.id_glasses
JOIN
    optica.brand b ON g.brand_id = b.id_brand
JOIN
    optica.supplier s ON b.supplier_id = s.id_supplier
JOIN
    optica.contact_info ci ON s.fk_supplier_contact_id = ci.id_contact;