INSERT INTO customer(
	first_name,
	last_name,
	postal_code
)
VALUES(
	'Luffy',
	'Monkey',
	'78613'
);

SELECT *
FROM customer;

INSERT INTO customer(
	first_name,
	last_name,
	postal_code
)
VALUES(
	'Zoro',
	'Roronoa',
	'98101'	
),
(   'Nami',
    'Dorobo neko',
    '98031'
),
(   'Usopp',
    'Sogeking',
    '96848'
),
(   'Sanji',
    'Vinsmoke',
    '90011'
),
(   'Chopper',
    'Tony tony',
    '99501'
);

SELECT *
FROM customer;

INSERT INTO movie(
	movie_title,
	movie_rating,
	movie_genre,
	customer_id
)
VALUES(
	'News of the World',
	'PG-13',
	'Action',
	1
);

SELECT *
FROM movie;

INSERT INTO movie(
	movie_title,
	movie_rating,
	movie_genre,
	customer_id
)
VALUES(
	'Burnt',
	'R',
	'Drama',
	5
); 

INSERT INTO movie(
	movie_title,
	movie_rating,
	movie_genre,
	customer_id
)
VALUES(
	'Parasite',
	'R',
	'Thriller',
	2
);

INSERT INTO movie(
	movie_title,
	movie_rating,
	movie_genre,
	customer_id
)
VALUES(
    'Monster Hunter',
    'PG-13',
    'Action',
    4
),
(   'I Care a Lot',
    'R',
    'Comedy',
    3
),
(	'Let Him Go',
	'R',
	'Crime',
	6
);

SELECT *
FROM movie;

INSERT INTO concession(
	item_name,
	item_price,
	customer_id
)
VALUES(
	'Popcorn',
	9.25,
	1
);

SELECT *
FROM concession

INSERT INTO concession(
	item_name,
	item_price,
	customer_id
)
VALUES(
	'Popcorn',
	9.25,
	1
),
(   'Nachos',
	6.50,
	1
),
(	'Hot Dog',
	5.00,
	1
),
(   'Large Fountain',
	6.75,
	1
),
(	'Popcorn',
	9.25,
	2
),
(   'Large Fountain',
	6.75,
	2
),
(   'Popcorn',
	9.25,
	3
),
(	'Hot Dog',
	5.00,
	3
),
(   'Large Fountain',
	6.75,
	3
),
(	'Popcorn',
	9.25,
	4
),
(   'Large Fountain',
	6.75,
	4
),
(   'Popcorn',
	9.25,
	5
),
(	'Hot Dog',
	5.00,
	5
),
(   'Large Fountain',
	6.75,
	5
),
(   'Large Fountain',
	6.75,
	6
),
(	'Popcorn',
	9.25,
	6
);

SELECT *
FROM concession;

INSERT INTO ticket(
	ticket_price,
	customer_id,
	movie_id
)
VALUES(
	15,
	1,
	1
);

SELECT *
FROM ticket;

INSERT INTO ticket(
	ticket_price,
	customer_id,
	movie_id
)
VALUES(
	15,
	2,
	3
),
(	10,
	3,
	5
),
(	15,
	4,
	4
),
(	15,
	5,
	2
),
(	12,
	6,
	6
);

SELECT *
FROM ticket;

UPDATE ticket
SET ticket_price = 7.50
WHERE customer_id = 6;

SELECT *
FROM ticket;
