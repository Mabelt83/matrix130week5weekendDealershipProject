-- DEALERSHIP ---
CREATE TABLE dealership(
	dealership_id SERIAL PRIMARY KEY,
	_name VARCHAR,
	address VARCHAR,
	phone VARCHAR,
	sales_dept_id INTEGER,
	services_dept_id INTEGER,
	FOREIGN KEY (sales_dept_id) REFERENCES sales(sales_dept_id),
	FOREIGN KEY (services_dept_id) REFERENCES services(services_dept_id)
);

--CAR INFO-----
CREATE TABLE car_info(
	car_id SERIAL PRIMARY KEY,
	_year VARCHAR,
	make VARCHAR,
	model VARCHAR,
	_cost NUMERIC(10,2),
	_condition VARCHAR
);

--SERVICES DEPARTMENT ------
CREATE TABLE services(
	services_dept_id SERIAL PRIMARY KEY,
	service_care_id INTEGER,
	ticket_id INTEGER,
	FOREIGN KEY (service_care_id) REFERENCES service_customer(service_care_id),
	FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id)
);

--SERVICE CAR CARE -------
CREATE TABLE service_car(
	car_id INTEGER,
	service_care_id INTEGER,
	ticket_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES car_info(car_id),
	FOREIGN KEY (service_care_id) REFERENCES service_customer(service_care_id),
	FOREIGN KEY (ticket_id) REFERENCES service_ticket(ticket_id)
);

--SERVICE CARE TICKET-------
CREATE TABLE service_ticket(
	ticket_id SERIAL PRIMARY KEY,
	service_date DATE,
	service_time VARCHAR,
	completion_time VARCHAR,
	service_care_id INTEGER,
	FOREIGN KEY (service_care_id) REFERENCES service_customer(service_care_id)
);

--SERVICE CUSTOMER INFO------
CREATE TABLE service_customer(
	service_care_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	phone_num VARCHAR,
	email VARCHAR,
	address VARCHAR,
	payment_info VARCHAR
);

--SALES DEPARTMENT CARE -----
CREATE TABLE sales(
	sales_dept_id SERIAL PRIMARY KEY,
	sales_care_id INTEGER,
	salesmen_id INTEGER,
	invoice_id INTEGER,
	FOREIGN KEY (sales_care_id) REFERENCES sales_customer(sales_care_id),
	FOREIGN KEY (salesmen_id) REFERENCES salesmen(salesmen_id),
	FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id)
);

-- INVOICES-------
CREATE TABLE invoice(
	invoice_id SERIAL PRIMARY KEY,
	purchase_date DATE,
	total_price NUMERIC(10,2),
	car_id INTEGER,
	salesmen_id INTEGER,
	sales_care_id INTEGER,
	FOREIGN KEY (car_id) REFERENCES car_info(car_id),
	FOREIGN KEY (salesmen_id) REFERENCES salesmen(salesmen_id),
	FOREIGN KEY (sales_care_id) REFERENCES sales_customer(sales_care_id)
);

-- SALESMEN-------
CREATE TABLE salesmen(
	salesmen_id SERIAL PRIMARY KEY,
	sales_count INTEGER,
	first_name VARCHAR,
	last_name VARCHAR,
	phone VARCHAR,
	email VARCHAR
);

--SALE CUSTOMER INFO-------
CREATE TABLE sales_customer(
	sales_care_id SERIAL PRIMARY KEY,
	first_name VARCHAR,
	last_name VARCHAR,
	phone_num VARCHAR,
	email VARCHAR,
	address VARCHAR,
	payment_info INTEGER,
	salesmen_id INTEGER,
	FOREIGN KEY (salesmen_id) REFERENCES salesmen(salesmen_id)
);

--CAR SALES INFO------ 
CREATE TABLE car_sale(
	sales_care_id INTEGER,
	invoice_id INTEGER,
	car_id INTEGER,
	FOREIGN KEY (sales_care_id) REFERENCES sales_customer(sales_care_id),
	FOREIGN KEY (invoice_id) REFERENCES invoice(invoice_id),
	FOREIGN KEY (car_id) REFERENCES car_info(car_id)
);