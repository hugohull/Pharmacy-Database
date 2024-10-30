CREATE DATABASE pharmaceutical_company;
USE pharmaceutical_company;

CREATE TABLE office (
office_code VARCHAR(15) PRIMARY KEY,
city VARCHAR(30) NOT NULL,
phone_number NUMERIC(15) NOT NULL,
address_line_1 VARCHAR(30) NOT NULL,
address_line_2 VARCHAR(30),
county VARCHAR(20),
country VARCHAR(40) NOT NULL,
postal_code VARCHAR(15) NOT NULL,
territory VARCHAR(35)
);

CREATE TABLE employee (
employee_number VARCHAR(15) PRIMARY KEY,
last_name VARCHAR(20) NOT NULL,
first_name VARCHAR(20) NOT NULL,
extension VARCHAR(10) NOT NULL,
office_code VARCHAR(15) NOT NULL,
CONSTRAINT emp_office_code FOREIGN KEY (office_code)  REFERENCES office(office_code),
job_title VARCHAR(30) NOT NULL,
email_address VARCHAR(40) NOT NULL,
reports_to VARCHAR(15),
CONSTRAINT fk_report_to FOREIGN KEY (reports_to) REFERENCES employee(employee_number)
);

CREATE TABLE customer (
customer_number VARCHAR(15) PRIMARY KEY,
representative_employee_number VARCHAR(15),
CONSTRAINT ref_emp_code FOREIGN KEY (representative_employee_number) REFERENCES employee(employee_number),
customer_first_name VARCHAR(20) NOT NULL,
customer_last_name VARCHAR(20) NOT NULL,
customer_phone_number NUMERIC(15),
customer_address_line_1 VARCHAR(30) NOT NULL,
customer_address_line_2 VARCHAR(30),
customer_city VARCHAR(40) NOT NULL,
customer_county VARCHAR(20) NOT NULL,
customer_postal_code VARCHAR(15) NOT NULL,
customer_country VARCHAR(40) NOT NULL,
customer_sales_amount NUMERIC(12, 2) NOT NULL,
customer_credit_limit_number NUMERIC(12, 2) NOT NULL
);

CREATE TABLE payment_information (
cheque_number NUMERIC(20) PRIMARY KEY,
customer_number VARCHAR(15) NOT NULL,
CONSTRAINT cust_num FOREIGN KEY (customer_number) REFERENCES customer(customer_number),
payment_date DATE,
amount_paid NUMERIC(12, 2)
);

CREATE TABLE prescription_order (
order_number NUMERIC(16) PRIMARY KEY,
pharmaceutical_customer_number VARCHAR(15) NOT NULL,
CONSTRAINT cust_number FOREIGN KEY (pharmaceutical_customer_number) REFERENCES customer(customer_number),
order_date DATE,
required_date DATE,
shipped_date DATE,
order_status VARCHAR(10),
comments VARCHAR(100)
);

CREATE TABLE product_line (
product_line_name VARCHAR(20) PRIMARY KEY,
product_line_text VARCHAR(40),
product_line_description VARCHAR(150),
website VARCHAR(60),
product_image VARCHAR(40)
);

CREATE TABLE product (
product_code VARCHAR(20) PRIMARY KEY,
product_name VARCHAR(20) NOT NULL,
product_line_name VARCHAR(20),
FOREIGN KEY (product_line_name) REFERENCES product_line(product_line_name),
scale_weight NUMERIC(7, 4),
vendor VARCHAR(20),
product_description VARCHAR(50),
quantity_in_stock NUMERIC(7),
buying_price NUMERIC(5, 2),
msrp NUMERIC(6, 2)
);

CREATE TABLE order_information (
order_line_number NUMERIC(20) PRIMARY KEY,
order_number NUMERIC(16) NOT NULL,
FOREIGN KEY (order_number) REFERENCES prescription_order(order_number),
product_code VARCHAR(20) NOT NULL,
FOREIGN KEY (product_code) REFERENCES product(product_code),
quantity_ordered VARCHAR(7) NOT NULL,
price NUMERIC(6,2)
);
