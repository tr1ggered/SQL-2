SELECT po.order_date,
       p.name || ' (age:' || p.age || ')' AS person_information
FROM (SELECT id, person_id, menu_id, order_date FROM person_order) AS po
NATURAL JOIN (SELECT id AS person_id, name, age, gender, address FROM person) AS p
ORDER BY order_date ASC, person_information ASC;