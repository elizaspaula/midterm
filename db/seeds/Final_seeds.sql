-- Users table seeds here (Example)
INSERT INTO	users	(firt_name,last_name,password,phone_number,email,street,zip_code)	VALUES	('Josephine','Heathcote','FjNfYs5T0SMGtLh','633-258-4559 x1065','Nia_Bernier@yahoo.com','1014 north w street','VG906K');

INSERT INTO	users	(first_name,last_name,password,phone_number,email,street,zip_code)	VALUES	('Allan','James','Hjxdwoo012','663-200-4450','noel.j@mvb@com','8114 Schneider Summit','VK099K');

INSERT INTO	users	(first_name,last_name,password,phone_number,email,street,zip_code,admin)	VALUES	('Olivia','Cat','1234','663-200-4450','noel.j@mvb@com','8114 Schneider Summit','VK099K',True);

INSERT INTO	categories	(categorie_name)	VALUE	('kids');
INSERT INTO	categories	(categorie_name)	VALUE	('adults');

INSERT INTO products (category_id,
product_name,
model_year,
price,
image_url,
description,
color,
size)
VALUES (1,
'Disney Flip Flop',
'2021',
150,
'https://cdn.fakercloud.com/avatars/canapud_128.jpg',
'The flip-flopIs Good For Training And Recreational Purposes',
'red',
'12'
);


INSERT INTO products (category_id,
product_name,
model_year,
price,
image_url,
description,
color,
size)
VALUES (2,
'Havianas Flip Flop',
'2020',
180,
'https://cdn.fakercloud.com/avatars/canapud_128.jpg',
'The flip-flop are designed to keeping in mind durability as well as trends, the most stylish range of shoes & sandals',
'white',
'40'
);

INSERT INTO favourites (user_id,product_id) VALUES (1,1);
INSERT INTO favourites (user_id,product_id) VALUES (2,2);

INSERT INTO message (user_id,product_id,msg_text)
VALUES (1,1,'Omnis et voluptatibus fuga atque reiciendis.');

INSERT INTO message (user_id,product_id,msg_text)
VALUES (2,2,'Et illo sit dolorum.');
