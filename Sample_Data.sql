INSERT INTO roles (rolename) VALUES ('ADMIN'), ('USER');

INSERT INTO users (role_id, name, email, phone, pass) VALUES
(1, 'John Admin', 'john@gmail.com', '09986418731', '$2y$10$5J3cO1YKlG8mZywJkrpHMOEqW5MD4i.Nlo7P4Blv4VKyqGPrd160u'), -- admin123
(2, 'Ben Santos', 'ben@example.com', '09171234567', '$2y$10$kY0gkkk.wakJh4o3bFxjnukq4DqkgqRn08ONW5CMYp0pi5L7SV8/G'), -- user123
(2, 'Cara Reyes', 'cara@example.com', '09181234567', '$2y$10$kY0gkkk.wakJh4o3bFxjnukq4DqkgqRn08ONW5CMYp0pi5L7SV8/G'); -- user123
