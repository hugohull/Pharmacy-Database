CREATE VIEW Customer_Order_Restricted_Info AS
SELECT customer.customer_number,
CONCAT(customer.customer_first_name,' ', customer.customer_last_name) AS 'Full name',
CONCAT(customer.customer_address_line_1,' ',customer.customer_address_line_2, ' ',customer.customer_postal_code, ' ', customer.customer_country) AS 'Full address',
prescription_order.order_status,
prescription_order.shipped_date,
order_information.quantity_ordered
FROM customer, prescription_order, order_information
WHERE customer_credit_limit_number > 1000 AND 
shipped_date < '2010-01-01' AND 
customer.customer_number = prescription_order.pharmaceutical_customer_number AND 
prescription_order.order_number = order_information.order_number;

SELECT * FROM Customer_Order_Restricted_Info;

DROP VIEW Customer_Order_Restricted_Info;

DROP DATABASE pharmaceutical_company
