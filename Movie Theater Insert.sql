-- Insert for tickets table

INSERT INTO tickets(
	ticket_id,
	ticket_qty, 
	ticket_cost,
	total_cost
)VALUES(
	11,
	4,
	12.99,
	55.08
);

-- Insert for customer table

INSERT INTO customer(
	cutomer_id,
	first_name,
	last_name,
	email_address, 
	member_id
)VALUES(
	00101,
	'John',
	'Wick',
	'johnwick@gmail.com',
	101
);

-- Insert for movie table

INSERT INTO movie(
	movie_id,
	movie_name,
	run_time,
	rating,
	ticket_id
)VALUES(
	22,
	'Jurassic Park',
	'146 mins',
	'PG-13',
	11
);

-- Insert for concessions table

INSERT INTO concessions(
	discount_code,
	order_number,
	items_sold,
	sub_total,
	total_cost,
	ticket_id
)VALUES(
	62770,
	111,
	'lg popcorn, lg soda, skittles',
	14.50,
	15.37,
	11
);

-- Insert for member table

INSERT INTO member_(
	member_id,
	billing_info,
	discount_code,
	customer_id
)VALUES(
	101,
	'5769 9822 3754 9788 509 04/28',
	62770,
	00101
);


