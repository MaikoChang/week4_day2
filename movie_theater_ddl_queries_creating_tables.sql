CREATE TABLE customer(
	customer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(45),
	lase_name VARCHAR (45),
	postal_code VARCHAR(5)	
) ;

SELECT *
FROM customer;

CREATE TABLE ticket(
	ticket_id SERIAL PRIMARY KEY,
	ticket_date DATE DEFAULT CURRENT_DATE,
	ticket_price NUMERIC(6,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT *
FROM ticket;

CREATE TABLE concession(
	item_id SERIAL PRIMARY KEY,
	item_name VARCHAR(25),
	item_price NUMERIC(6,2),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT *
FROM concession;

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_title VARCHAR(50),
	movie_rating VARCHAR(10),
	movie_genre VARCHAR(25),
	customer_id INTEGER NOT NULL,
	FOREIGN KEY(customer_id) REFERENCES customer(customer_id)
);

SELECT *
FROM movie;

ALTER TABLE ticket
ADD COLUMN movie_id INTEGER NOT NULL;

ALTER TABLE ticket
ADD FOREIGN KEY(movie_id) REFERENCES movie(movie_id);

SELECT *
FROM ticket;

ALTER TABLE customer
RENAME COLUMN lase_name TO last_name;