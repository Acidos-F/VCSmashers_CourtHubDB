INSERT INTO roles (rolename) VALUES ('ADMIN'), ('USER');

INSERT INTO users (role_id, name, email, phone, pass) VALUES
(1, 'John Admin', 'john@gmail.com', '09986418731', '$2y$10$5J3cO1YKlG8mZywJkrpHMOEqW5MD4i.Nlo7P4Blv4VKyqGPrd160u'), -- admin123
(2, 'Ben Santos', 'ben@example.com', '09171234567', '$2y$10$kY0gkkk.wakJh4o3bFxjnukq4DqkgqRn08ONW5CMYp0pi5L7SV8/G'), -- user123
(2, 'Cara Reyes', 'cara@example.com', '09181234567', '$2y$10$kY0gkkk.wakJh4o3bFxjnukq4DqkgqRn08ONW5CMYp0pi5L7SV8/G'); -- user123

INSERT INTO bookings (user_id, title, description, activity_name, court_number, num_of_participants, fee_per_head, total_fee, event_date, event_time, status)
VALUES (1, 'Morning Pickleball', 'Friendly match with friends', 'Pickleball', 1, 5, 200.00, 1000.00, '2025-10-12', '09:00:00', 'CONFIRMED');

INSERT INTO tournaments (tournament_name, description, start_datetime, end_date, max_participants, entry_fee, status)
VALUES ('Valenzuela Pickleball Cup', 'Citywide Tournament', '2025-11-01 09:00:00', '2025-11-03', 32, 500.00, 'SCHEDULED');

INSERT INTO `faqs` (`question`, `answer`) VALUES
('How do I book a court?', 'You can book a court online through our website\'s "Booking" page. Simply select your desired date, time slot, and court type (badminton or pickleball), then proceed to payment.'),
('What are your operating hours?', 'We are open daily from 6:00 AM to 10:00 PM, Monday to Sunday.'),
('What is the cancellation policy?', 'You can cancel your booking up to 24 hours before your scheduled time for a full refund. Cancellations made less than 24 hours in advance are non-refundable.'),
('Do you offer equipment rentals?', 'Yes, we offer racket (badminton and pickleball) and ball/shuttlecock rentals at the front desk for a small fee.'),
('What payment methods do you accept?', 'We accept online payments via credit/debit card, GCash, and Maya. You may also pay in cash at the facility for walk-in bookings, subject to availability.'),
('Are non-marking shoes required?', 'Yes, to protect our court surfaces, all players are required to wear clean, non-marking court shoes. Street shoes are not permitted on the courts.'),
('Can I book multiple time slots or courts?', 'Yes, you can add multiple time slots or courts to your cart before checking out, subject to availability.'),
('Do I need to create an account to book?', 'While guest checkout is available, creating an account allows you to manage your bookings, track your payment history, and enjoy a faster checkout process in the future.');
