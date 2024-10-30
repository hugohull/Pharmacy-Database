INSERT INTO office VALUES
('461924_E_UK', 'Leicester', '1234567890', '14 Lansdown Close', 'Building 1', 'Leicestershire', 'U.K.', 'LE1 3BF', 'England'),
('785058_S_UK', 'Glasgow', '0176548930', '3 Cherry Drive', 'Flat A', 'Lanarkshire', 'U.K.', 'G1 6YT', 'Scotland'),
('901234_I_FR', 'Paris', '0336799028', '175 Rue Lepic', 'Ground Floor', 'Hauts-de-Seine', 'France', '75018', 'Île-de-France'),
('901234_E_GR', 'Hamburg', '9917387391', '7 Lämmertwiete', 'A', 'Landkreise', 'Germany', '20095', 'Kreise');

INSERT INTO employee VALUES
('EMP_1', 'Hull', 'Hugo', '1A', '461924_E_UK', 'Manager', 'hugo-hull@email.com', NULL),
('EMP_7', 'Smith', 'James', '3C', '901234_I_FR', 'Scientist', 'john_smithl@email.com', 'EMP_1'),
('EMP_21', 'Jones', 'Jennifer', '12E', '785058_S_UK', 'Receptionist', 'jenniferl@email.com', 'EMP_7'),
('EMP_2', 'Vuka', 'Ethan', '1B', '901234_E_GR', 'Assistant manager', 'vuka@email.com', 'EMP_2');

INSERT INTO customer VALUES
('CUST_1456', 'EMP_7', 'Nigel', 'Wilshire', '03456457', '287 Barnet Avenue', NULL, 'Nottingham', 'Nottinghamshire', 'NG1 7GQ', 'U.K.', '1134.67', '2225'),
('CUST_0001', 'EMP_2', 'Brian', 'Johnson', '0567843257', '48 Kirby Close', 'Flat B', 'Nice', 'Northern France', '65790', 'France', '567.03', '1000'),
('CUST_19876', 'EMP_1', 'Luke', 'Rashford', '01162233344', '1 Martin Lane', 'Level 2', 'Southampton', 'Hampshire', 'SH77 8OP', 'U.K.', '27.99', '125'),
('CUST_165', 'EMP_7', 'Jadon', 'Martinez', '017128394', '9 Picardy Place', NULL, 'Edinburgh', 'Midlothian', 'EH12 3HF', 'U.K.', '128.00', '200');

INSERT INTO payment_information VALUES
('123478906547', 'CUST_1456', '2022-10-27', '27.89'),
('875909875390', 'CUST_0001', '2000-01-07', '102.09'),
('938378550483', 'CUST_19876', '2004-06-19', '6.29'),
('098098564345', 'CUST_165', '1999-12-04', '200.99');

INSERT INTO prescription_order VALUES
('1', 'CUST_19876', '2000-02-11', '2000-11-22', '2022-11-14', 'Delivered', 'Order sent and delivered.'),
('100', 'CUST_165', '2005-05-01', '2005-05-10', '2005-05-02', 'Shipped', 'Order sent.'),
('87327890', 'CUST_0001', '2022-02-11', '2022-11-14', '2022-11-10', 'Packing', 'Order packaged'),
('67', 'CUST_1456', '2002-08-07', '2002-08-17', '2002-08-10', 'Delivered', 'Order returned.');

INSERT INTO product_line VALUES
('Product Line 1', 'The first product line', 'a product line with drugs in', 'wwww.productline.com', 'productline1.png'),
('Product Line 2', 'The second product line', 'Product line 2 with drugs in', 'wwww.productline2.com', 'productline2.png'),
('Product Line 3', 'The third product line', 'Product line 3 with drugs in', 'wwww.productline3.com', 'productline3.png'),
('Product Line 4', 'The fourth product line', 'Product line 4 with drugs in', 'wwww.productline4.com', 'productline4.png');

INSERT INTO product VALUES
('679367893', 'Paracetomol', 'Product Line 1', '0.5', 'Pfizer', 'Paracetemol 500mg', '1000', '1', '2'),
('12193894', 'Ibuprofen', 'Product Line 4', '1', 'J&J', 'Ibuprofen 1g', '2000', '2', '3.50'),
('2167585786934', 'Aspirin', 'Product Line 2', '0.75', 'Blackbird', 'Aspirin 750g', '500', '1.50', '2.50'),
('090382139', 'Naproxen', 'Product Line 3', '0.5', 'Pfizer', 'Naproxen 500mg', '5000', '2.50', '4');

INSERT INTO order_information VALUES
('3432432', '1', '679367893', '6', '2'),
('734232', '100', '12193894', '25', '3.50'),
('564577', '87327890', '2167585786934', '10', '2.50'),
('756478768', '67', '090382139', '99', '4');
