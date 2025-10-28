INSERT INTO roles (rolename) VALUES ('ADMIN'), ('USER');

INSERT INTO users (role_id, name, email, phone, pass) VALUES
(1, 'John Admin', 'john@gmail.com', '09986418731', '$2y$10$5J3cO1YKlG8mZywJkrpHMOEqW5MD4i.Nlo7P4Blv4VKyqGPrd160u'), -- admin123
(2, 'Ben Santos', 'ben@example.com', '09171234567', '$2y$10$kY0gkkk.wakJh4o3bFxjnukq4DqkgqRn08ONW5CMYp0pi5L7SV8/G'), -- user123
(2, 'Cara Reyes', 'cara@example.com', '09181234567', '$2y$10$kY0gkkk.wakJh4o3bFxjnukq4DqkgqRn08ONW5CMYp0pi5L7SV8/G'); -- user123

INSERT INTO bookings (user_id, title, description, activity_name, court_number, num_of_participants, fee_per_head, total_fee, event_date, event_time, status)
VALUES (1, 'Morning Pickleball', 'Friendly match with friends', 'Pickleball', 1, 5, 200.00, 1000.00, '2025-10-12', '09:00:00', 'CONFIRMED');

INSERT INTO tournaments (tournament_name, description, start_datetime, end_date, max_participants, entry_fee, status)
VALUES ('Valenzuela Pickleball Cup', 'Citywide Tournament', '2025-11-01 09:00:00', '2025-11-03', 32, 500.00, 'SCHEDULED');
