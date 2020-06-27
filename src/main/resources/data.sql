INSERT INTO admins(id, enabled, firstname, lastname, password, role, username) VALUES (1 ,'1', 'admin', 'admin', '$2a$10$x18Wv4p9NpxLtwr15JaZ/eYhJMzoLz3sEpVXZv70mENAljRZAvdw6', 'ROLE_ADMIN', 'admin');

INSERT INTO clients(id, address, email, first_name, full_name, last_name) VALUES (1, 'Warszawa', 'm@gmail.com', 'Marcin', 'Marcin Wojciechowski', 'Wojciechowski');
INSERT INTO clients(id, address, email, first_name, full_name, last_name) VALUES (2, 'Kraków', 'A@gmail.com', 'Mieczyslaw', 'Mieczyslaw Tabor', 'Tabor');
INSERT INTO clients(id, address, email, first_name, full_name, last_name) VALUES (3, 'Wrocław', 'o@gmail.com', 'Ola', 'Ola Tabor', 'Gawor');

INSERT INTO assortments(id, code, groups, name, quantity, unit) VALUES (1, '11', 'Przystawki', 'Nuggetsy', '10', 'szt');
INSERT INTO assortments(id, code, groups, name, quantity, unit) VALUES (2, '12', 'Zupy', 'Rosół', '10', 'l');
INSERT INTO assortments(id, code, groups, name, quantity, unit) VALUES (3, '13', 'Przystawki', 'Śledzie', '5', 'szt');