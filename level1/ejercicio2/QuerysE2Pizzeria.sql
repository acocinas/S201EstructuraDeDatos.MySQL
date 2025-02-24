USE pizzeria;

SELECT
    c.name_city AS localidad,
    SUM(od.amount) AS cantidad_bebidas_vendidas
FROM
    order_detail od
JOIN
    products p ON od.product_detail_id = p.id_product
JOIN
    orders o ON od.order_detail_id = o.id_order
JOIN
    stores s ON o.store_order_id = s.id_store
JOIN
    cities c ON s.city_store_id = c.id_city
WHERE
    p.product_type = 'drink'  
GROUP BY
    c.name_city;
    
    SELECT
    e.name_employee AS nombre_empleado,
    e.surname_employee AS apellidos_empleado,
    COUNT(o.id_order) AS cantidad_pedidos
FROM
    employees e
LEFT JOIN
    orders o ON e.id_employee = o.delivery_order_id
WHERE
    e.id_employee = 5
GROUP BY
    e.id_employee;

