
CREATE TABLE customer_table (
	customerID varchar(20) NOT NULL,
	firstName  varchar(20) NOT NULL,
	lastName  varchar(20) NOT NULL,
	email  varchar(50) NOT NULL,
	password  varchar(20) NOT NULL,
	dateOfBirth Date NOT NULL,

	PRIMARY KEY (customerID)
) ;
INSERT INTO customer_table (customerID, firstName, lastName, email, password, dateOfBirth) VALUES('AYEV0SEEIBSH6JK4N83S', 'Robert', 'Thomas', 'ramon1984@gmail.com', 'Password1', '1990-12-01');
INSERT INTO customer_table (customerID, firstName, lastName, email, password, dateOfBirth) VALUES('W6R3NBA7L6L8BF0XCP6Z', 'Thomas', 'Farmer', 'wilford.erns@yahoo.com', 'Password1', '1972-10-12');
INSERT INTO customer_table (customerID, firstName, lastName, email, password, dateOfBirth) VALUES('AGYE7LENFOLF11A1NXP1', 'Gertie', 'Leonard', 'addie_erdma5@hotmail.com', 'Password1', '1987-05-23');

CREATE TABLE driver_table (
	driverID varchar(20) NOT NULL,
	firstName  varchar(20) NOT NULL,
	lastName  varchar(20) NOT NULL,
	email  varchar(50) NOT NULL,
	password  varchar(20) NOT NULL,
	dateOfBirth Date NOT NULL,
	isDriving boolean,

	PRIMARY KEY (driverID)
) ;
INSERT INTO driver_table (driverID, firstName, lastName, email, password, dateOfBirth, isDriving) VALUES('1XB094L40J502TYDCPM8', 'Roger', 'Thoma', 'stacey1989@gmail.com', 'Password1', '1976-04-09', 'false');
INSERT INTO driver_table (driverID, firstName, lastName, email, password, dateOfBirth, isDriving) VALUES('BDQ9ZC2R3V1TIYZWD1KY', 'April', 'Garcia', 'brett19802015@gmail.com', 'Password1', '1993-03-21', 'false');
INSERT INTO driver_table (driverID, firstName, lastName, email, password, dateOfBirth, isDriving) VALUES('7R6CGG183E7QITSPJIMT', 'Kimberly', 'Zepeda', 'aliya.hirth1@hotmail.com', 'Password1', '1966-06-23', 'false');


CREATE TABLE booking_table (
	driverID varchar(20),
	startTime  time NOT NULL,
	endTime  time,
	customerID  varchar(20) NOT NULL,
	bookingReference  varchar(20),
	distanceInMiles float NOT NULL,
	paymentAmount float(12) DEFAULT 0.0,
	paymentTime  timestamp NOT NULL,
        jobCompleted boolean default false,
	PRIMARY KEY (bookingReference)
) ;
INSERT INTO booking_table (driverID, startTime, endTime, customerID, bookingReference, distanceInMiles, paymentAmount, paymentTime, jobCompleted) VALUES('12A3PSHAEMZX5OJA9G60', '9:30:00', '10:00:00', 'AYEV0SEEIBSH6JK4N83S', 'DFRA8LXBPNMMGKQ3HAEL', 9, 17.98, '2018-11-05 09:31:51', 'true');
INSERT INTO booking_table (driverID, startTime, endTime, customerID, bookingReference, distanceInMiles, paymentAmount, paymentTime, jobCompleted) VALUES('12A3PSHAEMZX5OJA9G60', '10:30:00', '11:00:00', 'AYEV0SEEIBSH6JK4N83S', 'I40DNT3J98419ZQXMMEZ', 9, 17.98, '2018-11-05 10:31:51', 'true');
INSERT INTO booking_table (driverID, startTime, endTime, customerID, bookingReference, distanceInMiles, paymentAmount, paymentTime, jobCompleted) VALUES('', '11:00:00', '11:30:00', 'AGYE7LENFOLF11A1NXP1', 'TTB2EJ9L0R53VIOFDYZ0', 22, 37.98, '2018-11-05 11:00:21', 'false');


CREATE TABLE driver_invoice (
	invoiceID varchar(20) NOT NULL,
	driverID varchar(20) NOT NULL,
	paymentTime timestamp NOT NULL,
	paymentAmount float(12) DEFAULT 0.00,
	journeyStart timestamp,
	journeyEnd timestamp,
	
	PRIMARY KEY (invoiceID) 
) ;
INSERT INTO driver_invoice (invoiceID, driverID, paymentTime, paymentAmount, journeyStart, journeyEnd) VALUES('a7j3mklf9oqp12khw', '1dw0xm3ill90sn23wpg', '2018-11-05 14:00:00',55.00, '2018-11-05 14:25:00','2018-11-05 15:50:08');
INSERT INTO driver_invoice (invoiceID, driverID, paymentTime, paymentAmount, journeyStart, journeyEnd) VALUES('b7j3mklf9oqp12khw', '2dw0xm3ill90sn23wpg', '2018-11-05 17:36:20',28.00, '2018-11-05 17:59:30','2018-11-05 18:25:11');
INSERT INTO driver_invoice (invoiceID, driverID, paymentTime, paymentAmount, journeyStart, journeyEnd) VALUES('c7j3mklf9oqp12khw', '3dw0xm3ill90sn23wpg', '2018-11-05 11:22:05',34.00, '2018-11-05 11:44:12','2018-11-05 12:25:33');


CREATE TABLE customer_invoice (
	invoiceID varchar(20) NOT NULL,
	customerID varchar(20) NOT NULL,
	paymentTime timestamp NOT NULL,
	paymentAmount float(12) DEFAULT 0.00,
	journeyStart timestamp,
	journeyEnd timestamp,
	
	PRIMARY KEY (invoiceID) 
) ;
INSERT INTO customer_invoice (invoiceID, customerID, paymentTime, paymentAmount, journeyStart, journeyEnd) VALUES('a7j3mklf9oqp12khwzn3', '1jw0xm3ill90sn23wpgn', '2018-11-05 14:00:00', 55.00, '2018-11-11 14:25:00','2018-11-05 15:50:08');
INSERT INTO customer_invoice (invoiceID, customerID, paymentTime, paymentAmount, journeyStart, journeyEnd) VALUES('b7j3mklf9oqp12khwzn3', '2jw0xm3ill90sn23wpgn', '2018-11-05 17:36:20', 28.00, '2018-11-11 17:59:30','2018-11-05 18:25:11');
INSERT INTO customer_invoice (invoiceID, customerID, paymentTime, paymentAmount, journeyStart, journeyEnd) VALUES('c7j3mklf9oqp12khwzn3', '3jw0xm3ill90sn23wpgn', '2018-11-05 11:22:05', 34.00, '2018-11-11 11:44:12','2018-11-05 12:25:33');


CREATE TABLE head_office (
	adminID varchar(20) NOT NULL,
	firstName varchar(20) NOT NULL,
	lastName varchar(20) NOT NULL,
	email varchar(50) NOT NULL,
	password varchar(20) NOT NULL,
	
	PRIMARY KEY (adminID) 
) ;
INSERT INTO head_office (adminID, firstName, lastName, email, password) VALUES('aaj3mklf9oqp12khwzn3', 'Mathias', 'Sibman','gqrekovsky16@yopmail.com', 'adminpass1');
INSERT INTO head_office (adminID, firstName, lastName, email, password) VALUES('abj3mklf9oqp12khwzn3', 'Benjamin', 'Hubert','ingerk13@yopmail.com', 'adminpass2');
INSERT INTO head_office (adminID, firstName, lastName, email, password) VALUES('acj3mklf9oqp12khwzn3', 'Ebbe', 'Streme','bjebbe9@yopmail.com', 'adminpass3');