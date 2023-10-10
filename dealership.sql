INSERT INTO dealership(dealership_id,_name,address,phone)
VALUES('3','Luxury Dealer','123 Drive RD Miami, FL, 33109','(305) 821-1234');


INSERT INTO car_info(car_id,_year,make,model,_cost,_condition)
VALUES
	('1','2022','Jeep','Wrangler',50500.00, 'NEW'),
	('2','2023','Nissan','Altima',26600.00, 'NEW'),
	('3','2024','Lexus','GS 350',65000.00, 'NEW'),
	('4','2023','Chevrolet','Traverse',2400000,'NEW'),
	('5','2017','Maserati','GranTurismo',47990.00, 'USED'),
	('6', '2020','Kia','Telluride',41590.00, 'USED'),
	('7', '2022','Alfa Romeo','Guilia',32990.00, 'USED'),
	('8', '2015','Audi','A5',18590.00, 'USED'),
	('9', '2024','Kia','K5',32500, 'NEW'),
	('10', '2024','Land Rover','Discovery Sport',70990.00, 'NEW'),
	('11', '2017','Toyota','Camry',22744.00, 'USED'),
	('12','2019','Lexus','GS 350',00,'OWNED'),
	('13','2019','Tesla','Model 3',00,'OWNED');

INSERT INTO services(services_dpt_id,service_c_id,ticket_id)
VALUES('1','1','1');

INSERT INTO service_car(car_id,service_c_id,ticket_id)
VALUES
	('4','1','1'),
	('11','1','1'),
	('13','3','3');

INSERT INTO invoice(invoice_id, purchase_date, total_price, car_id, salesmen_id, sales_c_id)
VALUES
	('1', '2023 05 12', 50500.00, '1', '2', '2'),
	('2', '2023 03 21', 47990.00, '5', '1', '3'),
	('3', '2023 08 17', 22744.00, '11', '2', '1');

INSERT INTO service_ticket (ticket_id,service_date,service_time,completion_time,service_c_id)
VALUES
	('1', '2023 11 23', '12:30pm', '02:30pm', '1'),
	('2', '2023 05 01', '10:00am', '12:00pm', '2'),
	('3', '2003 02 04', '03:30pm', '5:00pm', '3');

INSERT INTO service_customer(service_c_id,first_name,last_name,phone_num,email,address,payment_info)
VALUES
	('1', 'James', 'Hetfield', '(305) 333-1234', 'jamesHetfield@metallicagmail.com','333 fuel St 33196', '1234 4321 3333 4444'),
	('2', 'Jonathan', 'Davis', '(305) 666-4321', 'jonathanDavis@KornGmail.com', '305 clown AVE 33136', '4444 3333 2222 1111'),
	('3', 'Rob', 'Zombie', '(786) 456-7895', 'RobZombie@WhiteZombieGmail.com','222 Living DG Cir. 33145', '6666 1111 9875');

INSERT INTO sales(sales_dpt_id,sales_c_id,salesmen_id,invoice_id)	
VALUES ('1', '1', '1', '1');



INSERT INTO salesmen (salesmen_id, sales_count, first_name, last_name, phone, email)
VALUES
	('1', 2, 'John', 'Doe', '(305) 456-7895', 'johndoe@luxurydealer.com'),
	('2', 1, 'Billy Ray', 'Cyrus', '(786) 321-9875', 'BillyRay@luxurydealer.com');


ALTER TABLE sales_customer DROP COLUMN payment_info;
ALTER TABLE sales_customer ADD COLUMN payment_info VARCHAR;


INSERT INTO sales_customer(sales_c_id,first_name,last_name,phone_num,email,address,payment_info)
VALUES
	('1', 'LeeLoo', 'Dallas', '(555) 125-8989', 'Leeloodallas@multipass.com', '456 Fifth Element ST. Dallas TX', '777 8888 9999 1111'),
	('2', 'Princess', 'Vespa', '(123) 123-4567', 'Princess@spaceballsthemovie.com', '555 Planet Druidia CIR. Miami FL', '0000 1111 2222 3333'),
	('3', 'John', 'Candy', '(333) 456-7893', 'johncandy@PlaneTrainesAuto.com', '333 Barf LN. Brooklyn, NY', '4444 5555 6666 7777');
market

INSERT INTO car_sale(sales_c_id, invoice_id, car_id)
VALUES
	('1', '3', '5'),
	('2', '1', '3'),
	('3', '2', '8');