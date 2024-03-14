CREATE TABLE tickets(
	ticket_id SERIAL PRIMARY KEY,
	ticket_qty INTEGER,
	ticket_cost NUMERIC(4,2),
	total_cost NUMERIC(4,2),
	ticket_date DATE DEFAULT CURRENT_DATE
);

CREATE TABLE customer( 
	cutomer_id SERIAL PRIMARY KEY,
	first_name VARCHAR(100),
	last_name VARCHAR(100),
	email_address VARCHAR(100),
	member_id INTEGER NOT NULL,
	FOREIGN KEY(member_id) REFERENCES member_(member_id)
);

CREATE TABLE movie(
	movie_id SERIAL PRIMARY KEY,
	movie_name VARCHAR(100),
	run_time VARCHAR(100),
	rating VARCHAR(100),
	ticket_id INTEGER NOT NULL, 
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);


CREATE TABLE concessions(
	discount_code SERIAL PRIMARY KEY,
	order_number INTEGER,
	items_sold VARCHAR(150),
	sub_total NUMERIC(8,2),
	total_cost NUMERIC(8,2),
	ticket_id INTEGER NOT NULL, 
	FOREIGN KEY(ticket_id) REFERENCES tickets(ticket_id)
);

CREATE TABLE member_(
	member_id SERIAL PRIMARY KEY,
	billing_info VARCHAR(150),
	discount_code INTEGER NOT NULL,
	customer_id INTEGER NOT NULL, 
	FOREIGN KEY(discount_code) REFERENCES concessions(discount_code)
);





