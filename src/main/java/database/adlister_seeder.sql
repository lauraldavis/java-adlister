USE adlister;

TRUNCATE TABLE ad_category;
DELETE FROM categories WHERE TRUE;
DELETE FROM ads WHERE TRUE;
DELETE FROM users WHERE TRUE;

INSERT INTO users (id, username, email, password)
VALUES (1, 'admin', 'laurad@sample.com', 'codeup'),
       (2, 'laurad', 'laurad@sample.com', 'mypass1#');

INSERT INTO ads (id, user_id, title, description)
VALUES (1, 1, 'Playstation for sale', 'A slightly used playstation'),
       (2, 1, 'Super Nintendo', 'Old-school classic!'),
       (3, 1, 'Jr. Java Developer', 'Min 7 yrs exp required. Working in Java and JavaScript.'),
       (4, 1, 'JavaScript Dev needed', 'Must have strong Java skills');

/*
INSERT INTO categories (id, name)
VALUES (1, 'comical'),
       (2, 'tools'),
       (3, 'easy'),
       (4, 'difficult'),
       (5, 'need partner'),
       (6, 'solo project'),
       (7, 'diy'),
       (8, 'lifestyle'),
       (9, 'pets'),
       (10, 'current events'),
       (11, 'geography');

INSERT INTO ad_category (ad_id, category_id)
VALUES (1, 1),
       (2, 2),
       (3, 9),
       (4, 1),
       (4, 10),
       (5, 5),
       (6, 6),
       (7, 11),
       (8, 2),
       (9, 9),
       (10, 7),
       (11, 9);
*/